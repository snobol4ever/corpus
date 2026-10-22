                        .intel_syntax    noprefix
                        .text
                        .file            1 "snobol4/wordcount/wordcount.sno"
                        .file            2 "<included>"
#-----------------------------------------------------------------------------------------------------------------------
.Lgccode_.LTp0_0:
.LTp0:
.LTp0_α_body:
                        sub              rsp, 32
                        mov              qword ptr [rsp + 16], 8
                        mov              qword ptr [rsp + 24], rdx
                        mov              qword ptr [rsp + 0], 3
                        mov              qword ptr [rsp + 8], r12
                        .type            n0_var_bx, @function
n0_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n0_var_α:               sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 40]
                        test             rdi, rdi;                            je    .Lvar_α_6_1
                        mov              rsi, qword ptr [rdi + 32]
                        test             rsi, rsi;                            je    .Lvar_α_6_1
                        cmp              qword ptr [rdi + 40], 2;             jl    .Lvar_α_6_1
                        mov              rax, qword ptr [rsi + 16]
                        mov              rdx, qword ptr [rsi + 24];           jmp   .Lvar_α_6_2
.Lvar_α_6_1:            xor              eax, eax
                        xor              edx, edx
.Lvar_α_6_2:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n1_coerce_string_α
                        .size            n0_var_bx, .-n0_var_bx
                        .type            n1_coerce_string_bx, @function
n1_coerce_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1_coerce_string_α:     sub              rsp, 16
                        lea              rdi, [rsp + 16]                      # var
                        lea              rsi, [rsp + 0]                       # result
                        mov              rax, qword ptr [rdi + 0]
                        cmp              al, 2;                               jne   .Lcoerce_string_α_8_21
                        mov              rdx, qword ptr [rdi + 8]
                        test             rdx, rdx;                            je    .Lcoerce_string_α_8_21
                        mov              ecx, dword ptr [rdi + 4]
                        test             ecx, ecx;                            je    .Lcoerce_string_α_8_21
                        cmp              ecx, -1;                             je    .Lcoerce_string_α_8_21
                        mov              qword ptr [rsi + 0], rax
                        mov              qword ptr [rsi + 8], rdx;            jmp   .Lcoerce_string_α_8_22
.Lcoerce_string_α_8_21: mov              rdx, 12320956                        # codes
                        call             rt_coerce_str_d@PLT
.Lgcsite_.LTp0_2:       mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            jz    .Lcoerce_string_α_8_24
                        push             rax                                  # gc_poll bb_coerce_string.cpp:48
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_.LTp0_1:       mov              r9,  qword ptr [rip + rtccb+48]
1:                      add              rsp, 16
                        add              rsp, 16;                             jmp   .LTp0_ω
.Lcoerce_string_α_8_24: push             rax                                  # gc_poll bb_coerce_string.cpp:49
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_.LTp0_0:       mov              r9,  qword ptr [rip + rtccb+48]
1:
.Lcoerce_string_α_8_22:                                                       jmp   n2_var_α
                        .size            n1_coerce_string_bx, .-n1_coerce_string_bx
                        .type            n2_var_bx, @function
n2_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n2_var_α:               sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 72]
                        test             rdi, rdi;                            je    .Lvar_α_9_1
                        mov              rsi, qword ptr [rdi + 32]
                        test             rsi, rsi;                            je    .Lvar_α_9_1
                        cmp              qword ptr [rdi + 40], 1;             jl    .Lvar_α_9_1
                        mov              rax, qword ptr [rsi + 0]
                        mov              rdx, qword ptr [rsi + 8];            jmp   .Lvar_α_9_2
.Lvar_α_9_1:            xor              eax, eax
                        xor              edx, edx
.Lvar_α_9_2:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n3_coerce_string_α
                        .size            n2_var_bx, .-n2_var_bx
                        .type            n3_coerce_string_bx, @function
n3_coerce_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n3_coerce_string_α:     sub              rsp, 16
                        lea              rdi, [rsp + 16]                      # var
                        lea              rsi, [rsp + 0]                       # result
                        mov              rax, qword ptr [rdi + 0]
                        cmp              al, 2;                               jne   .Lcoerce_string_α_11_21
                        mov              rdx, qword ptr [rdi + 8]
                        test             rdx, rdx;                            je    .Lcoerce_string_α_11_21
                        mov              ecx, dword ptr [rdi + 4]
                        test             ecx, ecx;                            je    .Lcoerce_string_α_11_21
                        cmp              ecx, -1;                             je    .Lcoerce_string_α_11_21
                        mov              qword ptr [rsi + 0], rax
                        mov              qword ptr [rsi + 8], rdx;            jmp   .Lcoerce_string_α_11_22
.Lcoerce_string_α_11_21:
                        mov              rdx, 4522053                         # codes
                        call             rt_coerce_str_d@PLT
.Lgcsite_.LTp0_5:       mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            jz    .Lcoerce_string_α_11_24
                        push             rax                                  # gc_poll bb_coerce_string.cpp:48
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_.LTp0_4:       mov              r9,  qword ptr [rip + rtccb+48]
1:                      add              rsp, 16
                        add              rsp, 48;                             jmp   .LTp0_ω
.Lcoerce_string_α_11_24:
                        push             rax                                  # gc_poll bb_coerce_string.cpp:49
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_.LTp0_3:       mov              r9,  qword ptr [rip + rtccb+48]
1:
.Lcoerce_string_α_11_22:
                                                                              jmp   n4_match_break_α
                        .size            n3_coerce_string_bx, .-n3_coerce_string_bx
                        .type            n4_match_break_bx, @function
n4_match_break_bx:
#-----------------------------------------------------------------------------------------------------------------------
n4_match_break_α:       sub              rsp, 16
                        mov              edi, r14d
                        mov              rsi, qword ptr [rsp + 24]            # coerce_string
                        mov              edx, dword ptr [rsp + 20]
                        call             rt_sg_scan_member@PLT
.Lgcsite_.LTp0_6:       mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, r15d;                           jl    .Lmatch_break_α_13_999
                        add              rsp, 16
                        add              rsp, 64;                             jmp   .LTp0_ω
.Lmatch_break_α_13_999: mov              dword ptr [rsp + 0], r14d
                        mov              r14d, eax;                           jmp   n5_match_span_α
n4_match_break_β:       mov              r14d, dword ptr [rsp + 0]
                        add              rsp, 16
                        add              rsp, 64;                             jmp   .LTp0_ω
                        .size            n4_match_break_bx, .-n4_match_break_bx
                        .type            n5_match_span_bx, @function
n5_match_span_bx:
#-----------------------------------------------------------------------------------------------------------------------
n5_match_span_α:        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
.Lmatch_span_α_15_0:    mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d;                           jge   .Lmatch_span_α_15_1
                        movsxd           rcx, eax
                        movzx            edi, byte ptr [r13+rcx]
                        mov              rsi, qword ptr [rsp + 72]            # coerce_string
                        mov              edx, dword ptr [rsp + 68]
                        call             rt_sg_member@PLT
.Lgcsite_.LTp0_7:       mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            je    .Lmatch_span_α_15_1
                        mov              eax, dword ptr [rsp + 0]
                        add              eax, 1
                        mov              dword ptr [rsp + 0], eax;            jmp   .Lmatch_span_α_15_0
.Lmatch_span_α_15_1:    mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r14d;                           jne   .Lmatch_span_α_15_999
                        add              rsp, 16;                             jmp   n4_match_break_β
.Lmatch_span_α_15_999:  mov              dword ptr [rsp + 0], r14d
                        mov              r14d, eax;                           jmp   .LTp0_γ
n5_match_span_β:        mov              r14d, dword ptr [rsp + 0]
                        add              rsp, 16;                             jmp   n4_match_break_β
                        .size            n5_match_span_bx, .-n5_match_span_bx
#-----------------------------------------------------------------------------------------------------------------------
.LTp0_res:
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
.LTp0_β:
                                                                              jmp   n5_match_span_β
#-----------------------------------------------------------------------------------------------------------------------
.LTp0_γ:
                        mov              rdx, qword ptr [rsp + 136]
                        mov              rcx, qword ptr [rsp + 128]
                        sub              rsp, 8
                        push             rdx
                        push             rcx
                        lea              rax, [rip + .LTp0_res]
                        push             rax;                                 jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
.LTp0_ω:
                        mov              r12, qword ptr [rsp + 8]
                        add              rsp, 32
                        mov              rcx, qword ptr [rsp + 8]
                        add              rsp, 16;                             jmp   rcx
                        .pushsection     .data.rel.ro,"aw",@progbits
                        .p2align         3
.Lgcsites_.LTp0_0:      .quad            8
                        .quad            0
                        .quad            0
                        .quad            .Lgccode_.LTp0_0
                        .quad            .Lgcsite_.LTp0_2-.Lgccode_.LTp0_0
                        .quad            274877906945
                        .quad            .Lgcsite_.LTp0_1-.Lgccode_.LTp0_0
                        .quad            274877906945
                        .quad            .Lgcsite_.LTp0_0-.Lgccode_.LTp0_0
                        .quad            274877906945
                        .quad            .Lgcsite_.LTp0_5-.Lgccode_.LTp0_0
                        .quad            412316860417
                        .quad            .Lgcsite_.LTp0_4-.Lgccode_.LTp0_0
                        .quad            412316860417
                        .quad            .Lgcsite_.LTp0_3-.Lgccode_.LTp0_0
                        .quad            412316860417
                        .quad            .Lgcsite_.LTp0_6-.Lgccode_.LTp0_0
                        .quad            481036337153
                        .quad            .Lgcsite_.LTp0_7-.Lgccode_.LTp0_0
                        .quad            549755813889
                        .popsection
                        .section         .data.rel.ro
                        .p2align         4
.Lthk_.LTp0:            .quad            .LTp0
                        .long            0, 1
                        .section         .text
                        .intel_syntax    noprefix
                        .globl           main
main:
                        push             rdi
                        push             rsi
                        sub              rsp, 8
                        call             rt_main_stack_adopt@PLT
                        mov              rsi, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rsp + 16]
                        add              rsp, 24
                        test             rax, rax;                            jz    .Lmain_stack_kept
                        mov              rsp, rax
.Lmain_stack_kept:
                        sub              rsp, 65544
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             module_init
                        mov              edi, 749
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 749
                        call             gva_register@PLT
                        lea              rdi, [rip + __alpha_cellp_tab]
                        call             rt_ab_cell_bind_table@PLT
                        lea              rdi, [rip + __label_names]
                        mov              esi, 4
                        call             rt_label_table_install@PLT
                        lea              rdi, [rip + __gc_frame_maps]
                        call             rt_gc_frame_maps_install_counted@PLT
                        lea              rdi, [rip + __gc_frame_sites]
                        call             rt_gc_frame_sites_install_counted@PLT
                        mov              rdi, qword ptr [rsp]
                        mov              rdi, qword ptr [rdi]
                        call             rt_main_progname_stage@PLT
                        mov              rdi, qword ptr [rsp]
                        add              rdi, 8
                        mov              esi, dword ptr [rsp + 8]
                        sub              esi, 1
                        call             rt_main_args_stage_argv@PLT
                        mov              r12, qword ptr [0x70000000]
                        call             rtcc_load_all@PLT
                        lea              rdi, [rsp - 16]
                        call             rt_program_top_adopt@PLT
                        xor              esi, esi
                        xor              r14d, r14d
                        lea              rax, [rip + .Llevel_zero_return]
                        push             rax
                        push             rax
                                                                              jmp   main_α
.Llevel_zero_return:    call             rt_kw_return_level_zero@PLT
                        ud2
                        .section         .rodata
.Lgvan741:              .string          "NUMERALS"
.Lgvan742:              .string          "WORD"
.Lgvan743:              .string          "WPAT"
.Lgvan744:              .string          "LINE"
.Lgvan745:              .string          "N"
                        .section         .data.rel.ro,"aw",@progbits
                        .align           8
__gva_names:
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            .Lgvan741
                        .quad            .Lgvan742
                        .quad            .Lgvan743
                        .quad            .Lgvan744
                        .quad            .Lgvan745
                        .quad            0
                        .quad            0
                        .quad            0
                        .section         .text
                        .intel_syntax    noprefix
                        .section         .rodata
.Llbln0:                .string          "NEXTL"
.Llbln1:                .string          "NEXTW"
.Llbln2:                .string          "DONE"
.Llbln3:                .string          "END"
                        .section         .data.rel.ro,"aw",@progbits
                        .align           8
__label_names:
                        .quad            .Llbln0
                        .quad            .Llbln1
                        .quad            .Llbln2
                        .quad            .Llbln3
                        .section         .text
                        .intel_syntax    noprefix
#-----------------------------------------------------------------------------------------------------------------------
.Lgccode_main_1:
main_α:
                        mov              eax, 0                               # GCANCHOR .Lgcmap_main qword ptr [rsp$ + 8]
main_α_body:
                        sub              rsp, 0
                        .type            n16_call_direct_bx, @function
n16_call_direct_bx:
#-----------------------------------------------------------------------------------------------------------------------
n16_call_direct_α:      sub              rsp, 16
                        lea              rdi, [rsp + 0]
                        mov              esi, 0
                        call             rt_fp_model_spitbol@PLT
.Lgcsite_main_0:        mov              r9,  qword ptr [rip + rtccb+48]
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              qword ptr [rsp + 0], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        xor              edi, edi
                        xor              esi, esi
                        mov              rdx, rsp
                        lea              rcx, [rsp + 16]
                        call             rt_gc_point_arr_probe_c@PLT
.Lgcsite_main_1:        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      cmp              al, 104;                             jne   .Lcall_direct_α_85_999
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n17_call_direct_α
.Lcall_direct_α_85_999: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n17_call_direct_α
n16_call_direct_β:      add              rsp, 16
                        add              rsp, -16;                            jmp   n17_call_direct_α
                        .size            n16_call_direct_bx, .-n16_call_direct_bx
                        .type            n17_call_direct_bx, @function
n17_call_direct_bx:
#-----------------------------------------------------------------------------------------------------------------------
n17_call_direct_α:      sub              rsp, 16
                        lea              rdi, [rsp + 0]
                        mov              esi, 0
                        call             rt_quit_trap_320@PLT
.Lgcsite_main_2:        mov              r9,  qword ptr [rip + rtccb+48]
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              qword ptr [rsp + 0], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        xor              edi, edi
                        xor              esi, esi
                        mov              rdx, rsp
                        lea              rcx, [rsp + 16]
                        call             rt_gc_point_arr_probe_c@PLT
.Lgcsite_main_3:        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      cmp              al, 104;                             jne   .Lcall_direct_α_86_999
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n18_statement_begin_α
.Lcall_direct_α_86_999: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 32;                             jmp   n18_statement_begin_α
n17_call_direct_β:      add              rsp, 16
                        add              rsp, 16;                             jmp   n18_statement_begin_α
                        .size            n17_call_direct_bx, .-n17_call_direct_bx
                        .type            n18_statement_begin_bx, @function
n18_statement_begin_bx:
                        .pushsection     .rodata
.Lstnof1:               .string          "snobol4/wordcount/wordcount.sno"
                        .popsection
.Lstatement_begin_α_87_stno:
                        .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lstatement_begin_α_87_stno
                        .long            1
                        .long            1
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
#       &TRIM = 1
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 1 0
n18_statement_begin_α:                                                        jmp   n19_lit_integer_α
n18_statement_begin_β:                                                        jmp   n22_setexit_test_α
                        .size            n18_statement_begin_bx, .-n18_statement_begin_bx
                        .type            n19_lit_integer_bx, @function
n19_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n19_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_89_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n20_kw_assign_snobol4_α
.Llit_integer_α_89_0:   .quad            1
                        .size            n19_lit_integer_bx, .-n19_lit_integer_bx
                        .type            n20_kw_assign_snobol4_bx, @function
n20_kw_assign_snobol4_bx:
#-----------------------------------------------------------------------------------------------------------------------
n20_kw_assign_snobol4_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lkw_assign_snobol4_α_90_0] # idx
                        mov              rsi, qword ptr [rsp + 16]            # v
                        mov              rdx, qword ptr [rsp + 24]            # v
                        call             rt_kw_write_idx@PLT
.Lgcsite_main_5:        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lkw_assign_snobol4_α_90_999
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n18_statement_begin_β
.Lkw_assign_snobol4_α_90_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_keyword_assign_snobol4.cpp:32
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_4:        mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n21_statement_end_α
.Lkw_assign_snobol4_α_90_0:
                        .quad            1
                        .size            n20_kw_assign_snobol4_bx, .-n20_kw_assign_snobol4_bx
                        .type            n21_statement_end_bx, @function
n21_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n21_statement_end_α:    add              rsp, 32;                             jmp   n23_statement_begin_α
                        .size            n21_statement_end_bx, .-n21_statement_end_bx
                        .type            n22_setexit_test_bx, @function
n22_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n22_setexit_test_α:     mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_93_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_93_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_93_61:
.Lsetexit_test_α_93_1:                                                        jmp   n23_statement_begin_α
                        .size            n22_setexit_test_bx, .-n22_setexit_test_bx
                        .type            n23_statement_begin_bx, @function
n23_statement_begin_bx:
.Lstatement_begin_α_94_stno:
                        .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lstatement_begin_α_94_stno
                        .long            2
                        .long            2
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
#       NUMERALS = '0123456789'
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 2 0
n23_statement_begin_α:                                                        jmp   n24_lit_string_α
n23_statement_begin_β:                                                        jmp   n27_setexit_test_α
                        .size            n23_statement_begin_bx, .-n23_statement_begin_bx
                        .type            n24_lit_string_bx, @function
n24_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n24_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 10
                        mov              rax, qword ptr [rip + .Llit_string_α_96_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n25_assign_α
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_string_α_96_0: .quad .Llit_string_α_96_0_s; .popsection
.Llit_string_α_96_0_s:  .string          "0123456789"
                        .size            n24_lit_string_bx, .-n24_lit_string_bx
                        .type            n25_assign_bx, @function
n25_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n25_assign_α:           mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 11856], rax          # NUMERALS
                        mov              qword ptr [r9 + 11864], rdx;         jmp   n26_statement_end_α
                        .size            n25_assign_bx, .-n25_assign_bx
                        .type            n26_statement_end_bx, @function
n26_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n26_statement_end_α:    add              rsp, 16;                             jmp   n28_statement_begin_α
                        .size            n26_statement_end_bx, .-n26_statement_end_bx
                        .type            n27_setexit_test_bx, @function
n27_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n27_setexit_test_α:     mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_100_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_100_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_100_61:
.Lsetexit_test_α_100_1:                                                       jmp   n28_statement_begin_α
                        .size            n27_setexit_test_bx, .-n27_setexit_test_bx
                        .type            n28_statement_begin_bx, @function
n28_statement_begin_bx:
.Lstatement_begin_α_101_stno:
                        .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lstatement_begin_α_101_stno
                        .long            3
                        .long            3
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
#       WORD = "'-" NUMERALS &UCASE &LCASE
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 3 0
n28_statement_begin_α:                                                        jmp   n29_lit_string_α
n28_statement_begin_β:                                                        jmp   n38_setexit_test_α
                        .size            n28_statement_begin_bx, .-n28_statement_begin_bx
                        .type            n29_lit_string_bx, @function
n29_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n29_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_103_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n30_var_α
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_string_α_103_0: .quad .Llit_string_α_103_0_s; .popsection
.Llit_string_α_103_0_s: .string          "'-"
                        .size            n29_lit_string_bx, .-n29_lit_string_bx
                        .type            n30_var_bx, @function
n30_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n30_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 11856]          # NUMERALS
                        mov              rdx, qword ptr [r9 + 11864]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n31_binop_α
n30_var_β:              add              rsp, 16
                        add              rsp, 16;                             jmp   n28_statement_begin_β
                        .size            n30_var_bx, .-n30_var_bx
                        .type            n31_binop_bx, @function
n31_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n31_binop_α:            sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # lit_string
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + sno_concat_d@GOTPCREL]
.Lgcsite_main_8:        cmp              al, 255;                             jne   .Lbinop_vd_105_0
                        call             c_sno_concat_d@PLT
.Lgcsite_main_7:        mov              r9,  qword ptr [rip + rtccb+48]
.Lbinop_vd_105_0:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_concat_slot.cpp:70
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_6:        mov              r9,  qword ptr [rip + rtccb+48]
1:                      mov              eax, dword ptr [rsp + 0]             # result
                        cmp              al, 104;                             jne   .Lbinop_α_105_999
                        add              rsp, 16;                             jmp   n30_var_β
.Lbinop_α_105_999:                                                            jmp   n32_lit_string_α
n31_binop_β:            add              rsp, 16;                             jmp   n30_var_β
                        .size            n31_binop_bx, .-n31_binop_bx
                        .type            n32_lit_string_bx, @function
n32_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n32_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 26
                        mov              rax, qword ptr [rip + .Llit_string_α_106_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n33_binop_α
n32_lit_string_β:       add              rsp, 16;                             jmp   n31_binop_β
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_string_α_106_0: .quad .Llit_string_α_106_0_s; .popsection
.Llit_string_α_106_0_s: .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
                        .size            n32_lit_string_bx, .-n32_lit_string_bx
                        .type            n33_binop_bx, @function
n33_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n33_binop_α:            sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # binop
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + sno_concat_d@GOTPCREL]
.Lgcsite_main_11:       cmp              al, 255;                             jne   .Lbinop_vd_107_1
                        call             c_sno_concat_d@PLT
.Lgcsite_main_10:       mov              r9,  qword ptr [rip + rtccb+48]
.Lbinop_vd_107_1:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_concat_slot.cpp:70
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_9:        mov              r9,  qword ptr [rip + rtccb+48]
1:                      mov              eax, dword ptr [rsp + 0]             # result
                        cmp              al, 104;                             jne   .Lbinop_α_107_999
                        add              rsp, 16;                             jmp   n32_lit_string_β
.Lbinop_α_107_999:                                                            jmp   n34_lit_string_α
n33_binop_β:            add              rsp, 16;                             jmp   n32_lit_string_β
                        .size            n33_binop_bx, .-n33_binop_bx
                        .type            n34_lit_string_bx, @function
n34_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n34_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 26
                        mov              rax, qword ptr [rip + .Llit_string_α_108_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n35_binop_α
n34_lit_string_β:       add              rsp, 16;                             jmp   n33_binop_β
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_string_α_108_0: .quad .Llit_string_α_108_0_s; .popsection
.Llit_string_α_108_0_s: .string          "abcdefghijklmnopqrstuvwxyz"
                        .size            n34_lit_string_bx, .-n34_lit_string_bx
                        .type            n35_binop_bx, @function
n35_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n35_binop_α:            sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # binop
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + sno_concat_d@GOTPCREL]
.Lgcsite_main_14:       cmp              al, 255;                             jne   .Lbinop_vd_109_2
                        call             c_sno_concat_d@PLT
.Lgcsite_main_13:       mov              r9,  qword ptr [rip + rtccb+48]
.Lbinop_vd_109_2:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_concat_slot.cpp:70
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_12:       mov              r9,  qword ptr [rip + rtccb+48]
1:                      mov              eax, dword ptr [rsp + 0]             # result
                        cmp              al, 104;                             jne   .Lbinop_α_109_999
                        add              rsp, 16;                             jmp   n34_lit_string_β
.Lbinop_α_109_999:                                                            jmp   n36_assign_α
n35_binop_β:            add              rsp, 16;                             jmp   n34_lit_string_β
                        .size            n35_binop_bx, .-n35_binop_bx
                        .type            n36_assign_bx, @function
n36_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n36_assign_α:           mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 11872], rax          # WORD
                        mov              qword ptr [r9 + 11880], rdx;         jmp   n37_statement_end_α
                        .size            n36_assign_bx, .-n36_assign_bx
                        .type            n37_statement_end_bx, @function
n37_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n37_statement_end_α:    add              rsp, 112;                            jmp   n39_statement_begin_α
                        .size            n37_statement_end_bx, .-n37_statement_end_bx
                        .type            n38_setexit_test_bx, @function
n38_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n38_setexit_test_α:     mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_113_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_113_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_113_61:
.Lsetexit_test_α_113_1:                                                       jmp   n39_statement_begin_α
                        .size            n38_setexit_test_bx, .-n38_setexit_test_bx
                        .type            n39_statement_begin_bx, @function
n39_statement_begin_bx:
.Lstatement_begin_α_114_stno:
                        .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lstatement_begin_α_114_stno
                        .long            4
                        .long            4
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
#       WPAT = BREAK(WORD) SPAN(WORD)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 4 0
n39_statement_begin_α:                                                        jmp   n40_lit_string_α
n39_statement_begin_β:                                                        jmp   n48_setexit_test_α
                        .size            n39_statement_begin_bx, .-n39_statement_begin_bx
                        .type            n40_lit_string_bx, @function
n40_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n40_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_string_α_116_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n41_var_α
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_string_α_116_0: .quad .Lthk_.LTp0; .popsection
                        .size            n40_lit_string_bx, .-n40_lit_string_bx
                        .type            n41_var_bx, @function
n41_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n41_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 11872]          # WORD
                        mov              rdx, qword ptr [r9 + 11880]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n42_coerce_string_α
n41_var_β:              add              rsp, 16
                        add              rsp, 16;                             jmp   n39_statement_begin_β
                        .size            n41_var_bx, .-n41_var_bx
                        .type            n42_coerce_string_bx, @function
n42_coerce_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n42_coerce_string_α:    sub              rsp, 16
                        lea              rdi, [rsp + 16]                      # var
                        lea              rsi, [rsp + 0]                       # result
                        mov              rax, qword ptr [rdi + 0]
                        cmp              al, 2;                               jne   .Lcoerce_string_α_119_21
                        mov              rdx, qword ptr [rdi + 8]
                        test             rdx, rdx;                            je    .Lcoerce_string_α_119_21
                        mov              ecx, dword ptr [rdi + 4]
                        test             ecx, ecx;                            je    .Lcoerce_string_α_119_21
                        cmp              ecx, -1;                             je    .Lcoerce_string_α_119_21
                        mov              qword ptr [rsi + 0], rax
                        mov              qword ptr [rsi + 8], rdx;            jmp   .Lcoerce_string_α_119_22
.Lcoerce_string_α_119_21:
                        mov              rdx, 4522053                         # codes
                        call             rt_coerce_str_d@PLT
.Lgcsite_main_17:       mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            jz    .Lcoerce_string_α_119_24
                        push             rax                                  # gc_poll bb_coerce_string.cpp:48
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_16:       mov              r9,  qword ptr [rip + rtccb+48]
1:                      add              rsp, 16;                             jmp   n41_var_β
.Lcoerce_string_α_119_24:
                        push             rax                                  # gc_poll bb_coerce_string.cpp:49
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_15:       mov              r9,  qword ptr [rip + rtccb+48]
1:
.Lcoerce_string_α_119_22:
                                                                              jmp   n43_var_α
n42_coerce_string_β:    add              rsp, 16;                             jmp   n41_var_β
                        .size            n42_coerce_string_bx, .-n42_coerce_string_bx
                        .type            n43_var_bx, @function
n43_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n43_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 11872]          # WORD
                        mov              rdx, qword ptr [r9 + 11880]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n44_coerce_string_α
n43_var_β:              add              rsp, 16;                             jmp   n42_coerce_string_β
                        .size            n43_var_bx, .-n43_var_bx
                        .type            n44_coerce_string_bx, @function
n44_coerce_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n44_coerce_string_α:    sub              rsp, 16
                        lea              rdi, [rsp + 16]                      # var
                        lea              rsi, [rsp + 0]                       # result
                        mov              rax, qword ptr [rdi + 0]
                        cmp              al, 2;                               jne   .Lcoerce_string_α_122_21
                        mov              rdx, qword ptr [rdi + 8]
                        test             rdx, rdx;                            je    .Lcoerce_string_α_122_21
                        mov              ecx, dword ptr [rdi + 4]
                        test             ecx, ecx;                            je    .Lcoerce_string_α_122_21
                        cmp              ecx, -1;                             je    .Lcoerce_string_α_122_21
                        mov              qword ptr [rsi + 0], rax
                        mov              qword ptr [rsi + 8], rdx;            jmp   .Lcoerce_string_α_122_22
.Lcoerce_string_α_122_21:
                        mov              rdx, 12320956                        # codes
                        call             rt_coerce_str_d@PLT
.Lgcsite_main_20:       mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            jz    .Lcoerce_string_α_122_24
                        push             rax                                  # gc_poll bb_coerce_string.cpp:48
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_19:       mov              r9,  qword ptr [rip + rtccb+48]
1:                      add              rsp, 16;                             jmp   n43_var_β
.Lcoerce_string_α_122_24:
                        push             rax                                  # gc_poll bb_coerce_string.cpp:49
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_18:       mov              r9,  qword ptr [rip + rtccb+48]
1:
.Lcoerce_string_α_122_22:
                                                                              jmp   n45_call_direct_α
n44_coerce_string_β:    add              rsp, 16;                             jmp   n43_var_β
                        .size            n44_coerce_string_bx, .-n44_coerce_string_bx
                        .type            n45_call_direct_bx, @function
n45_call_direct_bx:
#-----------------------------------------------------------------------------------------------------------------------
n45_call_direct_α:      sub              rsp, 16
                        sub              rsp, 48
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 40], rax
                        lea              rdi, [rsp + 0]
                        mov              esi, 3
                        call             rt_sno_mkpat_d@PLT
.Lgcsite_main_21:       mov              r9,  qword ptr [rip + rtccb+48]
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              qword ptr [rsp + 0], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        xor              edi, edi
                        xor              esi, esi
                        mov              rdx, rsp
                        lea              rcx, [rsp + 16]
                        call             rt_gc_point_arr_probe_c@PLT
.Lgcsite_main_22:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      add              rsp, 48
                        cmp              al, 104;                             jne   .Lcall_direct_α_123_999
                        add              rsp, 16;                             jmp   n44_coerce_string_β
.Lcall_direct_α_123_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n46_assign_α
n45_call_direct_β:      add              rsp, 16;                             jmp   n44_coerce_string_β
                        .size            n45_call_direct_bx, .-n45_call_direct_bx
                        .type            n46_assign_bx, @function
n46_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n46_assign_α:           mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 11888], rax          # WPAT
                        mov              qword ptr [r9 + 11896], rdx;         jmp   n47_statement_end_α
                        .size            n46_assign_bx, .-n46_assign_bx
                        .type            n47_statement_end_bx, @function
n47_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n47_statement_end_α:    add              rsp, 96;                             jmp   n49_statement_begin_α
                        .size            n47_statement_end_bx, .-n47_statement_end_bx
                        .type            n48_setexit_test_bx, @function
n48_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n48_setexit_test_α:     mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_127_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_127_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_127_61:
.Lsetexit_test_α_127_1:                                                       jmp   n49_statement_begin_α
                        .size            n48_setexit_test_bx, .-n48_setexit_test_bx
                        .type            n49_statement_begin_bx, @function
n49_statement_begin_bx:
.Lstatement_begin_α_128_stno:
                        .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lstatement_begin_α_128_stno
                        .long            5
                        .long            5
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
# NEXTL LINE = INPUT  :F(DONE)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 5 0
n49_statement_begin_α:                                                        jmp   n50_var_α
n49_statement_begin_β:                                                        jmp   n53_setexit_test_α
                        .size            n49_statement_begin_bx, .-n49_statement_begin_bx
                        .type            n50_var_bx, @function
n50_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n50_var_α:              sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lvar_α_130_0] # name
                        call             NV_GET_fn@PLT
.Lgcsite_main_24:       mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lvar_α_130_999
                        add              rsp, 16;                             jmp   n49_statement_begin_β
.Lvar_α_130_999:        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_var_global.cpp:85
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_23:       mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n51_assign_α
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Lvar_α_130_0: .quad .Lvar_α_130_0_s; .popsection
.Lvar_α_130_0_s:        .string          "INPUT"
                        .size            n50_var_bx, .-n50_var_bx
                        .type            n51_assign_bx, @function
n51_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n51_assign_α:           mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 11904], rax          # LINE
                        mov              qword ptr [r9 + 11912], rdx;         jmp   n52_statement_end_α
                        .size            n51_assign_bx, .-n51_assign_bx
                        .type            n52_statement_end_bx, @function
n52_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n52_statement_end_α:    add              rsp, 16;                             jmp   n54_statement_begin_α
                        .size            n52_statement_end_bx, .-n52_statement_end_bx
                        .type            n53_setexit_test_bx, @function
n53_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n53_setexit_test_α:     mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_134_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_134_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_134_61:
.Lsetexit_test_α_134_1:                                                       jmp   n74_statement_begin_α
                        .size            n53_setexit_test_bx, .-n53_setexit_test_bx
                        .type            n54_statement_begin_bx, @function
n54_statement_begin_bx:
.Lstatement_begin_α_135_stno:
                        .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lstatement_begin_α_135_stno
                        .long            6
                        .long            6
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
# NEXTW LINE ? WPAT =  :F(NEXTL)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 6 0
n54_statement_begin_α:                                                        jmp   n55_var_α
n54_statement_begin_β:                                                        jmp   n66_setexit_test_α
                        .size            n54_statement_begin_bx, .-n54_statement_begin_bx
                        .type            n55_var_bx, @function
n55_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n55_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 11904]          # LINE
                        mov              rdx, qword ptr [r9 + 11912]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n56_var_α
                        .size            n55_var_bx, .-n55_var_bx
                        .type            n56_var_bx, @function
n56_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n56_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 11888]          # WPAT
                        mov              rdx, qword ptr [r9 + 11896]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n57_lit_integer_α
n56_var_β:              add              rsp, 16
                        add              rsp, 16;                             jmp   n66_setexit_test_α
                        .size            n56_var_bx, .-n56_var_bx
                        .type            n57_lit_integer_bx, @function
n57_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n57_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_139_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n58_call_direct_α
n57_lit_integer_β:      add              rsp, 16;                             jmp   n56_var_β
.Llit_integer_α_139_0:  .quad            240
                        .size            n57_lit_integer_bx, .-n57_lit_integer_bx
                        .type            n58_call_direct_bx, @function
n58_call_direct_bx:
#-----------------------------------------------------------------------------------------------------------------------
n58_call_direct_α:      sub              rsp, 16
                        sub              rsp, 32
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 24], rax
                        lea              rdi, [rsp + 0]
                        mov              esi, 2
                        call             rt_sno_patck_d@PLT
.Lgcsite_main_25:       mov              r9,  qword ptr [rip + rtccb+48]
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              qword ptr [rsp + 0], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        xor              edi, edi
                        xor              esi, esi
                        mov              rdx, rsp
                        lea              rcx, [rsp + 16]
                        call             rt_gc_point_arr_probe_c@PLT
.Lgcsite_main_26:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      add              rsp, 32
                        cmp              al, 104;                             jne   .Lcall_direct_α_140_999
                        add              rsp, 16;                             jmp   n57_lit_integer_β
.Lcall_direct_α_140_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n59_assign_α
n58_call_direct_β:      add              rsp, 16;                             jmp   n57_lit_integer_β
                        .size            n58_call_direct_bx, .-n58_call_direct_bx
                        .type            n59_assign_bx, @function
n59_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n59_assign_α:           mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 11936], rax
                        mov              qword ptr [r9 + 11944], rdx;         jmp   n60_match_begin_α
n59_assign_β:           add              rsp, 16;                             jmp   n57_lit_integer_β
                        .size            n59_assign_bx, .-n59_assign_bx
                        .type            n60_match_begin_bx, @function
n60_match_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n60_match_begin_α:      mov              rdi, qword ptr [rsp + 48]            # var
                        mov              rsi, qword ptr [rsp + 56]
.Lgcsite_main_31:       push             rbp
                        mov              rbp, rsp
                        push             r12                                  # cas_mark
                        push             r13                                  # outer_Σ
                        push             r14                                  # outer_δ
                        push             r15                                  # outer_Δ
                        sub              rsp, 56
                        mov              rax, qword ptr [rip + Σ@GOTPCREL]
                        mov              rax, qword ptr [rax]
                        mov              rcx, qword ptr [rip + Σlen@GOTPCREL]
                        mov              ecx, dword ptr [rcx + 0]
                        mov              dword ptr [rbp + -88], 2
                        mov              dword ptr [rbp + -84], ecx
                        mov              qword ptr [rbp + -80], rax
                        neg              rax
                        mov              qword ptr [rbp + -72], rax
                        call             qword ptr [rip + rt_match_enter@GOTPCREL]
.Lgcsite_main_30:       cmp              rax, -1;                             jne   .Lmatch_begin_vd_143_3
                        call             c_rt_match_enter@PLT
.Lgcsite_main_29:       mov              r9,  qword ptr [rip + rtccb+48]
.Lmatch_begin_vd_143_3: push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], edx
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [rsp + 24], rdx
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 32]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_main_28:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 8]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      mov              r13, rax
                        mov              r15, rdx
                        mov              qword ptr [r12 + 0], 0               # cas_mark
                        mov              qword ptr [r12 + 8], 0
                        mov              qword ptr [r12 + 16], 0
                        add              r12, 24
                        test             r13, r13;                            jne   .Lmatch_begin_α_143_14
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        mov              qword ptr [rbp + -48], rax;          jmp   .Lmatch_begin_α_143_1
.Lmatch_begin_α_143_14: mov              dword ptr [rbp + -40], 0             # start_δ
.Lmatch_begin_α_143_0:  mov              r14d, dword ptr [rbp + -40]
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # match_beta_cont
                        mov              rax, qword ptr [rcx + 248]
                        mov              qword ptr [rbp + -48], rax
                        lea              rax, [rip + .Lmatch_begin_α_143_13]
                        mov              qword ptr [rcx + 248], rax;          jmp   n61_match_defer_α
n60_match_begin_β:
.Lmatch_begin_α_143_13: mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 200]
                        test             rcx, rcx;                            jne   .Lmatch_begin_α_143_1
                        add              dword ptr [rbp + -40], 1             # start_δ
                        mov              eax, dword ptr [rbp + -40]
                        cmp              eax, r15d;                           jg    .Lmatch_begin_α_143_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lmatch_begin_α_143_1
                                                                              jmp   .Lmatch_begin_α_143_0
.Lmatch_begin_α_143_1:
.Lmatch_begin_γ_60_af:
.Lmatch_begin_ω_60_af:  mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # mbc_restore
                        mov              rax, qword ptr [rbp + -48]
                        mov              qword ptr [rcx + 248], rax
                        mov              r12, qword ptr [rbp + -8]            # cas_mark
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              rdi, r13
                        mov              rsi, r15
                        lea              rdx, [rbp + -88]
                        call             qword ptr [rip + rt_match_ctx_restore@GOTPCREL]
.Lgcsite_main_27:       mov              qword ptr [rbp + -16], rax           # outer_Σ
                        mov              r13, qword ptr [rbp + -16]
                        mov              rsp, rbp
                        pop              rbp;                                 jmp   n59_assign_β
                        .size            n60_match_begin_bx, .-n60_match_begin_bx
                        .type            n61_match_defer_bx, @function
n61_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n61_match_defer_α:      mov              rax, qword ptr [r9 + 11936]
                        mov              rdx, qword ptr [r9 + 11944]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_144_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_144_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
.Lgcsite_main_54:       mov              r9,  qword ptr [rip + rtccb+48]
                        push             rax                                  # gc_poll bb_match_defer.cpp:103
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_53:       mov              r9,  qword ptr [rip + rtccb+48]
1:                      mov              rdx, qword ptr [r9 + 11944];         jmp   .Lmatch_defer_α_144_10
.Lmatch_defer_α_144_9:  xor              eax, eax
.Lmatch_defer_α_144_10: test             rax, rax;                            jz    .Lmatch_defer_α_144_0
.Lmatch_defer_α_144_48: mov              r8d, 1
                        lea              rcx, [rip + .Lmatch_defer_α_144_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_144_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_144_4:
.Lgcsite_main_52:                                                             jmp   n62_match_end_α
.Lmatch_defer_α_144_5:
.Lgcsite_main_51:       cmp              r14d, -2;                            je    .Lmatch_begin_ω_60_af
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 200]
                        test             rcx, rcx;                            jne   .Lmatch_begin_ω_60_af
                                                                              jmp   n60_match_begin_β
.Lmatch_defer_α_144_0:  sub              rsp, 32
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], r14
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        sub              rsp, 144
                        lea              rdi, [r9 + 11936]
                        xor              esi, esi
                        mov              rdx, rsp
                        mov              qword ptr [1879048192], r12
                        call             qword ptr [rip + rt_defer_open_cell@GOTPCREL]
.Lgcsite_main_50:       cmp              rax, -1;                             jne   .Lmatch_defer_vd_144_5
                        call             c_rt_defer_open_cell@PLT
.Lgcsite_main_49:       mov              r9,  qword ptr [rip + rtccb+48]
.Lmatch_defer_vd_144_5: push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 48
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], rax
                        mov              dword ptr [rsp + 32], 3
                        mov              dword ptr [rsp + 36], 0
                        mov              qword ptr [rsp + 40], rdx
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_144_51
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_144_51: lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_main_48:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:
.Lmatch_defer_α_144_2:  test             rax, rax;                            je    .Lmatch_defer_α_144_3
                        cmp              rdx, 4;                              je    .Lmatch_defer_α_144_40
                        cmp              rdx, 5;                              je    .Lmatch_defer_α_144_61
                        sub              rsp, 64
                        mov              qword ptr [rsp + 56], r12
                        mov              qword ptr [rsp + 48], rbx
                        mov              dword ptr [rsp + 32], 3
                        mov              dword ptr [rsp + 36], 0
                        mov              qword ptr [rsp + 40], rdx
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], r14
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              rcx, rdx
                        and              rcx, 63
                        cmp              rcx, 2;                              je    .Lmatch_defer_α_144_41
                        cmp              rcx, 1;                              je    .Lmatch_defer_α_144_141
                        lea              rcx, [rip + .Lmatch_defer_α_144_43]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_144_42]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_144_42]
                        lea              rdx, [rip + .Lmatch_defer_α_144_43]; jmp   rax
.Lmatch_defer_α_144_41: sub              rsp, 48
                        mov              qword ptr [rsp + 0], 0
                        lea              rcx, [rip + .Lmatch_defer_α_144_44]
                        mov              qword ptr [rsp + 8], rcx
                        lea              rcx, [rip + .Lmatch_defer_α_144_45]
                        mov              qword ptr [rsp + 16], rcx
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 16
                        mov              rcx, qword ptr [rip + rt_tiny_glue_enter@GOTPCREL]
                                                                              jmp   rcx
.Lmatch_defer_α_144_44:
.Lgcsite_main_47:       add              rsp, 48
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_144_46
.Lmatch_defer_α_144_45:
.Lgcsite_main_46:       add              rsp, 48
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_144_47
.Lmatch_defer_α_144_42:
.Lgcsite_main_45:       add              rsp, 16
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_144_46
.Lmatch_defer_α_144_43:
.Lgcsite_main_44:       add              rsp, 16
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_144_47
.Lmatch_defer_α_144_141:
                        lea              rcx, [rip + .Lmatch_defer_α_144_143]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_144_142]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_144_142]
                        lea              rdx, [rip + .Lmatch_defer_α_144_143]
                                                                              jmp   rax
.Lmatch_defer_α_144_142:
.Lgcsite_main_43:       add              rsp, 0
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_144_46
.Lmatch_defer_α_144_143:
.Lgcsite_main_42:       add              rsp, 0
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_144_47
.Lmatch_defer_α_144_46: mov              rcx, rsp
                        call             rt_defer_land_γ@PLT
.Lgcsite_main_41:       mov              r9,  qword ptr [rip + rtccb+48]
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 48
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], rax
                        mov              dword ptr [rsp + 32], 3
                        mov              dword ptr [rsp + 36], 0
                        mov              qword ptr [rsp + 40], rdx
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_144_52
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_144_52: lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_main_40:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_144_2
.Lmatch_defer_α_144_47: mov              rsi, rsp
                        call             rt_defer_land_ω@PLT
.Lgcsite_main_39:       mov              r9,  qword ptr [rip + rtccb+48]
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 48
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], rax
                        mov              dword ptr [rsp + 32], 3
                        mov              dword ptr [rsp + 36], 0
                        mov              qword ptr [rsp + 40], rdx
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_144_53
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_144_53: lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_main_38:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_144_2
.Lmatch_defer_α_144_61: sub              rsp, 64
                        mov              qword ptr [rsp + 56], r12
                        mov              qword ptr [rsp + 48], rbx
                        mov              dword ptr [rsp + 32], 3
                        mov              dword ptr [rsp + 36], 0
                        mov              qword ptr [rsp + 40], rdx
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], r14
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              rcx, qword ptr [rip + Σ@GOTPCREL]
                        mov              r13, qword ptr [rcx + 0]
                        mov              rcx, qword ptr [rip + Σlen@GOTPCREL]
                        mov              r15d, dword ptr [rcx + 0]
                        xor              ecx, ecx
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_144_62]
                        mov              rdx, rcx
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_144_62:
.Lgcsite_main_37:       add              rsp, 8
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64
                        mov              rsi, rsp                             # s
                        call             rt_defer_land_chain@PLT
.Lgcsite_main_36:       mov              r9,  qword ptr [rip + rtccb+48]
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 48
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], rax
                        mov              dword ptr [rsp + 32], 3
                        mov              dword ptr [rsp + 36], 0
                        mov              qword ptr [rsp + 40], rdx
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_144_63
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_144_63: lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_main_35:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_144_2
.Lmatch_defer_α_144_40: add              rsp, 144
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        add              rsp, 32
                        mov              rdx, rax
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lmatch_defer_α_144_48
.Lmatch_defer_α_144_3:  mov              edi, r14d
                        mov              rsi, rsp
                        call             qword ptr [rip + rt_defer_close@GOTPCREL]
.Lgcsite_main_34:       cmp              eax, -2;                             jne   .Lmatch_defer_vd_144_4
                        call             c_rt_defer_close@PLT
.Lgcsite_main_33:       mov              r9,  qword ptr [rip + rtccb+48]
.Lmatch_defer_vd_144_4: add              rsp, 144
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        add              rsp, 32
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 32]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_main_32:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:
.Lmatch_defer_α_144_49: cmp              r14d, -2;                            je    .Lmatch_begin_ω_60_af
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 200]
                        test             rcx, rcx;                            jne   .Lmatch_begin_ω_60_af
                        test             eax, eax;                            js    n60_match_begin_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_144_6]
                        push             rcx
                        push             rax;                                 jmp   n62_match_end_α
.Lmatch_defer_α_144_6:  add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n60_match_begin_β
n61_match_defer_β:      cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_144_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_144_12
                                                                              jmp   rax
.Lmatch_defer_β_144_12:                                                       jmp   qword ptr [rsp]
                        .size            n61_match_defer_bx, .-n61_match_defer_bx
                        .type            n62_match_end_bx, @function
n62_match_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n62_match_end_α:        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 200]
                        test             rcx, rcx;                            jne   .Lmatch_begin_ω_60_af
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # mbc_restore
                        mov              rax, qword ptr [rbp + -48]
                        mov              qword ptr [rcx + 248], rax
                        mov              eax, dword ptr [rbp + -40]           # repl_start
                        mov              dword ptr [rbp + -36], eax
                        mov              qword ptr [rbp + -56], r14           # repl_end
                        sub              rsp, 32
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], r14
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        sub              rsp, 224
                        mov              qword ptr [rsp + 112], 0
                        mov              qword ptr [rsp + 120], 0
                        mov              rdi, qword ptr [rbp + -8]            # cas_mark
                        mov              rsi, r12
                        mov              rdx, r13
                        mov              rcx, rsp
                        call             qword ptr [rip + rt_dcap_end_ok_open@GOTPCREL]
.Lgcsite_main_86:       push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 32]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_main_85:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:
.Lmatch_end_α_146_1:    cmp              rax, 1;                              jbe   .Lmatch_end_α_146_2
                        cmp              rax, 2;                              je    .Lmatch_end_α_146_10
                        sub              rsp, 64
                        mov              qword ptr [rsp + 56], r12
                        mov              qword ptr [rsp + 48], rbx
                        mov              dword ptr [rsp + 32], 3
                        mov              dword ptr [rsp + 36], 0
                        mov              qword ptr [rsp + 40], rdx
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], r14
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              rcx, rdx
                        and              rcx, 63
                        cmp              rcx, 2;                              je    .Lmatch_end_α_146_20
                        cmp              rcx, 1;                              je    .Lmatch_end_α_146_120
                        lea              rcx, [rip + .Lmatch_end_α_146_22]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_end_α_146_21]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_end_α_146_21]
                        lea              rdx, [rip + .Lmatch_end_α_146_22];   jmp   rax
.Lmatch_end_α_146_20:   sub              rsp, 48
                        mov              qword ptr [rsp + 0], 0
                        lea              rcx, [rip + .Lmatch_end_α_146_23]
                        mov              qword ptr [rsp + 8], rcx
                        lea              rcx, [rip + .Lmatch_end_α_146_24]
                        mov              qword ptr [rsp + 16], rcx
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 16
                        mov              rcx, qword ptr [rip + rt_tiny_glue_enter@GOTPCREL]
                                                                              jmp   rcx
.Lmatch_end_α_146_23:
.Lgcsite_main_84:       add              rsp, 48
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_146_8
.Lmatch_end_α_146_24:
.Lgcsite_main_83:       add              rsp, 48
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_146_9
.Lmatch_end_α_146_21:
.Lgcsite_main_82:       add              rsp, 16
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_146_8
.Lmatch_end_α_146_22:
.Lgcsite_main_81:       add              rsp, 16
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_146_9
.Lmatch_end_α_146_120:  lea              rcx, [rip + .Lmatch_end_α_146_122]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_end_α_146_121]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_end_α_146_121]
                        lea              rdx, [rip + .Lmatch_end_α_146_122];  jmp   rax
.Lmatch_end_α_146_121:
.Lgcsite_main_80:       add              rsp, 0
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_146_8
.Lmatch_end_α_146_122:
.Lgcsite_main_79:       add              rsp, 0
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_146_9
.Lmatch_end_α_146_8:    mov              rdx, rsp
                        call             rt_dcap_land_γ@PLT
.Lgcsite_main_78:       mov              r9,  qword ptr [rip + rtccb+48]
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 32]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_main_77:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                                                                            jmp   .Lmatch_end_α_146_1
.Lmatch_end_α_146_9:    mov              rdi, rsp
                        call             rt_dcap_land_ω@PLT
.Lgcsite_main_76:       mov              r9,  qword ptr [rip + rtccb+48]
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 32]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_main_75:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                                                                            jmp   .Lmatch_end_α_146_1
.Lmatch_end_α_146_10:   mov              rcx, qword ptr [rsp + 112]
                        test             rcx, rcx;                            jz    .Lmatch_end_α_146_60
                        lea              rdi, [rsp + 112]                     # args
                        mov              esi, 3                               # nargs
                        call             rt_apply_open@PLT
.Lgcsite_main_74:       mov              r9,  qword ptr [rip + rtccb+48]
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 32]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_main_73:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      test             rax, rax;                            jz    .Lmatch_end_α_146_61
                        sub              rsp, 16
                        mov              rcx, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 0]
                        mov              qword ptr [rsp + 0], rcx
                        mov              rcx, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 0]
                        mov              qword ptr [rsp + 8], rcx
                        sub              rsp, 64
                        mov              qword ptr [rsp + 56], r12
                        mov              qword ptr [rsp + 48], rbx
                        mov              dword ptr [rsp + 32], 3
                        mov              dword ptr [rsp + 36], 0
                        mov              qword ptr [rsp + 40], rdx
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], r14
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              rcx, rdx
                        and              rcx, 63
                        cmp              rcx, 2;                              je    .Lmatch_end_α_146_40
                        cmp              rcx, 1;                              je    .Lmatch_end_α_146_140
                        lea              rcx, [rip + .Lmatch_end_α_146_42]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_end_α_146_41]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_end_α_146_41]
                        lea              rdx, [rip + .Lmatch_end_α_146_42];   jmp   rax
.Lmatch_end_α_146_40:   sub              rsp, 48
                        mov              qword ptr [rsp + 0], 0
                        lea              rcx, [rip + .Lmatch_end_α_146_43]
                        mov              qword ptr [rsp + 8], rcx
                        lea              rcx, [rip + .Lmatch_end_α_146_44]
                        mov              qword ptr [rsp + 16], rcx
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 16
                        mov              rcx, qword ptr [rip + rt_tiny_glue_enter@GOTPCREL]
                                                                              jmp   rcx
.Lmatch_end_α_146_43:
.Lgcsite_main_72:       add              rsp, 48
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_146_45
.Lmatch_end_α_146_44:
.Lgcsite_main_71:       add              rsp, 48
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_146_46
.Lmatch_end_α_146_41:
.Lgcsite_main_70:       add              rsp, 16
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_146_45
.Lmatch_end_α_146_42:
.Lgcsite_main_69:       add              rsp, 16
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_146_46
.Lmatch_end_α_146_140:  lea              rcx, [rip + .Lmatch_end_α_146_142]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_end_α_146_141]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_end_α_146_141]
                        lea              rdx, [rip + .Lmatch_end_α_146_142];  jmp   rax
.Lmatch_end_α_146_141:
.Lgcsite_main_68:       add              rsp, 0
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_146_45
.Lmatch_end_α_146_142:
.Lgcsite_main_67:       add              rsp, 0
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_146_46
.Lmatch_end_α_146_45:   mov              rcx, rsp
                        call             rt_apply_land_γ@PLT
.Lgcsite_main_66:       mov              r9,  qword ptr [rip + rtccb+48]
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              qword ptr [rsp + 16], r13
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        lea              rdx, [rsp + 16]
                        lea              rcx, [rsp + 32]
                        call             rt_gc_point_arr_probe_c@PLT
.Lgcsite_main_65:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              r13, qword ptr [rsp + 16]
                        add              rsp, 32
1:                      add              rsp, 16;                             jmp   .Lmatch_end_α_146_62
.Lmatch_end_α_146_46:   mov              rsi, rsp
                        call             rt_apply_land_ω@PLT
.Lgcsite_main_64:       mov              r9,  qword ptr [rip + rtccb+48]
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              qword ptr [rsp + 16], r13
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        lea              rdx, [rsp + 16]
                        lea              rcx, [rsp + 32]
                        call             rt_gc_point_arr_probe_c@PLT
.Lgcsite_main_63:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              r13, qword ptr [rsp + 16]
                        add              rsp, 32
1:                      add              rsp, 16;                             jmp   .Lmatch_end_α_146_62
.Lmatch_end_α_146_61:   lea              rdi, [rsp + 112]                     # pend
                        call             rt_trace_pend_run@PLT
.Lgcsite_main_62:       mov              r9,  qword ptr [rip + rtccb+48]
                        push             rax                                  # gc_poll bb_glue_flat.cpp:321
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_61:       mov              r9,  qword ptr [rip + rtccb+48]
1:
.Lmatch_end_α_146_62:   lea              rdi, [rsp + 112]                     # pend
                        call             rt_trace_pend_close@PLT
.Lgcsite_main_60:       mov              r9,  qword ptr [rip + rtccb+48]
                        push             rax                                  # gc_poll bb_glue_flat.cpp:325
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_59:       mov              r9,  qword ptr [rip + rtccb+48]
1:
.Lmatch_end_α_146_60:   mov              rdi, rsp                             # c
                        call             rt_dcap_resume@PLT
.Lgcsite_main_58:       mov              r9,  qword ptr [rip + rtccb+48]
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 32]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_main_57:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                                                                            jmp   .Lmatch_end_α_146_1
.Lmatch_end_α_146_2:    add              rsp, 224
                        mov              qword ptr [rsp + 0], rax
                        mov              rdi, qword ptr [rbp + -16]           # outer_Σ
                        mov              rsi, qword ptr [rbp + -32]           # outer_Δ
                        lea              rdx, [rbp + -88]
                        call             qword ptr [rip + rt_match_ctx_restore@GOTPCREL]
.Lgcsite_main_56:       mov              qword ptr [rbp + -16], rax           # outer_Σ
                        mov              rax, qword ptr [rsp + 0]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        add              rsp, 32
                        test             rax, rax;                            je    .Lmatch_end_α_146_13
                                                                              jmp   .Lmatch_begin_ω_60_af
.Lmatch_end_α_146_13:   mov              r12, qword ptr [rbp + -8]            # cas_mark
                        mov              qword ptr [1879048192], r12
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              eax, dword ptr [rbp + -36]           # repl_start
                        mov              dword ptr [r12 + 0], eax
                        mov              rax, qword ptr [rbp + -56]           # repl_end
                        mov              qword ptr [r12 + 8], rax
                        add              r12, 16
                        mov              rsp, rbp                             # frame_whack
                        pop              rbp
.Lgcsite_main_55:                                                             jmp   n63_lit_string_α
                        .size            n62_match_end_bx, .-n62_match_end_bx
                        .type            n63_lit_string_bx, @function
n63_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n63_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Llit_string_α_147_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n64_match_replace_α
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_string_α_147_0: .quad .Llit_string_α_147_0_s; .popsection
.Llit_string_α_147_0_s: .string          ""
                        .size            n63_lit_string_bx, .-n63_lit_string_bx
                        .type            n64_match_replace_bx, @function
n64_match_replace_bx:
#-----------------------------------------------------------------------------------------------------------------------
n64_match_replace_α:    mov              rdi, qword ptr [rip + .Lmatch_replace_α_149_0]
                        mov              rsi, qword ptr [rsp + 64]            # var
                        mov              rdx, qword ptr [rsp + 72]
                        mov              ecx, dword ptr [r12 + -16]           # repl_start
                        mov              r8, qword ptr [r12 + -8]             # repl_end
                        sub              r12, 16
                        lea              r9, [rsp + 0]                        # lit_string
                        call             qword ptr [rip + rt_match_replace@GOTPCREL]
.Lgcsite_main_89:       cmp              al, 255;                             jne   .Lmatch_replace_vd_149_6
                        call             c_rt_match_replace@PLT
.Lgcsite_main_88:       mov              r9,  qword ptr [rip + rtccb+48]
.Lmatch_replace_vd_149_6:
                        add              rsp, 16                              # repl_subtree_free
                        push             rax                                  # gc_poll bb_match_replace.cpp:39
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_87:       mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n65_statement_end_α
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Lmatch_replace_α_149_0: .quad .Lmatch_replace_α_149_0_s; .popsection
.Lmatch_replace_α_149_0_s:
                        .string          "LINE"
                        .size            n64_match_replace_bx, .-n64_match_replace_bx
                        .type            n65_statement_end_bx, @function
n65_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n65_statement_end_α:    add              rsp, 64;                             jmp   n67_statement_begin_α
                        .size            n65_statement_end_bx, .-n65_statement_end_bx
                        .type            n66_setexit_test_bx, @function
n66_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n66_setexit_test_α:     mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_152_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_152_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_152_61:
.Lsetexit_test_α_152_1:                                                       jmp   n49_statement_begin_α
                        .size            n66_setexit_test_bx, .-n66_setexit_test_bx
                        .type            n67_statement_begin_bx, @function
n67_statement_begin_bx:
.Lstatement_begin_α_153_stno:
                        .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lstatement_begin_α_153_stno
                        .long            7
                        .long            7
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
#       N = N + 1  :(NEXTW)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 7 0
n67_statement_begin_α:                                                        jmp   n68_var_α
n67_statement_begin_β:                                                        jmp   n73_setexit_test_α
                        .size            n67_statement_begin_bx, .-n67_statement_begin_bx
                        .type            n68_var_bx, @function
n68_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n68_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 11920]          # N
                        mov              rdx, qword ptr [r9 + 11928]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n69_lit_integer_α
                        .size            n68_var_bx, .-n68_var_bx
                        .type            n69_lit_integer_bx, @function
n69_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n69_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_156_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n70_binop_α
n69_lit_integer_β:      add              rsp, 16
                        add              rsp, 16;                             jmp   n67_statement_begin_β
.Llit_integer_α_156_0:  .quad            1
                        .size            n69_lit_integer_bx, .-n69_lit_integer_bx
                        .type            n70_binop_bx, @function
n70_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n70_binop_α:            sub              rsp, 16
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_157_2
                        add              rax, 1;                              jo    .Lbinop_α_157_0
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_157_7
.Lbinop_α_157_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_157_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_157_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_157_4
.Lbinop_α_157_3:        movq             xmm0, rsi
.Lbinop_α_157_4:        cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_157_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_157_7:                                                              jmp   n71_assign_α
.Lbinop_α_157_0:        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             c_rt_add_sno@PLT
.Lgcsite_main_91:       mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lbinop_α_157_999
                        add              rsp, 16;                             jmp   n69_lit_integer_β
.Lbinop_α_157_999:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:246
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_90:       mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n71_assign_α
n70_binop_β:            add              rsp, 16;                             jmp   n69_lit_integer_β
                        .size            n70_binop_bx, .-n70_binop_bx
                        .type            n71_assign_bx, @function
n71_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n71_assign_α:           mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 11920], rax          # N
                        mov              qword ptr [r9 + 11928], rdx;         jmp   n72_statement_end_α
                        .size            n71_assign_bx, .-n71_assign_bx
                        .type            n72_statement_end_bx, @function
n72_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n72_statement_end_α:    add              rsp, 48;                             jmp   n54_statement_begin_α
                        .size            n72_statement_end_bx, .-n72_statement_end_bx
                        .type            n73_setexit_test_bx, @function
n73_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n73_setexit_test_α:     mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_161_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_161_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_161_61:
.Lsetexit_test_α_161_1:                                                       jmp   n54_statement_begin_α
                        .size            n73_setexit_test_bx, .-n73_setexit_test_bx
                        .type            n74_statement_begin_bx, @function
n74_statement_begin_bx:
.Lstatement_begin_α_162_stno:
                        .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lstatement_begin_α_162_stno
                        .long            8
                        .long            8
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
# DONE  OUTPUT = +N ' words'
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 8 0
n74_statement_begin_α:                                                        jmp   n75_var_α
n74_statement_begin_β:                                                        jmp   n81_setexit_test_α
                        .size            n74_statement_begin_bx, .-n74_statement_begin_bx
                        .type            n75_var_bx, @function
n75_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n75_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 11920]          # N
                        mov              rdx, qword ptr [r9 + 11928]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n76_unop_α
                        .size            n75_var_bx, .-n75_var_bx
                        .type            n76_unop_bx, @function
n76_unop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n76_unop_α:             sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]            # var
                        mov              rsi, qword ptr [rsp + 24]
                        call             rt_num_pos_sno@PLT
.Lgcsite_main_93:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_unop.cpp:37
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_92:       mov              r9,  qword ptr [rip + rtccb+48]
1:                      mov              rax, qword ptr [rsp + 0]             # result
                        cmp              al, 104;                             jne   .Lunop_α_165_999
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n74_statement_begin_β
.Lunop_α_165_999:                                                             jmp   n77_lit_string_α
n76_unop_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n74_statement_begin_β
                        .size            n76_unop_bx, .-n76_unop_bx
                        .type            n77_lit_string_bx, @function
n77_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n77_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 6
                        mov              rax, qword ptr [rip + .Llit_string_α_166_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n78_binop_α
n77_lit_string_β:       add              rsp, 16;                             jmp   n76_unop_β
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_string_α_166_0: .quad .Llit_string_α_166_0_s; .popsection
.Llit_string_α_166_0_s: .string          " words"
                        .size            n77_lit_string_bx, .-n77_lit_string_bx
                        .type            n78_binop_bx, @function
n78_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n78_binop_α:            sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # unop
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + sno_concat_d@GOTPCREL]
.Lgcsite_main_96:       cmp              al, 255;                             jne   .Lbinop_vd_167_7
                        call             c_sno_concat_d@PLT
.Lgcsite_main_95:       mov              r9,  qword ptr [rip + rtccb+48]
.Lbinop_vd_167_7:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_concat_slot.cpp:70
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_94:       mov              r9,  qword ptr [rip + rtccb+48]
1:                      mov              eax, dword ptr [rsp + 0]             # result
                        cmp              al, 104;                             jne   .Lbinop_α_167_999
                        add              rsp, 16;                             jmp   n77_lit_string_β
.Lbinop_α_167_999:                                                            jmp   n79_assign_α
n78_binop_β:            add              rsp, 16;                             jmp   n77_lit_string_β
                        .size            n78_binop_bx, .-n78_binop_bx
                        .type            n79_assign_bx, @function
n79_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n79_assign_α:           mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]             # val
                        mov              rsi, rax                             # val
                        mov              rdi, qword ptr [rip + .Lassign_α_168_0] # name
                        call             NV_SET_fn@PLT
.Lgcsite_main_98:       mov              r9,  qword ptr [rip + rtccb+48]
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              qword ptr [rsp + 16], r13
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        lea              rdx, [rsp + 16]
                        lea              rcx, [rsp + 32]
                        call             rt_gc_point_arr_probe_c@PLT
.Lgcsite_main_97:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              r13, qword ptr [rsp + 16]
                        add              rsp, 32
1:                                                                            jmp   n80_statement_end_α
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Lassign_α_168_0: .quad .Lassign_α_168_0_s; .popsection
.Lassign_α_168_0_s:     .string          "OUTPUT"
                        .size            n79_assign_bx, .-n79_assign_bx
                        .type            n80_statement_end_bx, @function
n80_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n80_statement_end_α:    add              rsp, 64;                             jmp   main_γ
                        .size            n80_statement_end_bx, .-n80_statement_end_bx
                        .type            n81_setexit_test_bx, @function
n81_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n81_setexit_test_α:     mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_171_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_171_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_171_61:
.Lsetexit_test_α_171_1:                                                       jmp   main_γ
                        .size            n81_setexit_test_bx, .-n81_setexit_test_bx
                        .type            n82_goto_bx, @function
n82_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n82_goto_α:                                                                   jmp   n49_statement_begin_α
n82_goto_β:                                                                   jmp   main_ω
                        .size            n82_goto_bx, .-n82_goto_bx
                        .type            n83_goto_bx, @function
n83_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n83_goto_α:                                                                   jmp   n54_statement_begin_α
n83_goto_β:                                                                   jmp   main_ω
                        .size            n83_goto_bx, .-n83_goto_bx
                        .type            n84_goto_bx, @function
n84_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n84_goto_α:                                                                   jmp   n74_statement_begin_α
n84_goto_β:                                                                   jmp   main_ω
                        .size            n84_goto_bx, .-n84_goto_bx
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        add              rsp, 0
                        call             sno_setexit_fire_on_end@PLT
.Lgcsite_main_101:      push             rax                                  # gc_poll bb_glue_flat.cpp:57
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_100:      mov              r9,  qword ptr [rip + rtccb+48]
1:                      xor              edi, edi
                        call             exit@PLT
.Lgcsite_main_99:
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        add              rsp, 0
                        mov              edi, 1
                        call             exit@PLT
.Lgcsite_main_102:
#-----------------------------------------------------------------------------------------------------------------------
                        .pushsection     .data.rel.ro,"aw",@progbits
                        .p2align         3
.Lgcmap_main:
                        .quad            70065933658
                        .quad            38654705664
                        .quad            .Lgcmap_main_s
                        .quad            0
                        .quad            0
.Lgcmap_main_s:         .string          "main"
                        .popsection
                        .pushsection     .data.rel.ro,"aw",@progbits
                        .p2align         3
.Lgcsites_main_1:       .quad            103
                        .quad            .Lgcmap_main
                        .quad            0
                        .quad            .Lgccode_main_1
                        .quad            .Lgcsite_main_0-.Lgccode_main_1
                        .quad            68719476737
                        .quad            .Lgcsite_main_1-.Lgccode_main_1
                        .quad            206158430209
                        .quad            .Lgcsite_main_2-.Lgccode_main_1
                        .quad            137438953473
                        .quad            .Lgcsite_main_3-.Lgccode_main_1
                        .quad            274877906945
                        .quad            .Lgcsite_main_5-.Lgccode_main_1
                        .quad            137438953473
                        .quad            .Lgcsite_main_4-.Lgccode_main_1
                        .quad            137438953473
                        .quad            .Lgcsite_main_8-.Lgccode_main_1
                        .quad            206158430209
                        .quad            .Lgcsite_main_7-.Lgccode_main_1
                        .quad            206158430209
                        .quad            .Lgcsite_main_6-.Lgccode_main_1
                        .quad            206158430209
                        .quad            .Lgcsite_main_11-.Lgccode_main_1
                        .quad            343597383681
                        .quad            .Lgcsite_main_10-.Lgccode_main_1
                        .quad            343597383681
                        .quad            .Lgcsite_main_9-.Lgccode_main_1
                        .quad            343597383681
                        .quad            .Lgcsite_main_14-.Lgccode_main_1
                        .quad            481036337153
                        .quad            .Lgcsite_main_13-.Lgccode_main_1
                        .quad            481036337153
                        .quad            .Lgcsite_main_12-.Lgccode_main_1
                        .quad            481036337153
                        .quad            .Lgcsite_main_17-.Lgccode_main_1
                        .quad            206158430209
                        .quad            .Lgcsite_main_16-.Lgccode_main_1
                        .quad            206158430209
                        .quad            .Lgcsite_main_15-.Lgccode_main_1
                        .quad            206158430209
                        .quad            .Lgcsite_main_20-.Lgccode_main_1
                        .quad            343597383681
                        .quad            .Lgcsite_main_19-.Lgccode_main_1
                        .quad            343597383681
                        .quad            .Lgcsite_main_18-.Lgccode_main_1
                        .quad            343597383681
                        .quad            .Lgcsite_main_21-.Lgccode_main_1
                        .quad            618475290625
                        .quad            .Lgcsite_main_22-.Lgccode_main_1
                        .quad            755914244097
                        .quad            .Lgcsite_main_24-.Lgccode_main_1
                        .quad            68719476737
                        .quad            .Lgcsite_main_23-.Lgccode_main_1
                        .quad            68719476737
                        .quad            .Lgcsite_main_25-.Lgccode_main_1
                        .quad            412316860417
                        .quad            .Lgcsite_main_26-.Lgccode_main_1
                        .quad            549755813889
                        .quad            .Lgcsite_main_31-.Lgccode_main_1
                        .quad            274877906948
                        .quad            .Lgcsite_main_30-.Lgccode_main_1
                        .quad            274878300417
                        .quad            .Lgcsite_main_29-.Lgccode_main_1
                        .quad            274878300417
                        .quad            .Lgcsite_main_28-.Lgccode_main_1
                        .quad            274878300417
                        .quad            .Lgcsite_main_27-.Lgccode_main_1
                        .quad            274878300417
                        .quad            .Lgcsite_main_54-.Lgccode_main_1
                        .quad            274878300417
                        .quad            .Lgcsite_main_53-.Lgccode_main_1
                        .quad            274878300417
                        .quad            .Lgcsite_main_52-.Lgccode_main_1
                        .quad            274878300418
                        .quad            .Lgcsite_main_51-.Lgccode_main_1
                        .quad            274878300418
                        .quad            .Lgcsite_main_50-.Lgccode_main_1
                        .quad            274878300417
                        .quad            .Lgcsite_main_49-.Lgccode_main_1
                        .quad            274878300417
                        .quad            .Lgcsite_main_48-.Lgccode_main_1
                        .quad            274878300417
                        .quad            .Lgcsite_main_47-.Lgccode_main_1
                        .quad            274878300418
                        .quad            .Lgcsite_main_46-.Lgccode_main_1
                        .quad            274878300418
                        .quad            .Lgcsite_main_45-.Lgccode_main_1
                        .quad            274878300418
                        .quad            .Lgcsite_main_44-.Lgccode_main_1
                        .quad            274878300418
                        .quad            .Lgcsite_main_43-.Lgccode_main_1
                        .quad            274878300418
                        .quad            .Lgcsite_main_42-.Lgccode_main_1
                        .quad            274878300418
                        .quad            .Lgcsite_main_41-.Lgccode_main_1
                        .quad            274878300417
                        .quad            .Lgcsite_main_40-.Lgccode_main_1
                        .quad            274878300417
                        .quad            .Lgcsite_main_39-.Lgccode_main_1
                        .quad            274878300417
                        .quad            .Lgcsite_main_38-.Lgccode_main_1
                        .quad            274878300417
                        .quad            .Lgcsite_main_37-.Lgccode_main_1
                        .quad            274878300418
                        .quad            .Lgcsite_main_36-.Lgccode_main_1
                        .quad            274878300417
                        .quad            .Lgcsite_main_35-.Lgccode_main_1
                        .quad            274878300417
                        .quad            .Lgcsite_main_34-.Lgccode_main_1
                        .quad            274878300417
                        .quad            .Lgcsite_main_33-.Lgccode_main_1
                        .quad            274878300417
                        .quad            .Lgcsite_main_32-.Lgccode_main_1
                        .quad            274878300417
                        .quad            .Lgcsite_main_86-.Lgccode_main_1
                        .quad            274878300417
                        .quad            .Lgcsite_main_85-.Lgccode_main_1
                        .quad            274878300417
                        .quad            .Lgcsite_main_84-.Lgccode_main_1
                        .quad            274878300418
                        .quad            .Lgcsite_main_83-.Lgccode_main_1
                        .quad            274878300418
                        .quad            .Lgcsite_main_82-.Lgccode_main_1
                        .quad            274878300418
                        .quad            .Lgcsite_main_81-.Lgccode_main_1
                        .quad            274878300418
                        .quad            .Lgcsite_main_80-.Lgccode_main_1
                        .quad            274878300418
                        .quad            .Lgcsite_main_79-.Lgccode_main_1
                        .quad            274878300418
                        .quad            .Lgcsite_main_78-.Lgccode_main_1
                        .quad            274878300417
                        .quad            .Lgcsite_main_77-.Lgccode_main_1
                        .quad            274878300417
                        .quad            .Lgcsite_main_76-.Lgccode_main_1
                        .quad            274878300417
                        .quad            .Lgcsite_main_75-.Lgccode_main_1
                        .quad            274878300417
                        .quad            .Lgcsite_main_74-.Lgccode_main_1
                        .quad            274878300417
                        .quad            .Lgcsite_main_73-.Lgccode_main_1
                        .quad            274878300417
                        .quad            .Lgcsite_main_72-.Lgccode_main_1
                        .quad            274878300418
                        .quad            .Lgcsite_main_71-.Lgccode_main_1
                        .quad            274878300418
                        .quad            .Lgcsite_main_70-.Lgccode_main_1
                        .quad            274878300418
                        .quad            .Lgcsite_main_69-.Lgccode_main_1
                        .quad            274878300418
                        .quad            .Lgcsite_main_68-.Lgccode_main_1
                        .quad            274878300418
                        .quad            .Lgcsite_main_67-.Lgccode_main_1
                        .quad            274878300418
                        .quad            .Lgcsite_main_66-.Lgccode_main_1
                        .quad            274878300417
                        .quad            .Lgcsite_main_65-.Lgccode_main_1
                        .quad            274878300417
                        .quad            .Lgcsite_main_64-.Lgccode_main_1
                        .quad            274878300417
                        .quad            .Lgcsite_main_63-.Lgccode_main_1
                        .quad            274878300417
                        .quad            .Lgcsite_main_62-.Lgccode_main_1
                        .quad            274878300417
                        .quad            .Lgcsite_main_61-.Lgccode_main_1
                        .quad            274878300417
                        .quad            .Lgcsite_main_60-.Lgccode_main_1
                        .quad            274878300417
                        .quad            .Lgcsite_main_59-.Lgccode_main_1
                        .quad            274878300417
                        .quad            .Lgcsite_main_58-.Lgccode_main_1
                        .quad            274878300417
                        .quad            .Lgcsite_main_57-.Lgccode_main_1
                        .quad            274878300417
                        .quad            .Lgcsite_main_56-.Lgccode_main_1
                        .quad            274878300417
                        .quad            .Lgcsite_main_55-.Lgccode_main_1
                        .quad            274877906949
                        .quad            .Lgcsite_main_89-.Lgccode_main_1
                        .quad            343597383681
                        .quad            .Lgcsite_main_88-.Lgccode_main_1
                        .quad            343597383681
                        .quad            .Lgcsite_main_87-.Lgccode_main_1
                        .quad            274877906945
                        .quad            .Lgcsite_main_91-.Lgccode_main_1
                        .quad            206158430209
                        .quad            .Lgcsite_main_90-.Lgccode_main_1
                        .quad            206158430209
                        .quad            .Lgcsite_main_93-.Lgccode_main_1
                        .quad            137438953473
                        .quad            .Lgcsite_main_92-.Lgccode_main_1
                        .quad            137438953473
                        .quad            .Lgcsite_main_96-.Lgccode_main_1
                        .quad            274877906945
                        .quad            .Lgcsite_main_95-.Lgccode_main_1
                        .quad            274877906945
                        .quad            .Lgcsite_main_94-.Lgccode_main_1
                        .quad            274877906945
                        .quad            .Lgcsite_main_98-.Lgccode_main_1
                        .quad            274877906945
                        .quad            .Lgcsite_main_97-.Lgccode_main_1
                        .quad            412316860417
                        .quad            .Lgcsite_main_101-.Lgccode_main_1
                        .quad            1
                        .quad            .Lgcsite_main_100-.Lgccode_main_1
                        .quad            1
                        .quad            .Lgcsite_main_99-.Lgccode_main_1
                        .quad            1
                        .quad            .Lgcsite_main_102-.Lgccode_main_1
                        .quad            1
                        .popsection
module_init:
                        sub              rsp, 8
                        add              rsp, 8
                        ret
                        .section         .data.rel.ro,"aw",@progbits
                        .align           8
__gc_frame_maps:        .quad            1
                        .quad            .Lgcmap_main
                        .align           8
__gc_frame_sites:       .quad            2
                        .quad            .Lgcsites_.LTp0_0
                        .quad            .Lgcsites_main_1
                        .section         .text
                        .intel_syntax    noprefix
                        .section         .data
                        .align           8
__alpha_cellp_tab:      .quad            0
                        .section         .rodata
                        .section         .text
                        .intel_syntax    noprefix
                        .section         .note.GNU-stack,"",@progbits
