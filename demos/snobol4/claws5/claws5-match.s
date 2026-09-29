                        .intel_syntax    noprefix
                        .text
                        .file            1 "snobol4/claws5/claws5-match.sno"
                        .file            2 "<included>"
#-----------------------------------------------------------------------------------------------------------------------
FN__PAT$0:
PAT$0_α_body:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 232
                        lea              rax, [rip + .Lgcmap_PAT$0]
                        mov              qword ptr [rbp + -224], rax
                        mov              dword ptr [rbp + -232], 160
                        mov              dword ptr [rbp + -228], 232
                        mov              eax, 0
                        lea              rdi, [rbp + -216]
                        xor              eax, eax
                        mov              ecx, 216
                        rep              stosb
                        mov              rcx, qword ptr [rbp + 8]
                        mov              qword ptr [rbp + -8], rcx
                        mov              rcx, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + -16], rcx
                        mov              qword ptr [rbp + -24], rdx
                        mov              qword ptr [rbp + -32], r12
                        .type            n0_match_pos_bx, @function
n0_match_pos_bx:
#-----------------------------------------------------------------------------------------------------------------------
n0_match_pos_α:         mov              r11, 1
                        mov              rax, 0
                        cmp              r14d, eax;                           jne   PAT$0_ω
                                                                              jmp   n1_match_arbno_α
n0_match_pos_β:         mov              r11, 1;                              jmp   PAT$0_ω
                        .size            n0_match_pos_bx, .-n0_match_pos_bx
                        .type            n1_match_arbno_bx, @function
n1_match_arbno_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1_match_arbno_α:       mov              r11, 2
                        sub              rsp, 208
                        mov              dword ptr [rsp + 0], r14d
                        mov              dword ptr [rsp + 4], r14d
                        mov              qword ptr [rsp + 8], r12
                        mov              rax, qword ptr [rbp + -48]
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rbp + -48], rsp;          jmp   n2_match_rpos_α
n1_match_arbno_β:       mov              r11, 2
                        mov              rax, qword ptr [rbp + -48]
                        mov              r12, qword ptr [rax + 8];            jmp   n3_match_alternate_α
.Lmatch_arbno_γ_1_as:   mov              r11, 2
                        mov              rcx, qword ptr [rbp + -48]
                        mov              eax, dword ptr [rcx + 4]
                        cmp              r14d, eax;                           je    n4_match_span_β
                        sub              rsp, 208
                        mov              eax, dword ptr [rcx + 0]
                        mov              dword ptr [rsp + 0], eax
                        mov              dword ptr [rsp + 4], r14d
                        mov              qword ptr [rsp + 8], r12
                        mov              qword ptr [rsp + 16], rcx
                        mov              rax, qword ptr [rbp + -216]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rbp + -208]
                        mov              qword ptr [rsp + 40], rax
                        mov              rax, qword ptr [rbp + -200]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rbp + -192]
                        mov              qword ptr [rsp + 56], rax
                        mov              rax, qword ptr [rbp + -184]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rbp + -176]
                        mov              qword ptr [rsp + 72], rax
                        mov              rax, qword ptr [rbp + -168]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rbp + -160]
                        mov              qword ptr [rsp + 88], rax
                        mov              rax, qword ptr [rbp + -152]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rbp + -144]
                        mov              qword ptr [rsp + 104], rax
                        mov              rax, qword ptr [rbp + -136]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rbp + -128]
                        mov              qword ptr [rsp + 120], rax
                        mov              rax, qword ptr [rbp + -120]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rbp + -112]
                        mov              qword ptr [rsp + 136], rax
                        mov              rax, qword ptr [rbp + -104]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rbp + -96]
                        mov              qword ptr [rsp + 152], rax
                        mov              rax, qword ptr [rbp + -88]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rbp + -80]
                        mov              qword ptr [rsp + 168], rax
                        mov              rax, qword ptr [rbp + -72]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rbp + -64]
                        mov              qword ptr [rsp + 184], rax
                        mov              rax, qword ptr [rbp + -56]
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rbp + -48], rsp;          jmp   n2_match_rpos_α
.Lmatch_arbno_γ_1_af:   mov              r11, 2
.Lmatch_arbno_ω_1_af:   mov              r11, 2
                        mov              rcx, qword ptr [rbp + -48]
                        mov              eax, dword ptr [rcx + 0]
                        mov              r14d, dword ptr [rcx + 4]
                        mov              rdx, qword ptr [rcx + 16]
                        mov              qword ptr [rbp + -48], rdx
                        cmp              r14d, eax;                           je    .Lmatch_arbno_β_14_3
                        mov              rax, qword ptr [rcx + 32]
                        mov              qword ptr [rbp + -216], rax
                        mov              rax, qword ptr [rcx + 40]
                        mov              qword ptr [rbp + -208], rax
                        mov              rax, qword ptr [rcx + 48]
                        mov              qword ptr [rbp + -200], rax
                        mov              rax, qword ptr [rcx + 56]
                        mov              qword ptr [rbp + -192], rax
                        mov              rax, qword ptr [rcx + 64]
                        mov              qword ptr [rbp + -184], rax
                        mov              rax, qword ptr [rcx + 72]
                        mov              qword ptr [rbp + -176], rax
                        mov              rax, qword ptr [rcx + 80]
                        mov              qword ptr [rbp + -168], rax
                        mov              rax, qword ptr [rcx + 88]
                        mov              qword ptr [rbp + -160], rax
                        mov              rax, qword ptr [rcx + 96]
                        mov              qword ptr [rbp + -152], rax
                        mov              rax, qword ptr [rcx + 104]
                        mov              qword ptr [rbp + -144], rax
                        mov              rax, qword ptr [rcx + 112]
                        mov              qword ptr [rbp + -136], rax
                        mov              rax, qword ptr [rcx + 120]
                        mov              qword ptr [rbp + -128], rax
                        mov              rax, qword ptr [rcx + 128]
                        mov              qword ptr [rbp + -120], rax
                        mov              rax, qword ptr [rcx + 136]
                        mov              qword ptr [rbp + -112], rax
                        mov              rax, qword ptr [rcx + 144]
                        mov              qword ptr [rbp + -104], rax
                        mov              rax, qword ptr [rcx + 152]
                        mov              qword ptr [rbp + -96], rax
                        mov              rax, qword ptr [rcx + 160]
                        mov              qword ptr [rbp + -88], rax
                        mov              rax, qword ptr [rcx + 168]
                        mov              qword ptr [rbp + -80], rax
                        mov              rax, qword ptr [rcx + 176]
                        mov              qword ptr [rbp + -72], rax
                        mov              rax, qword ptr [rcx + 184]
                        mov              qword ptr [rbp + -64], rax
                        mov              rax, qword ptr [rcx + 192]
                        mov              qword ptr [rbp + -56], rax
                        lea              rsp, [rcx + 208];                    jmp   n4_match_span_β
.Lmatch_arbno_β_14_3:   lea              rsp, [rcx + 208];                    jmp   n0_match_pos_β
                        .size            n1_match_arbno_bx, .-n1_match_arbno_bx
                        .type            n2_match_rpos_bx, @function
n2_match_rpos_bx:
#-----------------------------------------------------------------------------------------------------------------------
n2_match_rpos_α:        mov              r11, 3
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx;                           jne   n1_match_arbno_β
                                                                              jmp   PAT$0_γ
n2_match_rpos_β:        mov              r11, 3;                              jmp   n1_match_arbno_β
                        .size            n2_match_rpos_bx, .-n2_match_rpos_bx
                        .type            n3_match_alternate_bx, @function
n3_match_alternate_bx:
#-----------------------------------------------------------------------------------------------------------------------
n3_match_alternate_α:   mov              r11, 4
                        mov              dword ptr [rbp + -216], r14d
                        lea              rax, [rip + .Lmatch_alternate_α_17_21]
                        mov              qword ptr [rbp + -200], rax;         jmp   n10_match_span_α
.Lmatch_alternate_α_17_21:
                        lea              rax, [rip + .Lmatch_alternate_α_17_19]
                        mov              qword ptr [rbp + -200], rax;         jmp   n5_match_notany_α
.Lmatch_alternate_γ_3_s0:
                        mov              r11, 4
                        lea              rax, [rip + .Lmatch_alternate_α_17_40]
                        mov              qword ptr [rbp + -208], rax;         jmp   .Lmatch_alternate_γ_3_as
.Lmatch_alternate_γ_3_s1:
                        mov              r11, 4
                        lea              rax, [rip + .Lmatch_alternate_α_17_41]
                        mov              qword ptr [rbp + -208], rax;         jmp   .Lmatch_alternate_γ_3_as
.Lmatch_alternate_α_17_40:
                                                                              jmp   n11_match_lit_β
.Lmatch_alternate_α_17_41:
                                                                              jmp   n9_match_span_β
.Lmatch_alternate_γ_3_as:
                        mov              r11, 4;                              jmp   n4_match_span_α
n3_match_alternate_β:   mov              r11, 4
                        mov              rax, qword ptr [rbp + -208];         jmp   rax
.Lmatch_alternate_γ_3_af:
                        mov              r11, 4
.Lmatch_alternate_ω_3_af:
                        mov              r11, 4
                        mov              r14d, dword ptr [rbp + -216]
                        mov              rax, qword ptr [rbp + -200];         jmp   rax
.Lmatch_alternate_α_17_19:
                                                                              jmp   .Lmatch_arbno_ω_1_af
                        .size            n3_match_alternate_bx, .-n3_match_alternate_bx
                        .type            n4_match_span_bx, @function
n4_match_span_bx:
#-----------------------------------------------------------------------------------------------------------------------
n4_match_span_α:        sub              rsp, 16
                        mov              r11, 5
                        movsxd           rcx, r14d
.Lmatch_span_α_19_0:    cmp              ecx, r15d;                           jge   .Lmatch_span_α_19_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 32;                             je    .Lmatch_span_α_19_10
                        cmp              esi, 10;                             je    .Lmatch_span_α_19_10
                                                                              jmp   .Lmatch_span_α_19_1
.Lmatch_span_α_19_10:   add              ecx, 1;                              jmp   .Lmatch_span_α_19_0
.Lmatch_span_α_19_1:    cmp              ecx, r14d;                           jg    .Lmatch_span_α_19_240
                        add              rsp, 16;                             jmp   n3_match_alternate_β
.Lmatch_span_α_19_240:  mov              dword ptr [rbp + -172], r14d
                        mov              r14d, ecx;                           jmp   .Lmatch_arbno_γ_1_as
n4_match_span_β:        mov              r11, 5
                        mov              r14d, dword ptr [rbp + -172]
                        add              rsp, 16;                             jmp   n3_match_alternate_β
                        .size            n4_match_span_bx, .-n4_match_span_bx
                        .type            n5_match_notany_bx, @function
n5_match_notany_bx:
#-----------------------------------------------------------------------------------------------------------------------
n5_match_notany_α:      mov              r11, 6
                        mov              eax, r14d
                        cmp              eax, r15d;                           jge   .Lmatch_alternate_ω_3_af
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 95;                             je    .Lmatch_alternate_ω_3_af
                        add              r14d, 1;                             jmp   n6_match_break_α
n5_match_notany_β:      mov              r11, 6
                        sub              r14d, 1;                             jmp   .Lmatch_alternate_ω_3_af
                        .size            n5_match_notany_bx, .-n5_match_notany_bx
                        .type            n6_match_break_bx, @function
n6_match_break_bx:
#-----------------------------------------------------------------------------------------------------------------------
n6_match_break_α:       mov              r11, 7
                        movsxd           rcx, r14d
.Lmatch_break_α_22_0:   cmp              ecx, r15d;                           jge   n5_match_notany_β
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 95;                             je    .Lmatch_break_α_22_1
                        add              ecx, 1;                              jmp   .Lmatch_break_α_22_0
.Lmatch_break_α_22_1:   mov              dword ptr [rbp + -112], r14d
                        mov              r14d, ecx;                           jmp   n7_match_lit_α
n6_match_break_β:       mov              r11, 7
                        mov              r14d, dword ptr [rbp + -112];        jmp   n5_match_notany_β
                        .size            n6_match_break_bx, .-n6_match_break_bx
                        .type            n7_match_lit_bx, @function
n7_match_lit_bx:
#-----------------------------------------------------------------------------------------------------------------------
n7_match_lit_α:         mov              r11, 8
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n6_match_break_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 95;                             jne   n6_match_break_β
                        add              r14d, 1;                             jmp   n8_match_any_α
n7_match_lit_β:         mov              r11, 8
                        sub              r14d, 1;                             jmp   n6_match_break_β
                        .size            n7_match_lit_bx, .-n7_match_lit_bx
                        .type            n8_match_any_bx, @function
n8_match_any_bx:
#-----------------------------------------------------------------------------------------------------------------------
n8_match_any_α:         mov              r11, 9
                        mov              eax, r14d
                        cmp              eax, r15d;                           jge   n7_match_lit_β
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .C0]
                        cmp              byte ptr [rdi+rsi], 0;               je    n7_match_lit_β
                        add              r14d, 1;                             jmp   n9_match_span_α
n8_match_any_β:         mov              r11, 9
                        sub              r14d, 1;                             jmp   n7_match_lit_β
                        .size            n8_match_any_bx, .-n8_match_any_bx
                        .type            n9_match_span_bx, @function
n9_match_span_bx:
#-----------------------------------------------------------------------------------------------------------------------
n9_match_span_α:        mov              r11, 10
                        lea              rdi, [rip + .C1]
                        movsxd           rcx, r14d
.Lmatch_span_α_28_0:    cmp              ecx, r15d;                           jge   .Lmatch_span_α_28_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0;               je    .Lmatch_span_α_28_1
                        add              ecx, 1;                              jmp   .Lmatch_span_α_28_0
.Lmatch_span_α_28_1:    cmp              ecx, r14d;                           jle   n8_match_any_β
                        mov              dword ptr [rbp + -140], r14d
                        mov              r14d, ecx;                           jmp   .Lmatch_alternate_γ_3_s1
n9_match_span_β:        mov              r11, 10
                        mov              r14d, dword ptr [rbp + -140];        jmp   n8_match_any_β
                        .size            n9_match_span_bx, .-n9_match_span_bx
                        .type            n10_match_span_bx, @function
n10_match_span_bx:
#-----------------------------------------------------------------------------------------------------------------------
n10_match_span_α:       mov              r11, 11
                        lea              rdi, [rip + .C2]
                        movsxd           rcx, r14d
.Lmatch_span_α_30_0:    cmp              ecx, r15d;                           jge   .Lmatch_span_α_30_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0;               je    .Lmatch_span_α_30_1
                        add              ecx, 1;                              jmp   .Lmatch_span_α_30_0
.Lmatch_span_α_30_1:    cmp              ecx, r14d;                           jle   .Lmatch_alternate_ω_3_af
                        mov              dword ptr [rbp + -76], r14d
                        mov              r14d, ecx;                           jmp   n11_match_lit_α
n10_match_span_β:       mov              r11, 11
                        mov              r14d, dword ptr [rbp + -76];         jmp   .Lmatch_alternate_ω_3_af
                        .size            n10_match_span_bx, .-n10_match_span_bx
                        .type            n11_match_lit_bx, @function
n11_match_lit_bx:
#-----------------------------------------------------------------------------------------------------------------------
n11_match_lit_α:        mov              r11, 12
                        mov              eax, r14d
                        add              eax, 10
                        cmp              eax, r15d;                           jg    n10_match_span_β
                        movsxd           rcx, r14d
                        mov              rdx, qword ptr [r13+rcx]
                        movabs           rax, 5791411556081353567
                        cmp              rdx, rax;                            jne   n10_match_span_β
                        movzx            eax, byte ptr [r13+rcx+8]
                        cmp              eax, 85;                             jne   n10_match_span_β
                        movzx            eax, byte ptr [r13+rcx+9]
                        cmp              eax, 78;                             jne   n10_match_span_β
                        add              r14d, 10;                            jmp   .Lmatch_alternate_γ_3_s0
n11_match_lit_β:        mov              r11, 12
                        sub              r14d, 10;                            jmp   n10_match_span_β
                        .size            n11_match_lit_bx, .-n11_match_lit_bx
#-----------------------------------------------------------------------------------------------------------------------
PAT$0_res:
                        mov              rbp, qword ptr [rsp + 24]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
PAT$0_β:
                                                                              jmp   n2_match_rpos_β
#-----------------------------------------------------------------------------------------------------------------------
PAT$0_γ:
                        mov              rcx, qword ptr [rbp + -16]
                        push             rbp
                        push             rcx
                        mov              rcx, qword ptr [rbp + -8]
                        push             rcx
                        lea              rax, [rip + PAT$0_res]
                        push             rax
                        mov              rbp, qword ptr [rbp + 0];            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
PAT$0_ω:
                        mov              r12, qword ptr [rbp + -32]
                        mov              rsp, rbp
                        pop              rbp
                        add              rsp, 8
                        ret
#-----------------------------------------------------------------------------------------------------------------------
.Lgcmap_PAT$0:
                        .quad            997778869594
                        .quad            17179869208
                        .quad            .Lgcmap_PAT$0_s
                        .quad            232
                        .quad            25
                        .quad            8804682956584
                        .quad            8813272891184
                        .quad            8813272891192
                        .quad            8804682956608
                        .quad            8804682956616
                        .quad            17600775978832
                        .quad            8808977923936
                        .quad            8804682956648
                        .quad            17600775978864
                        .quad            8808977923968
                        .quad            8804682956680
                        .quad            17600775978896
                        .quad            8808977924000
                        .quad            8804682956712
                        .quad            17600775978928
                        .quad            8808977924032
                        .quad            8804682956744
                        .quad            17600775978960
                        .quad            8804682956768
                        .quad            8808977924072
                        .quad            8813272891376
                        .quad            8813272891384
                        .quad            8800387989504
                        .quad            8808977924104
                        .quad            8808977924112
.Lgcmap_PAT$0_s:        .string          "PAT$0"
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
                        mov              edi, 2
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 2
                        call             gva_register@PLT
                        lea              rdi, [rip + __label_names]
                        mov              esi, 2
                        call             rt_label_table_install@PLT
                        lea              rdi, [rip + __gc_frame_maps]
                        call             rt_gc_frame_maps_install_counted@PLT
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
                        xor              esi, esi
                        xor              r14d, r14d
                        lea              rax, [rip + .Llevel_zero_return]
                        push             rax
                        push             rax
                                                                              jmp   main_α
.Llevel_zero_return:    call             rt_kw_return_level_zero@PLT
                        ud2
                        .section         .rodata
.Lgvan0:                .string          "claws"
.Lgvan1:                .string          "src"
                        .align           8
__gva_names:
                        .quad            .Lgvan0
                        .quad            .Lgvan1
                        .section         .text
                        .intel_syntax    noprefix
                        .section         .rodata
.Llbln0:                .string          "error"
.Llbln1:                .string          "END"
                        .align           8
__label_names:
                        .quad            .Llbln0
                        .quad            .Llbln1
                        .section         .text
                        .intel_syntax    noprefix
#-----------------------------------------------------------------------------------------------------------------------
main_α:
                        lea              rax, [rip + .Lgcmap_main]
                        mov              qword ptr [rsp + 520], rax
                        mov              dword ptr [rsp + 512], 160
                        mov              dword ptr [rsp + 516], 528
                        mov              eax, 0
main_α_body:
                        sub              rsp, 0
                        .type            n33_call_bx, @function
n33_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n33_call_α:             sub              rsp, 16
                        mov              r11, 13
                        lea              rdi, [rsp + 0]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_fp_model_spitbol@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
1:                      cmp              al, 104;                             jne   .Lcall_α_82_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n34_call_α
.Lcall_α_82_240:        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n34_call_α
n33_call_β:             mov              r11, 13
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n34_call_α
                        .size            n33_call_bx, .-n33_call_bx
                        .type            n34_call_bx, @function
n34_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n34_call_α:             sub              rsp, 16
                        mov              r11, 14
                        lea              rdi, [rsp + 0]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_quit_trap_320@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
1:                      cmp              al, 104;                             jne   .Lcall_α_83_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n35_line_mark_α
.Lcall_α_83_240:        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 32;                             jmp   n35_line_mark_α
n34_call_β:             mov              r11, 14
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n35_line_mark_α
                        .size            n34_call_bx, .-n34_call_bx
                        .type            n35_line_mark_bx, @function
n35_line_mark_bx:
#=======================================================================================================================
#         &TRIM   =   0
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 1 0
n35_line_mark_α:        sub              rsp, 16
                        mov              r11, 15
                        mov              rax, qword ptr [rip + g_file@GOTPCREL]
                        mov              rcx, qword ptr [rip + .Lline_mark_α_85_0]
                        mov              qword ptr [rax + 0], rcx;            jmp   n36_stmt_mark_α
.Lline_mark_α_85_0:     .quad            .Lline_mark_α_85_0_s
.Lline_mark_α_85_0_s:   .string          "snobol4/claws5/claws5-match.sno"
                        .size            n35_line_mark_bx, .-n35_line_mark_bx
                        .type            n36_stmt_mark_bx, @function
n36_stmt_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n36_stmt_mark_α:        mov              r11, 16
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 1
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 1
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        add              rsp, 16;                             jmp   n37_statement_begin_α
                        .size            n36_stmt_mark_bx, .-n36_stmt_mark_bx
                        .type            n37_statement_begin_bx, @function
n37_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n37_statement_begin_α:  mov              r11, 17;                             jmp   n38_lit_integer_α
n37_statement_begin_β:  mov              r11, 17;                             jmp   n41_stmt_mark_α
                        .size            n37_statement_begin_bx, .-n37_statement_begin_bx
                        .type            n38_lit_integer_bx, @function
n38_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n38_lit_integer_α:      sub              rsp, 16
                        mov              r11, 18
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_90_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n39_kw_assign_snobol4_α
.Llit_integer_α_90_0:   .quad            0
                        .size            n38_lit_integer_bx, .-n38_lit_integer_bx
                        .type            n39_kw_assign_snobol4_bx, @function
n39_kw_assign_snobol4_bx:
#-----------------------------------------------------------------------------------------------------------------------
n39_kw_assign_snobol4_α:
                        sub              rsp, 16
                        mov              r11, 19
                        mov              rdi, qword ptr [rip + .Lkw_assign_snobol4_α_91_0]
                        mov              rsi, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_kw_write_idx@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lkw_assign_snobol4_α_91_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n37_statement_begin_β
.Lkw_assign_snobol4_α_91_240:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_keyword_assign_snobol4.cpp:27
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n40_statement_end_α
.Lkw_assign_snobol4_α_91_0:
                        .quad            1
                        .size            n39_kw_assign_snobol4_bx, .-n39_kw_assign_snobol4_bx
                        .type            n40_statement_end_bx, @function
n40_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n40_statement_end_α:    mov              r11, 20
                        add              rsp, 32;                             jmp   n41_stmt_mark_α
                        .size            n40_statement_end_bx, .-n40_statement_end_bx
                        .type            n41_stmt_mark_bx, @function
n41_stmt_mark_bx:
#=======================================================================================================================
#         claws   =   POS(0)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 2 0
n41_stmt_mark_α:        mov              r11, 21
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 2
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 2
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n42_statement_begin_α
                        .size            n41_stmt_mark_bx, .-n41_stmt_mark_bx
                        .type            n42_statement_begin_bx, @function
n42_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n42_statement_begin_α:  mov              r11, 22;                             jmp   n43_lit_string_α
n42_statement_begin_β:  mov              r11, 22;                             jmp   n47_stmt_mark_α
                        .size            n42_statement_begin_bx, .-n42_statement_begin_bx
                        .type            n43_lit_string_bx, @function
n43_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n43_lit_string_α:       sub              rsp, 16
                        mov              r11, 23
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_98_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n44_call_α
.Llit_string_α_98_0:    .quad            .Llit_string_α_98_0_s
.Llit_string_α_98_0_s:  .string          "PAT$0"
                        .size            n43_lit_string_bx, .-n43_lit_string_bx
                        .type            n44_call_bx, @function
n44_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n44_call_α:             sub              rsp, 16
                        mov              r11, 24
                        sub              rsp, 16
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax
                        .section         .rodata
.Lcall_α_rkfnzd100:     .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd100]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              ecx, 606260
                        call             qword ptr [rip + rt_call_bid_sn4@GOTPCREL]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lcall_α_99_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n42_statement_begin_β
.Lcall_α_99_240:        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:186
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n45_assign_α
n44_call_β:             mov              r11, 24
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n42_statement_begin_β
                        .size            n44_call_bx, .-n44_call_bx
                        .type            n45_assign_bx, @function
n45_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n45_assign_α:           mov              r11, 25
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # claws
                        mov              qword ptr [r9 + 8], rdx;             jmp   n46_statement_end_α
                        .size            n45_assign_bx, .-n45_assign_bx
                        .type            n46_statement_end_bx, @function
n46_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n46_statement_end_α:    mov              r11, 26
                        add              rsp, 32;                             jmp   n47_stmt_mark_α
                        .size            n46_statement_end_bx, .-n46_statement_end_bx
                        .type            n47_stmt_mark_bx, @function
n47_stmt_mark_bx:
#=======================================================================================================================
#         INPUT(.INPUT, 9, '[-f0 -r4194304]')
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 12 0
n47_stmt_mark_α:        mov              r11, 27
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 3
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 12
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n48_statement_begin_α
                        .size            n47_stmt_mark_bx, .-n47_stmt_mark_bx
                        .type            n48_statement_begin_bx, @function
n48_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n48_statement_begin_α:  mov              r11, 28;                             jmp   n49_lit_name_α
n48_statement_begin_β:  mov              r11, 28;                             jmp   n54_stmt_mark_α
                        .size            n48_statement_begin_bx, .-n48_statement_begin_bx
                        .type            n49_lit_name_bx, @function
n49_lit_name_bx:
#-----------------------------------------------------------------------------------------------------------------------
n49_lit_name_α:         sub              rsp, 16
                        mov              r11, 29
                        mov              qword ptr [rsp + 0], 40              # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Llit_name_α_108_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n50_lit_integer_α
.Llit_name_α_108_0:     .quad            .Llit_name_α_108_0_s
.Llit_name_α_108_0_s:   .string          "INPUT"
                        .size            n49_lit_name_bx, .-n49_lit_name_bx
                        .type            n50_lit_integer_bx, @function
n50_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n50_lit_integer_α:      sub              rsp, 16
                        mov              r11, 30
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_109_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n51_lit_string_α
n50_lit_integer_β:      mov              r11, 30
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n48_statement_begin_β
.Llit_integer_α_109_0:  .quad            9
                        .size            n50_lit_integer_bx, .-n50_lit_integer_bx
                        .type            n51_lit_string_bx, @function
n51_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n51_lit_string_α:       sub              rsp, 16
                        mov              r11, 31
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 15
                        mov              rax, qword ptr [rip + .Llit_string_α_110_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n52_call_α
n51_lit_string_β:       mov              r11, 31
                        add              rsp, 16;                             jmp   n50_lit_integer_β
.Llit_string_α_110_0:   .quad            .Llit_string_α_110_0_s
.Llit_string_α_110_0_s: .string          "[-f0 -r4194304]"
                        .size            n51_lit_string_bx, .-n51_lit_string_bx
                        .type            n52_call_bx, @function
n52_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n52_call_α:             sub              rsp, 16
                        mov              r11, 32
                        sub              rsp, 48
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 40], rax
                        .section         .rodata
.Lcall_α_bynamefnzd32:  .string          "INPUT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_bynamefnzd32]
                        lea              rsi, [rsp + 0]
                        mov              edx, 3
                        mov              ecx, 360448
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_bl_sn4@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 48
                        cmp              al, 104;                             jne   .Lcall_α_111_240
                        add              rsp, 16;                             jmp   n51_lit_string_β
.Lcall_α_111_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_call.cpp:336
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n53_statement_end_α
n52_call_β:             mov              r11, 32
                        add              rsp, 16;                             jmp   n51_lit_string_β
                        .size            n52_call_bx, .-n52_call_bx
                        .type            n53_statement_end_bx, @function
n53_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n53_statement_end_α:    mov              r11, 33
                        add              rsp, 64;                             jmp   n54_stmt_mark_α
                        .size            n53_statement_end_bx, .-n53_statement_end_bx
                        .type            n54_stmt_mark_bx, @function
n54_stmt_mark_bx:
#=======================================================================================================================
#         src     =   INPUT  :F(error)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 13 0
n54_stmt_mark_α:        mov              r11, 34
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 4
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 13
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n55_statement_begin_α
                        .size            n54_stmt_mark_bx, .-n54_stmt_mark_bx
                        .type            n55_statement_begin_bx, @function
n55_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n55_statement_begin_α:  mov              r11, 35;                             jmp   n56_var_α
n55_statement_begin_β:  mov              r11, 35;                             jmp   n60_stmt_mark_α
                        .size            n55_statement_begin_bx, .-n55_statement_begin_bx
                        .type            n56_var_bx, @function
n56_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n56_var_α:              sub              rsp, 16
                        mov              r11, 36
                        mov              rdi, qword ptr [rip + .Lvar_α_118_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_GET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lvar_α_118_240
                        add              rsp, 16;                             jmp   n55_statement_begin_β
.Lvar_α_118_240:        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_var_global.cpp:69
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n57_assign_α
.Lvar_α_118_0:          .quad            .Lvar_α_118_0_s
.Lvar_α_118_0_s:        .string          "INPUT"
                        .size            n56_var_bx, .-n56_var_bx
                        .type            n57_assign_bx, @function
n57_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n57_assign_α:           mov              r11, 37
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 16], rax             # src
                        mov              qword ptr [r9 + 24], rdx;            jmp   n58_statement_end_α
                        .size            n57_assign_bx, .-n57_assign_bx
                        .type            n58_statement_end_bx, @function
n58_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n58_statement_end_α:    mov              r11, 38
                        add              rsp, 16;                             jmp   n59_stmt_mark_α
                        .size            n58_statement_end_bx, .-n58_statement_end_bx
                        .type            n59_stmt_mark_bx, @function
n59_stmt_mark_bx:
#=======================================================================================================================
#         src     ?   claws  :F(error)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 14 0
n59_stmt_mark_α:        mov              r11, 39
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 5
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 14
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n61_statement_begin_α
                        .size            n59_stmt_mark_bx, .-n59_stmt_mark_bx
                        .type            n60_stmt_mark_bx, @function
n60_stmt_mark_bx:
#=======================================================================================================================
# error   OUTPUT  =   'Pattern match failed'
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 16 0
n60_stmt_mark_α:        mov              r11, 40
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 7
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 16
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n77_statement_begin_α
                        .size            n60_stmt_mark_bx, .-n60_stmt_mark_bx
                        .type            n61_statement_begin_bx, @function
n61_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n61_statement_begin_α:  mov              r11, 41;                             jmp   n62_var_α
n61_statement_begin_β:  mov              r11, 41;                             jmp   n60_stmt_mark_α
                        .size            n61_statement_begin_bx, .-n61_statement_begin_bx
                        .type            n62_var_bx, @function
n62_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n62_var_α:              sub              rsp, 16
                        mov              r11, 42
                        mov              rax, qword ptr [r9 + 16]             # src
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n63_var_α
                        .size            n62_var_bx, .-n62_var_bx
                        .type            n63_var_bx, @function
n63_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n63_var_α:              sub              rsp, 16
                        mov              r11, 43
                        mov              rax, qword ptr [r9 + 0]              # claws
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n64_assign_α
n63_var_β:              mov              r11, 43
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n60_stmt_mark_α
                        .size            n63_var_bx, .-n63_var_bx
                        .type            n64_assign_bx, @function
n64_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n64_assign_α:           mov              r11, 44
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_130_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
1:                                                                            jmp   n65_match_begin_α
n64_assign_β:           mov              r11, 44;                             jmp   n63_var_β
.Lassign_α_130_0:       .quad            .Lassign_α_130_0_s
.Lassign_α_130_0_s:     .string          "PATV$0"
                        .size            n64_assign_bx, .-n64_assign_bx
                        .type            n65_match_begin_bx, @function
n65_match_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n65_match_begin_α:      mov              r11, 45
                        mov              rdi, qword ptr [rsp + 16]            # var
                        mov              rsi, qword ptr [rsp + 24]
                        push             rbp
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
                        push             rax
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
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 8]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      mov              r13, rax
                        mov              r15, rdx
                        mov              qword ptr [r12 + 0], 0               # cas_mark
                        mov              qword ptr [r12 + 8], 0
                        mov              qword ptr [r12 + 16], 0
                        add              r12, 24
                        mov              dword ptr [rbp + -40], 0             # start_δ
.Lmatch_begin_α_132_0:  mov              r14d, dword ptr [rbp + -40]
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # match_beta_cont
                        mov              rax, qword ptr [rcx + 248]
                        mov              qword ptr [rbp + -48], rax
                        lea              rax, [rip + .Lmatch_begin_α_132_13]
                        mov              qword ptr [rcx + 248], rax;          jmp   n66_match_defer_α
n65_match_begin_β:      mov              r11, 45
.Lmatch_begin_α_132_13: lea              rsp, [rbp + -88]                     # retry_whack
                        add              dword ptr [rbp + -40], 1             # start_δ
                        mov              eax, dword ptr [rbp + -40]
                        cmp              eax, r15d;                           jg    .Lmatch_begin_β_132_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lmatch_begin_β_132_1
                                                                              jmp   .Lmatch_begin_α_132_0
.Lmatch_begin_β_132_1:
.Lmatch_begin_γ_65_af:  mov              r11, 45
.Lmatch_begin_ω_65_af:  mov              r11, 45
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # mbc_restore
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
                        mov              qword ptr [rbp + -16], rax           # outer_Σ
                        mov              r13, qword ptr [rbp + -16]
                        mov              rsp, rbp
                        pop              rbp;                                 jmp   n64_assign_β
                        .size            n65_match_begin_bx, .-n65_match_begin_bx
                        .type            n66_match_defer_bx, @function
n66_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n66_match_defer_α:      mov              r11, 46
                        lea              rcx, [rip + g_sno_defer_cells+16384]
                        mov              rax, qword ptr [rcx + 0]
                        lea              rdx, [rip + .S0]
                        cmp              rax, rdx;                            jne   .Lmatch_defer_α_133_22
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lmatch_defer_α_133_22
                        mov              edx, dword ptr [rax + 0]
                        and              edx, 255
                        cmp              edx, 2;                              je    .Lmatch_defer_α_133_32
                        cmp              edx, 8;                              jne   .Lmatch_defer_α_133_22
                        mov              rdx, qword ptr [rax + 8]
                        test             rdx, rdx;                            je    .Lmatch_defer_α_133_22
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_133_23
                                                                              jmp   .Lmatch_defer_α_133_22
.Lmatch_defer_α_133_32: mov              edx, dword ptr [rax + 4]
                        cmp              edx, 1;                              jne   .Lmatch_defer_α_133_22
                        movsxd           rcx, r14d
                        cmp              ecx, r15d;                           jge   .Lmatch_defer_α_133_31
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rax + 8]
                        xor              edx, edx
                        movzx            edi, byte ptr [rdi + rdx]
                        cmp              esi, edi;                            jne   .Lmatch_defer_α_133_31
                        mov              edx, r14d
                        add              edx, 1;                              jmp   .Lmatch_defer_α_133_0
.Lmatch_defer_α_133_31: mov              edx, -1;                             jmp   .Lmatch_defer_α_133_0
.Lmatch_defer_α_133_22: sub              rsp, 32
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], r14
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        lea              rdi, [rip + .S0]
                        mov              esi, r14d
                        mov              rdx, 0
                        mov              qword ptr [1879048192], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_probe_run@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
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
                        test             rax, rax;                            je    .Lmatch_defer_α_133_50
                        mov              dword ptr [rsp + 32], 8
.Lmatch_defer_α_133_50: lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                      mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        add              rsp, 32
.Lmatch_defer_α_133_23: test             rax, rax;                            jz    .Lmatch_defer_α_133_0
.Lmatch_defer_α_133_48: mov              r8d, 1
                        lea              rcx, [rip + .Lmatch_defer_α_133_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_133_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_133_4:                                                        jmp   n67_match_end_α
.Lmatch_defer_α_133_5:  cmp              r14d, -2;                            je    .Lmatch_begin_ω_65_af
                                                                              jmp   n65_match_begin_β
.Lmatch_defer_α_133_0:  mov              eax, edx
                        cmp              eax, -2;                             jne   .Lmatch_defer_α_133_49
                        sub              rsp, 32
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], r14
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        lea              rdi, [rip + .S0]
                        xor              esi, esi
                        mov              qword ptr [1879048192], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_open_entry@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_133_51
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_133_51: lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:
.Lmatch_defer_α_133_2:  test             rax, rax;                            je    .Lmatch_defer_α_133_3
                        cmp              rdx, 4;                              je    .Lmatch_defer_α_133_40
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
                        and              rcx, 255
                        cmp              rcx, 2;                              je    .Lmatch_defer_α_133_41
                        cmp              rcx, 1;                              je    .Lmatch_defer_α_133_141
                        lea              rcx, [rip + .Lmatch_defer_α_133_43]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_133_42]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_133_42]
                        lea              rdx, [rip + .Lmatch_defer_α_133_43]; jmp   rax
.Lmatch_defer_α_133_41: sub              rsp, 48
                        mov              qword ptr [rsp + 0], 0
                        lea              rcx, [rip + .Lmatch_defer_α_133_44]
                        mov              qword ptr [rsp + 8], rcx
                        lea              rcx, [rip + .Lmatch_defer_α_133_45]
                        mov              qword ptr [rsp + 16], rcx
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 16
                        lea              rcx, [rsp + 0];                      jmp   rax
.Lmatch_defer_α_133_44: add              rsp, 48
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_133_46
.Lmatch_defer_α_133_45: add              rsp, 48
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_133_47
.Lmatch_defer_α_133_42: add              rsp, 16
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_133_46
.Lmatch_defer_α_133_43: add              rsp, 16
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_133_47
.Lmatch_defer_α_133_141:
                        lea              rcx, [rip + .Lmatch_defer_α_133_143]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_133_142]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_133_142]
                        lea              rdx, [rip + .Lmatch_defer_α_133_143]
                                                                              jmp   rax
.Lmatch_defer_α_133_142:
                        add              rsp, 0
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_133_46
.Lmatch_defer_α_133_143:
                        add              rsp, 0
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_133_47
.Lmatch_defer_α_133_46: mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_land_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_133_52
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_133_52: lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_133_2
.Lmatch_defer_α_133_47: mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_land_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_133_53
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_133_53: lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_133_2
.Lmatch_defer_α_133_40: mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        add              rsp, 32
                        mov              rdx, rax
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lmatch_defer_α_133_48
.Lmatch_defer_α_133_3:  mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        add              rsp, 32
                        mov              edi, r14d
                        call             qword ptr [rip + rt_defer_close@GOTPCREL]
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
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:
.Lmatch_defer_α_133_49: cmp              r14d, -2;                            je    .Lmatch_begin_ω_65_af
                        test             eax, eax;                            js    n65_match_begin_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_133_6]
                        push             rcx
                        push             rax;                                 jmp   n67_match_end_α
.Lmatch_defer_α_133_6:  add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n65_match_begin_β
n66_match_defer_β:      mov              r11, 46
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_133_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_133_12
                                                                              jmp   rax
.Lmatch_defer_β_133_12:                                                       jmp   qword ptr [rsp]
                        .size            n66_match_defer_bx, .-n66_match_defer_bx
                        .type            n67_match_end_bx, @function
n67_match_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n67_match_end_α:        mov              r11, 47
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # mbc_restore
                        mov              rax, qword ptr [rbp + -48]
                        mov              qword ptr [rcx + 248], rax
                        sub              rsp, 32
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], r14
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              rdi, qword ptr [rbp + -8]            # cas_mark
                        mov              rsi, r12
                        mov              rdx, r13
                        call             qword ptr [rip + rt_dcap_end_ok_open@GOTPCREL]
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
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:
.Lmatch_end_α_135_1:    cmp              rax, 1;                              jbe   .Lmatch_end_α_135_2
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
                        and              rcx, 255
                        cmp              rcx, 2;                              je    .Lmatch_end_α_135_20
                        cmp              rcx, 1;                              je    .Lmatch_end_α_135_120
                        lea              rcx, [rip + .Lmatch_end_α_135_22]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_end_α_135_21]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_end_α_135_21]
                        lea              rdx, [rip + .Lmatch_end_α_135_22];   jmp   rax
.Lmatch_end_α_135_20:   sub              rsp, 48
                        mov              qword ptr [rsp + 0], 0
                        lea              rcx, [rip + .Lmatch_end_α_135_23]
                        mov              qword ptr [rsp + 8], rcx
                        lea              rcx, [rip + .Lmatch_end_α_135_24]
                        mov              qword ptr [rsp + 16], rcx
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 16
                        lea              rcx, [rsp + 0];                      jmp   rax
.Lmatch_end_α_135_23:   add              rsp, 48
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_135_8
.Lmatch_end_α_135_24:   add              rsp, 48
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_135_9
.Lmatch_end_α_135_21:   add              rsp, 16
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_135_8
.Lmatch_end_α_135_22:   add              rsp, 16
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_135_9
.Lmatch_end_α_135_120:  lea              rcx, [rip + .Lmatch_end_α_135_122]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_end_α_135_121]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_end_α_135_121]
                        lea              rdx, [rip + .Lmatch_end_α_135_122];  jmp   rax
.Lmatch_end_α_135_121:  add              rsp, 0
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_135_8
.Lmatch_end_α_135_122:  add              rsp, 0
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_135_9
.Lmatch_end_α_135_8:    mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_dcap_land_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
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
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                                                                            jmp   .Lmatch_end_α_135_1
.Lmatch_end_α_135_9:    mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_dcap_land_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
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
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                                                                            jmp   .Lmatch_end_α_135_1
.Lmatch_end_α_135_2:    mov              qword ptr [rsp + 0], rax
                        call             qword ptr [rip + rt_dcap_end_ok_close@GOTPCREL]
                        mov              rdi, qword ptr [rbp + -16]           # outer_Σ
                        mov              rsi, qword ptr [rbp + -32]           # outer_Δ
                        lea              rdx, [rbp + -88]
                        call             qword ptr [rip + rt_match_ctx_restore@GOTPCREL]
                        mov              qword ptr [rbp + -16], rax           # outer_Σ
                        mov              rax, qword ptr [rsp + 0]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        add              rsp, 32
                        test             rax, rax;                            je    .Lmatch_end_α_135_13
                                                                              jmp   .Lmatch_begin_ω_65_af
.Lmatch_end_α_135_13:   mov              r12, qword ptr [rbp + -8]            # cas_mark
                        mov              qword ptr [1879048192], r12
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              rsp, rbp                             # frame_whack
                        pop              rbp;                                 jmp   n68_statement_end_α
                        .size            n67_match_end_bx, .-n67_match_end_bx
                        .type            n68_statement_end_bx, @function
n68_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n68_statement_end_α:    mov              r11, 48
                        add              rsp, 32;                             jmp   n69_stmt_mark_α
                        .size            n68_statement_end_bx, .-n68_statement_end_bx
                        .type            n69_stmt_mark_bx, @function
n69_stmt_mark_bx:
#=======================================================================================================================
#         OUTPUT  =   'matched bytes=' SIZE(src)  :(END)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 15 0
n69_stmt_mark_α:        mov              r11, 49
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 6
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 15
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n70_statement_begin_α
                        .size            n69_stmt_mark_bx, .-n69_stmt_mark_bx
                        .type            n70_statement_begin_bx, @function
n70_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n70_statement_begin_α:  mov              r11, 50;                             jmp   n71_lit_string_α
n70_statement_begin_β:  mov              r11, 50;                             jmp   main_γ
                        .size            n70_statement_begin_bx, .-n70_statement_begin_bx
                        .type            n71_lit_string_bx, @function
n71_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n71_lit_string_α:       sub              rsp, 16
                        mov              r11, 51
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 14
                        mov              rax, qword ptr [rip + .Llit_string_α_142_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n72_var_α
.Llit_string_α_142_0:   .quad            .Llit_string_α_142_0_s
.Llit_string_α_142_0_s: .string          "matched bytes="
                        .size            n71_lit_string_bx, .-n71_lit_string_bx
                        .type            n72_var_bx, @function
n72_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n72_var_α:              sub              rsp, 16
                        mov              r11, 52
                        mov              rax, qword ptr [r9 + 16]             # src
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n73_call_α
n72_var_β:              mov              r11, 52
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n70_statement_begin_β
                        .size            n72_var_bx, .-n72_var_bx
                        .type            n73_call_bx, @function
n73_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n73_call_α:             sub              rsp, 16
                        mov              r11, 53
                        sub              rsp, 16
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax
                        .section         .rodata
.Lcall_α_rkfnzd145:     .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd145]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              ecx, 311345
                        call             qword ptr [rip + rt_call_bid_sn4@GOTPCREL]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lcall_α_144_240
                        add              rsp, 16;                             jmp   n72_var_β
.Lcall_α_144_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:186
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n74_binop_α
n73_call_β:             mov              r11, 53
                        add              rsp, 16;                             jmp   n72_var_β
                        .size            n73_call_bx, .-n73_call_bx
                        .type            n74_binop_bx, @function
n74_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n74_binop_α:            sub              rsp, 16
                        mov              r11, 54
                        mov              rdi, qword ptr [rsp + 48]            # lit_string
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 16]            # call
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + str_concat_d@GOTPCREL]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_concat_slot.cpp:66
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n75_assign_α
n74_binop_β:            mov              r11, 54
                        add              rsp, 32;                             jmp   n72_var_β
                        .size            n74_binop_bx, .-n74_binop_bx
                        .type            n75_assign_bx, @function
n75_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n75_assign_α:           mov              r11, 55
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_147_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
1:                                                                            jmp   n76_statement_end_α
.Lassign_α_147_0:       .quad            .Lassign_α_147_0_s
.Lassign_α_147_0_s:     .string          "OUTPUT"
                        .size            n75_assign_bx, .-n75_assign_bx
                        .type            n76_statement_end_bx, @function
n76_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n76_statement_end_α:    mov              r11, 56
                        add              rsp, 64;                             jmp   main_γ
                        .size            n76_statement_end_bx, .-n76_statement_end_bx
                        .type            n77_statement_begin_bx, @function
n77_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n77_statement_begin_α:  mov              r11, 57;                             jmp   n78_lit_string_α
n77_statement_begin_β:  mov              r11, 57;                             jmp   main_γ
                        .size            n77_statement_begin_bx, .-n77_statement_begin_bx
                        .type            n78_lit_string_bx, @function
n78_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n78_lit_string_α:       sub              rsp, 16
                        mov              r11, 58
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 20
                        mov              rax, qword ptr [rip + .Llit_string_α_152_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n79_assign_α
.Llit_string_α_152_0:   .quad            .Llit_string_α_152_0_s
.Llit_string_α_152_0_s: .string          "Pattern match failed"
                        .size            n78_lit_string_bx, .-n78_lit_string_bx
                        .type            n79_assign_bx, @function
n79_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n79_assign_α:           mov              r11, 59
                        mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_153_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
1:                                                                            jmp   n80_statement_end_α
.Lassign_α_153_0:       .quad            .Lassign_α_153_0_s
.Lassign_α_153_0_s:     .string          "OUTPUT"
                        .size            n79_assign_bx, .-n79_assign_bx
                        .type            n80_statement_end_bx, @function
n80_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n80_statement_end_α:    mov              r11, 60
                        add              rsp, 16;                             jmp   main_γ
                        .size            n80_statement_end_bx, .-n80_statement_end_bx
                        .type            n81_goto_bx, @function
n81_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n81_goto_α:             mov              r11, 61;                             jmp   n60_stmt_mark_α
n81_goto_β:             mov              r11, 61;                             jmp   main_ω
                        .size            n81_goto_bx, .-n81_goto_bx
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        add              rsp, 0
                        call             sno_setexit_fire_on_end@PLT
                        push             rax                                  # gc_poll bb_glue_flat.cpp:48
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        add              rsp, 0
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
.Lgcmap_main:
                        .quad            2269089189210
                        .quad            38654705664
                        .quad            .Lgcmap_main_s
                        .quad            512
                        .quad            5
                        .quad            263882790666240
                        .quad            8800387989744
                        .quad            17600775979256
                        .quad            79169132167432
                        .quad            193514046488912
.Lgcmap_main_s:         .string          "main"
module_init:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "PAT$0"
                        .align           8
.Lstartup_prec0:
                        .quad            .Lstartup_pname0
                        .quad            FN__PAT$0
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            224
                        .long            18
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec0]
                        call             rt_proc_register_rec@PLT
                        add              rsp, 8
                        ret
                        .section         .rodata
                        .align           8
__gc_frame_maps:        .quad            2
                        .quad            .Lgcmap_PAT$0
                        .quad            .Lgcmap_main
                        .section         .text
                        .intel_syntax    noprefix
                        .section         .rodata
.S0:                    .string          "PATV$0"
                        .text
                        .section         .rodata
.C0:                    .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
                        .byte            1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
.C1:                    .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0
                        .byte            0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
                        .byte            1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
.C2:                    .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .text
                        .section         .note.GNU-stack,"",@progbits
