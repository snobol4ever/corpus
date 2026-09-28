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
                        sub              rsp, 160
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
                        sub              rsp, 160
                        mov              eax, dword ptr [rcx + 0]
                        mov              dword ptr [rsp + 0], eax
                        mov              dword ptr [rsp + 4], r14d
                        mov              qword ptr [rsp + 8], r12
                        mov              qword ptr [rsp + 16], rcx
                        mov              rax, qword ptr [rbp + -176]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rbp + -168]
                        mov              qword ptr [rsp + 40], rax
                        mov              rax, qword ptr [rbp + -160]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rbp + -152]
                        mov              qword ptr [rsp + 56], rax
                        mov              rax, qword ptr [rbp + -144]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rbp + -136]
                        mov              qword ptr [rsp + 72], rax
                        mov              rax, qword ptr [rbp + -128]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rbp + -120]
                        mov              qword ptr [rsp + 88], rax
                        mov              rax, qword ptr [rbp + -112]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rbp + -104]
                        mov              qword ptr [rsp + 104], rax
                        mov              rax, qword ptr [rbp + -96]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rbp + -88]
                        mov              qword ptr [rsp + 120], rax
                        mov              rax, qword ptr [rbp + -80]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rbp + -72]
                        mov              qword ptr [rsp + 136], rax
                        mov              rax, qword ptr [rbp + -64]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rbp + -56]
                        mov              qword ptr [rsp + 152], rax
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
                        mov              qword ptr [rbp + -176], rax
                        mov              rax, qword ptr [rcx + 40]
                        mov              qword ptr [rbp + -168], rax
                        mov              rax, qword ptr [rcx + 48]
                        mov              qword ptr [rbp + -160], rax
                        mov              rax, qword ptr [rcx + 56]
                        mov              qword ptr [rbp + -152], rax
                        mov              rax, qword ptr [rcx + 64]
                        mov              qword ptr [rbp + -144], rax
                        mov              rax, qword ptr [rcx + 72]
                        mov              qword ptr [rbp + -136], rax
                        mov              rax, qword ptr [rcx + 80]
                        mov              qword ptr [rbp + -128], rax
                        mov              rax, qword ptr [rcx + 88]
                        mov              qword ptr [rbp + -120], rax
                        mov              rax, qword ptr [rcx + 96]
                        mov              qword ptr [rbp + -112], rax
                        mov              rax, qword ptr [rcx + 104]
                        mov              qword ptr [rbp + -104], rax
                        mov              rax, qword ptr [rcx + 112]
                        mov              qword ptr [rbp + -96], rax
                        mov              rax, qword ptr [rcx + 120]
                        mov              qword ptr [rbp + -88], rax
                        mov              rax, qword ptr [rcx + 128]
                        mov              qword ptr [rbp + -80], rax
                        mov              rax, qword ptr [rcx + 136]
                        mov              qword ptr [rbp + -72], rax
                        mov              rax, qword ptr [rcx + 144]
                        mov              qword ptr [rbp + -64], rax
                        mov              rax, qword ptr [rcx + 152]
                        mov              qword ptr [rbp + -56], rax
                        lea              rsp, [rcx + 160];                    jmp   n4_match_span_β
.Lmatch_arbno_β_14_3:   lea              rsp, [rcx + 160];                    jmp   n0_match_pos_β
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
                        mov              qword ptr [rsp + 728], rax
                        mov              dword ptr [rsp + 720], 160
                        mov              dword ptr [rsp + 724], 736
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
1:                      cmp              al, 104;                             jne   .Lcall_α_94_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n34_call_α
.Lcall_α_94_240:        mov              qword ptr [rsp + 0], rax             # result
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
1:                      cmp              al, 104;                             jne   .Lcall_α_95_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n35_lit_integer_α
.Lcall_α_95_240:        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 32;                             jmp   n35_lit_integer_α
n34_call_β:             mov              r11, 14
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n35_lit_integer_α
                        .size            n34_call_bx, .-n34_call_bx
                        .type            n35_lit_integer_bx, @function
n35_lit_integer_bx:
#=======================================================================================================================
#         &TRIM   =   0
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 1 0
n35_lit_integer_α:      sub              rsp, 16
                        mov              r11, 15
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_96_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n36_lit_integer_α
n35_lit_integer_β:      mov              r11, 15
                        add              rsp, 16
                        add              rsp, -48;                            jmp   n38_call_α
.Llit_integer_α_96_0:   .quad            18446744073709551615
                        .size            n35_lit_integer_bx, .-n35_lit_integer_bx
                        .type            n36_lit_integer_bx, @function
n36_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n36_lit_integer_α:      sub              rsp, 16
                        mov              r11, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_97_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n37_lit_string_α
n36_lit_integer_β:      mov              r11, 16
                        add              rsp, 16
                        add              rsp, -32;                            jmp   n38_call_α
.Llit_integer_α_97_0:   .quad            0
                        .size            n36_lit_integer_bx, .-n36_lit_integer_bx
                        .type            n37_lit_string_bx, @function
n37_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n37_lit_string_α:       sub              rsp, 16
                        mov              r11, 17
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 31
                        mov              rax, qword ptr [rip + .Llit_string_α_98_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n38_call_α
n37_lit_string_β:       mov              r11, 17
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n38_call_α
.Llit_string_α_98_0:    .quad            .Llit_string_α_98_0_s
.Llit_string_α_98_0_s:  .string          "snobol4/claws5/claws5-match.sno"
                        .size            n37_lit_string_bx, .-n37_lit_string_bx
                        .type            n38_call_bx, @function
n38_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n38_call_α:             sub              rsp, 16
                        mov              r11, 18
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
.Lcall_α_rkfnzd100:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd100]
                        lea              rsi, [rsp + 0]
                        mov              edx, 3
                        mov              ecx, 524352
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 48
                        cmp              al, 104;                             jne   .Lcall_α_99_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n39_stmt_mark_α
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
1:                                                                            jmp   n39_stmt_mark_α
n38_call_β:             mov              r11, 18
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n39_stmt_mark_α
                        .size            n38_call_bx, .-n38_call_bx
                        .type            n39_stmt_mark_bx, @function
n39_stmt_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n39_stmt_mark_α:        mov              r11, 19
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
                        add              rsp, 64;                             jmp   n40_statement_begin_α
n39_stmt_mark_β:        mov              r11, 19
                        add              rsp, 64;                             jmp   n40_statement_begin_α
                        .size            n39_stmt_mark_bx, .-n39_stmt_mark_bx
                        .type            n40_statement_begin_bx, @function
n40_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n40_statement_begin_α:  mov              r11, 20;                             jmp   n41_lit_integer_α
n40_statement_begin_β:  mov              r11, 20;                             jmp   n44_stmt_mark_α
                        .size            n40_statement_begin_bx, .-n40_statement_begin_bx
                        .type            n41_lit_integer_bx, @function
n41_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n41_lit_integer_α:      sub              rsp, 16
                        mov              r11, 21
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_105_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n42_kw_assign_snobol4_α
n41_lit_integer_β:      mov              r11, 21
                        add              rsp, 16;                             jmp   n40_statement_begin_β
.Llit_integer_α_105_0:  .quad            0
                        .size            n41_lit_integer_bx, .-n41_lit_integer_bx
                        .type            n42_kw_assign_snobol4_bx, @function
n42_kw_assign_snobol4_bx:
#-----------------------------------------------------------------------------------------------------------------------
n42_kw_assign_snobol4_α:
                        sub              rsp, 16
                        mov              r11, 22
                        mov              rdi, qword ptr [rip + .Lkw_assign_snobol4_α_106_0]
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
                        cmp              al, 104;                             jne   .Lkw_assign_snobol4_α_106_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n40_statement_begin_β
.Lkw_assign_snobol4_α_106_240:
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
1:                                                                            jmp   n43_statement_end_α
n42_kw_assign_snobol4_β:
                        mov              r11, 22
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n40_statement_begin_β
.Lkw_assign_snobol4_α_106_0:
                        .quad            1
                        .size            n42_kw_assign_snobol4_bx, .-n42_kw_assign_snobol4_bx
                        .type            n43_statement_end_bx, @function
n43_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n43_statement_end_α:    mov              r11, 23
                        add              rsp, 32;                             jmp   n44_stmt_mark_α
n43_statement_end_β:    mov              r11, 23
                        add              rsp, 32;                             jmp   n44_stmt_mark_α
                        .size            n43_statement_end_bx, .-n43_statement_end_bx
                        .type            n44_stmt_mark_bx, @function
n44_stmt_mark_bx:
#=======================================================================================================================
#         claws   =   POS(0)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 2 0
n44_stmt_mark_α:        mov              r11, 24
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 2
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 2
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n45_statement_begin_α
n44_stmt_mark_β:        mov              r11, 24;                             jmp   n45_statement_begin_α
                        .size            n44_stmt_mark_bx, .-n44_stmt_mark_bx
                        .type            n45_statement_begin_bx, @function
n45_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n45_statement_begin_α:  mov              r11, 25;                             jmp   n46_lit_string_α
n45_statement_begin_β:  mov              r11, 25;                             jmp   n50_stmt_mark_α
                        .size            n45_statement_begin_bx, .-n45_statement_begin_bx
                        .type            n46_lit_string_bx, @function
n46_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n46_lit_string_α:       sub              rsp, 16
                        mov              r11, 26
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_113_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n47_call_α
n46_lit_string_β:       mov              r11, 26
                        add              rsp, 16;                             jmp   n45_statement_begin_β
.Llit_string_α_113_0:   .quad            .Llit_string_α_113_0_s
.Llit_string_α_113_0_s: .string          "PAT$0"
                        .size            n46_lit_string_bx, .-n46_lit_string_bx
                        .type            n47_call_bx, @function
n47_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n47_call_α:             sub              rsp, 16
                        mov              r11, 27
                        sub              rsp, 16
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax
                        .section         .rodata
.Lcall_α_rkfnzd115:     .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd115]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              ecx, 606260
                        call             qword ptr [rip + rt_call_bid_sn4@GOTPCREL]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lcall_α_114_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n45_statement_begin_β
.Lcall_α_114_240:       mov              qword ptr [rsp + 0], rax             # result
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
1:                                                                            jmp   n48_assign_α
n47_call_β:             mov              r11, 27
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n45_statement_begin_β
                        .size            n47_call_bx, .-n47_call_bx
                        .type            n48_assign_bx, @function
n48_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n48_assign_α:           mov              r11, 28
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # claws
                        mov              qword ptr [r9 + 8], rdx;             jmp   n49_statement_end_α
n48_assign_β:           mov              r11, 28
                        add              rsp, 32;                             jmp   n45_statement_begin_β
                        .size            n48_assign_bx, .-n48_assign_bx
                        .type            n49_statement_end_bx, @function
n49_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n49_statement_end_α:    mov              r11, 29
                        add              rsp, 32;                             jmp   n50_stmt_mark_α
n49_statement_end_β:    mov              r11, 29
                        add              rsp, 32;                             jmp   n50_stmt_mark_α
                        .size            n49_statement_end_bx, .-n49_statement_end_bx
                        .type            n50_stmt_mark_bx, @function
n50_stmt_mark_bx:
#=======================================================================================================================
#         INPUT(.INPUT, 9, '[-f0 -r4194304]')
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 12 0
n50_stmt_mark_α:        mov              r11, 30
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 3
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 12
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n51_statement_begin_α
n50_stmt_mark_β:        mov              r11, 30;                             jmp   n51_statement_begin_α
                        .size            n50_stmt_mark_bx, .-n50_stmt_mark_bx
                        .type            n51_statement_begin_bx, @function
n51_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n51_statement_begin_α:  mov              r11, 31;                             jmp   n52_lit_name_α
n51_statement_begin_β:  mov              r11, 31;                             jmp   n57_stmt_mark_α
                        .size            n51_statement_begin_bx, .-n51_statement_begin_bx
                        .type            n52_lit_name_bx, @function
n52_lit_name_bx:
#-----------------------------------------------------------------------------------------------------------------------
n52_lit_name_α:         sub              rsp, 16
                        mov              r11, 32
                        mov              qword ptr [rsp + 0], 40              # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Llit_name_α_123_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n53_lit_integer_α
n52_lit_name_β:         mov              r11, 32
                        add              rsp, 16;                             jmp   n51_statement_begin_β
.Llit_name_α_123_0:     .quad            .Llit_name_α_123_0_s
.Llit_name_α_123_0_s:   .string          "INPUT"
                        .size            n52_lit_name_bx, .-n52_lit_name_bx
                        .type            n53_lit_integer_bx, @function
n53_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n53_lit_integer_α:      sub              rsp, 16
                        mov              r11, 33
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_124_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n54_lit_string_α
n53_lit_integer_β:      mov              r11, 33
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n51_statement_begin_β
.Llit_integer_α_124_0:  .quad            9
                        .size            n53_lit_integer_bx, .-n53_lit_integer_bx
                        .type            n54_lit_string_bx, @function
n54_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n54_lit_string_α:       sub              rsp, 16
                        mov              r11, 34
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 15
                        mov              rax, qword ptr [rip + .Llit_string_α_125_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n55_call_α
n54_lit_string_β:       mov              r11, 34
                        add              rsp, 16;                             jmp   n53_lit_integer_β
.Llit_string_α_125_0:   .quad            .Llit_string_α_125_0_s
.Llit_string_α_125_0_s: .string          "[-f0 -r4194304]"
                        .size            n54_lit_string_bx, .-n54_lit_string_bx
                        .type            n55_call_bx, @function
n55_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n55_call_α:             sub              rsp, 16
                        mov              r11, 35
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
.Lcall_α_bynamefnzd35:  .string          "INPUT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_bynamefnzd35]
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
                        cmp              al, 104;                             jne   .Lcall_α_126_240
                        add              rsp, 16;                             jmp   n54_lit_string_β
.Lcall_α_126_240:       mov              qword ptr [rsp + 0], rax             # result
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
1:                                                                            jmp   n56_statement_end_α
n55_call_β:             mov              r11, 35
                        add              rsp, 16;                             jmp   n54_lit_string_β
                        .size            n55_call_bx, .-n55_call_bx
                        .type            n56_statement_end_bx, @function
n56_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n56_statement_end_α:    mov              r11, 36
                        add              rsp, 64;                             jmp   n57_stmt_mark_α
n56_statement_end_β:    mov              r11, 36
                        add              rsp, 64;                             jmp   n57_stmt_mark_α
                        .size            n56_statement_end_bx, .-n56_statement_end_bx
                        .type            n57_stmt_mark_bx, @function
n57_stmt_mark_bx:
#=======================================================================================================================
#         src     =   INPUT  :F(error)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 13 0
n57_stmt_mark_α:        mov              r11, 37
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 4
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 13
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n58_statement_begin_α
n57_stmt_mark_β:        mov              r11, 37;                             jmp   n58_statement_begin_α
                        .size            n57_stmt_mark_bx, .-n57_stmt_mark_bx
                        .type            n58_statement_begin_bx, @function
n58_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n58_statement_begin_α:  mov              r11, 38;                             jmp   n59_var_α
n58_statement_begin_β:  mov              r11, 38;                             jmp   n63_stmt_mark_α
                        .size            n58_statement_begin_bx, .-n58_statement_begin_bx
                        .type            n59_var_bx, @function
n59_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n59_var_α:              sub              rsp, 16
                        mov              r11, 39
                        mov              rdi, qword ptr [rip + .Lvar_α_133_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_GET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lvar_α_133_240
                        add              rsp, 16;                             jmp   n58_statement_begin_β
.Lvar_α_133_240:        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_var_global.cpp:39
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
1:                                                                            jmp   n60_assign_α
n59_var_β:              mov              r11, 39
                        add              rsp, 16;                             jmp   n58_statement_begin_β
.Lvar_α_133_0:          .quad            .Lvar_α_133_0_s
.Lvar_α_133_0_s:        .string          "INPUT"
                        .size            n59_var_bx, .-n59_var_bx
                        .type            n60_assign_bx, @function
n60_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n60_assign_α:           mov              r11, 40
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 16], rax             # src
                        mov              qword ptr [r9 + 24], rdx;            jmp   n61_statement_end_α
n60_assign_β:           mov              r11, 40
                        add              rsp, 16;                             jmp   n58_statement_begin_β
                        .size            n60_assign_bx, .-n60_assign_bx
                        .type            n61_statement_end_bx, @function
n61_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n61_statement_end_α:    mov              r11, 41
                        add              rsp, 16;                             jmp   n62_stmt_mark_α
n61_statement_end_β:    mov              r11, 41
                        add              rsp, 16;                             jmp   n63_stmt_mark_α
                        .size            n61_statement_end_bx, .-n61_statement_end_bx
                        .type            n62_stmt_mark_bx, @function
n62_stmt_mark_bx:
#=======================================================================================================================
#         src     ?   claws  :F(error)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 14 0
n62_stmt_mark_α:        mov              r11, 42
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 5
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 14
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n64_statement_begin_α
n62_stmt_mark_β:        mov              r11, 42;                             jmp   n64_statement_begin_α
                        .size            n62_stmt_mark_bx, .-n62_stmt_mark_bx
                        .type            n63_stmt_mark_bx, @function
n63_stmt_mark_bx:
#=======================================================================================================================
# error   OUTPUT  =   'Pattern match failed'
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 16 0
n63_stmt_mark_α:        mov              r11, 43
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 7
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 16
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n89_statement_begin_α
n63_stmt_mark_β:        mov              r11, 43;                             jmp   n89_statement_begin_α
                        .size            n63_stmt_mark_bx, .-n63_stmt_mark_bx
                        .type            n64_statement_begin_bx, @function
n64_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n64_statement_begin_α:  mov              r11, 44;                             jmp   n65_var_α
n64_statement_begin_β:  mov              r11, 44;                             jmp   n63_stmt_mark_α
                        .size            n64_statement_begin_bx, .-n64_statement_begin_bx
                        .type            n65_var_bx, @function
n65_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n65_var_α:              sub              rsp, 16
                        mov              r11, 45
                        mov              rax, qword ptr [r9 + 16]             # src
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n66_match_begin_α
n65_var_β:              mov              r11, 45
                        add              rsp, 16;                             jmp   n63_stmt_mark_α
                        .size            n65_var_bx, .-n65_var_bx
                        .type            n66_match_begin_bx, @function
n66_match_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n66_match_begin_α:      mov              r11, 46
                        mov              rdi, qword ptr [rsp + 0]             # var
                        mov              rsi, qword ptr [rsp + 8]
                        push             rbp
                        mov              rbp, rsp
                        push             r12                                  # cas_mark
                        push             r13                                  # outer_Σ
                        push             r14                                  # outer_δ
                        push             r15                                  # outer_Δ
                        sub              rsp, 120
                        mov              rax, qword ptr [rip + Σ@GOTPCREL]
                        mov              rax, qword ptr [rax]
                        mov              rcx, qword ptr [rip + Σlen@GOTPCREL]
                        mov              ecx, dword ptr [rcx + 0]
                        mov              dword ptr [rbp + -152], 2
                        mov              dword ptr [rbp + -148], ecx
                        mov              qword ptr [rbp + -144], rax
                        neg              rax
                        mov              qword ptr [rbp + -136], rax
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
.Lmatch_begin_α_145_0:  mov              r14d, dword ptr [rbp + -40]
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # match_beta_cont
                        mov              rax, qword ptr [rcx + 248]
                        mov              qword ptr [rbp + -48], rax
                        lea              rax, [rip + .Lmatch_begin_α_145_13]
                        mov              qword ptr [rcx + 248], rax;          jmp   n67_match_pos_α
n66_match_begin_β:      mov              r11, 46
.Lmatch_begin_α_145_13: lea              rsp, [rbp + -152]                    # retry_whack
                        add              dword ptr [rbp + -40], 1             # start_δ
                        mov              eax, dword ptr [rbp + -40]
                        cmp              eax, r15d;                           jg    .Lmatch_begin_β_145_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lmatch_begin_β_145_1
                                                                              jmp   .Lmatch_begin_α_145_0
.Lmatch_begin_β_145_1:
.Lmatch_begin_γ_66_af:  mov              r11, 46
.Lmatch_begin_ω_66_af:  mov              r11, 46
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # mbc_restore
                        mov              rax, qword ptr [rbp + -48]
                        mov              qword ptr [rcx + 248], rax
                        mov              r12, qword ptr [rbp + -8]            # cas_mark
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              rdi, r13
                        mov              rsi, r15
                        lea              rdx, [rbp + -152]
                        call             qword ptr [rip + rt_match_ctx_restore@GOTPCREL]
                        mov              qword ptr [rbp + -16], rax           # outer_Σ
                        mov              r13, qword ptr [rbp + -16]
                        mov              rsp, rbp
                        pop              rbp
                        add              rsp, 16;                             jmp   n63_stmt_mark_α
                        .size            n66_match_begin_bx, .-n66_match_begin_bx
                        .type            n67_match_pos_bx, @function
n67_match_pos_bx:
#-----------------------------------------------------------------------------------------------------------------------
n67_match_pos_α:        mov              r11, 47
                        mov              rax, 0
                        cmp              r14d, eax;                           jne   n66_match_begin_β
                                                                              jmp   n68_match_arbno_α
n67_match_pos_β:        mov              r11, 47;                             jmp   n66_match_begin_β
                        .size            n67_match_pos_bx, .-n67_match_pos_bx
                        .type            n68_match_arbno_bx, @function
n68_match_arbno_bx:
#-----------------------------------------------------------------------------------------------------------------------
n68_match_arbno_α:      mov              r11, 48
                        sub              rsp, 128
                        mov              dword ptr [rsp + 0], r14d
                        mov              dword ptr [rsp + 4], r14d
                        mov              qword ptr [rsp + 8], r12
                        mov              rax, qword ptr [rbp + -64]
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rbp + -64], rsp;          jmp   n69_match_rpos_α
n68_match_arbno_β:      mov              r11, 48
                        mov              rax, qword ptr [rbp + -64]
                        mov              r12, qword ptr [rax + 8];            jmp   n73_match_alternate_α
.Lmatch_arbno_γ_68_as:  mov              r11, 48
                        mov              rcx, qword ptr [rbp + -64]
                        mov              eax, dword ptr [rcx + 4]
                        cmp              r14d, eax;                           je    n74_match_span_β
                        sub              rsp, 128
                        mov              eax, dword ptr [rcx + 0]
                        mov              dword ptr [rsp + 0], eax
                        mov              dword ptr [rsp + 4], r14d
                        mov              qword ptr [rsp + 8], r12
                        mov              qword ptr [rsp + 16], rcx
                        mov              rax, qword ptr [rbp + -160]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rbp + -152]
                        mov              qword ptr [rsp + 40], rax
                        mov              rax, qword ptr [rbp + -144]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rbp + -136]
                        mov              qword ptr [rsp + 56], rax
                        mov              rax, qword ptr [rbp + -128]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rbp + -120]
                        mov              qword ptr [rsp + 72], rax
                        mov              rax, qword ptr [rbp + -112]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rbp + -104]
                        mov              qword ptr [rsp + 88], rax
                        mov              rax, qword ptr [rbp + -96]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rbp + -88]
                        mov              qword ptr [rsp + 104], rax
                        mov              rax, qword ptr [rbp + -80]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rbp + -72]
                        mov              qword ptr [rsp + 120], rax
                        mov              qword ptr [rbp + -64], rsp;          jmp   n69_match_rpos_α
.Lmatch_arbno_γ_68_af:  mov              r11, 48
.Lmatch_arbno_ω_68_af:  mov              r11, 48
                        mov              rcx, qword ptr [rbp + -64]
                        mov              eax, dword ptr [rcx + 0]
                        mov              r14d, dword ptr [rcx + 4]
                        mov              rdx, qword ptr [rcx + 16]
                        mov              qword ptr [rbp + -64], rdx
                        cmp              r14d, eax;                           je    .Lmatch_arbno_β_148_3
                        mov              rax, qword ptr [rcx + 32]
                        mov              qword ptr [rbp + -160], rax
                        mov              rax, qword ptr [rcx + 40]
                        mov              qword ptr [rbp + -152], rax
                        mov              rax, qword ptr [rcx + 48]
                        mov              qword ptr [rbp + -144], rax
                        mov              rax, qword ptr [rcx + 56]
                        mov              qword ptr [rbp + -136], rax
                        mov              rax, qword ptr [rcx + 64]
                        mov              qword ptr [rbp + -128], rax
                        mov              rax, qword ptr [rcx + 72]
                        mov              qword ptr [rbp + -120], rax
                        mov              rax, qword ptr [rcx + 80]
                        mov              qword ptr [rbp + -112], rax
                        mov              rax, qword ptr [rcx + 88]
                        mov              qword ptr [rbp + -104], rax
                        mov              rax, qword ptr [rcx + 96]
                        mov              qword ptr [rbp + -96], rax
                        mov              rax, qword ptr [rcx + 104]
                        mov              qword ptr [rbp + -88], rax
                        mov              rax, qword ptr [rcx + 112]
                        mov              qword ptr [rbp + -80], rax
                        mov              rax, qword ptr [rcx + 120]
                        mov              qword ptr [rbp + -72], rax
                        lea              rsp, [rcx + 128];                    jmp   n74_match_span_β
.Lmatch_arbno_β_148_3:  lea              rsp, [rcx + 128];                    jmp   n67_match_pos_β
                        .size            n68_match_arbno_bx, .-n68_match_arbno_bx
                        .type            n69_match_rpos_bx, @function
n69_match_rpos_bx:
#-----------------------------------------------------------------------------------------------------------------------
n69_match_rpos_α:       mov              r11, 49
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx;                           jne   n68_match_arbno_β
                                                                              jmp   n70_match_end_α
n69_match_rpos_β:       mov              r11, 49;                             jmp   n68_match_arbno_β
                        .size            n69_match_rpos_bx, .-n69_match_rpos_bx
                        .type            n70_match_end_bx, @function
n70_match_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n70_match_end_α:        mov              r11, 50
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
.Lmatch_end_α_151_1:    cmp              rax, 1;                              jbe   .Lmatch_end_α_151_2
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
                        cmp              rcx, 2;                              je    .Lmatch_end_α_151_20
                        cmp              rcx, 1;                              je    .Lmatch_end_α_151_120
                        lea              rcx, [rip + .Lmatch_end_α_151_22]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_end_α_151_21]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_end_α_151_21]
                        lea              rdx, [rip + .Lmatch_end_α_151_22];   jmp   rax
.Lmatch_end_α_151_20:   sub              rsp, 48
                        mov              qword ptr [rsp + 0], 0
                        lea              rcx, [rip + .Lmatch_end_α_151_23]
                        mov              qword ptr [rsp + 8], rcx
                        lea              rcx, [rip + .Lmatch_end_α_151_24]
                        mov              qword ptr [rsp + 16], rcx
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 16
                        lea              rcx, [rsp + 0];                      jmp   rax
.Lmatch_end_α_151_23:   add              rsp, 48
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_151_8
.Lmatch_end_α_151_24:   add              rsp, 48
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_151_9
.Lmatch_end_α_151_21:   add              rsp, 16
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_151_8
.Lmatch_end_α_151_22:   add              rsp, 16
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_151_9
.Lmatch_end_α_151_120:  lea              rcx, [rip + .Lmatch_end_α_151_122]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_end_α_151_121]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_end_α_151_121]
                        lea              rdx, [rip + .Lmatch_end_α_151_122];  jmp   rax
.Lmatch_end_α_151_121:  add              rsp, 0
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_151_8
.Lmatch_end_α_151_122:  add              rsp, 0
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_151_9
.Lmatch_end_α_151_8:    mov              qword ptr [rip + rtccb+40], r8
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
1:                                                                            jmp   .Lmatch_end_α_151_1
.Lmatch_end_α_151_9:    mov              qword ptr [rip + rtccb+40], r8
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
1:                                                                            jmp   .Lmatch_end_α_151_1
.Lmatch_end_α_151_2:    mov              qword ptr [rsp + 0], rax
                        call             qword ptr [rip + rt_dcap_end_ok_close@GOTPCREL]
                        mov              rdi, qword ptr [rbp + -16]           # outer_Σ
                        mov              rsi, qword ptr [rbp + -32]           # outer_Δ
                        lea              rdx, [rbp + -152]
                        call             qword ptr [rip + rt_match_ctx_restore@GOTPCREL]
                        mov              qword ptr [rbp + -16], rax           # outer_Σ
                        mov              rax, qword ptr [rsp + 0]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        add              rsp, 32
                        test             rax, rax;                            je    .Lmatch_end_α_151_13
                                                                              jmp   .Lmatch_begin_ω_66_af
.Lmatch_end_α_151_13:   mov              r12, qword ptr [rbp + -8]            # cas_mark
                        mov              qword ptr [1879048192], r12
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              rsp, rbp                             # frame_whack
                        pop              rbp;                                 jmp   n71_statement_end_α
                        .size            n70_match_end_bx, .-n70_match_end_bx
                        .type            n71_statement_end_bx, @function
n71_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n71_statement_end_α:    mov              r11, 51
                        add              rsp, 16;                             jmp   n72_stmt_mark_α
n71_statement_end_β:    mov              r11, 51
                        add              rsp, 16;                             jmp   n63_stmt_mark_α
                        .size            n71_statement_end_bx, .-n71_statement_end_bx
                        .type            n72_stmt_mark_bx, @function
n72_stmt_mark_bx:
#=======================================================================================================================
#         OUTPUT  =   'matched bytes=' SIZE(src)  :(END)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 15 0
n72_stmt_mark_α:        mov              r11, 52
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 6
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 15
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n82_statement_begin_α
n72_stmt_mark_β:        mov              r11, 52;                             jmp   n82_statement_begin_α
                        .size            n72_stmt_mark_bx, .-n72_stmt_mark_bx
                        .type            n73_match_alternate_bx, @function
n73_match_alternate_bx:
#-----------------------------------------------------------------------------------------------------------------------
n73_match_alternate_α:  mov              r11, 53
                        sub              rsp, 32
                        mov              dword ptr [rsp + 0], r14d
                        lea              rax, [rip + .Lmatch_alternate_α_157_21]
                        mov              qword ptr [rsp + 16], rax;           jmp   n80_match_span_α
.Lmatch_alternate_α_157_21:
                        lea              rax, [rip + .Lmatch_alternate_α_157_19]
                        mov              qword ptr [rsp + 16], rax;           jmp   n75_match_notany_α
.Lmatch_alternate_γ_73_s0:
                        mov              r11, 53
                        lea              rax, [rip + .Lmatch_alternate_α_157_40]
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lmatch_alternate_γ_73_as
.Lmatch_alternate_γ_73_s1:
                        mov              r11, 53
                        lea              rax, [rip + .Lmatch_alternate_α_157_41]
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lmatch_alternate_γ_73_as
.Lmatch_alternate_α_157_40:
                                                                              jmp   n81_match_lit_β
.Lmatch_alternate_α_157_41:
                                                                              jmp   n79_match_span_β
.Lmatch_alternate_γ_73_as:
                        mov              r11, 53;                             jmp   n74_match_span_α
n73_match_alternate_β:  mov              r11, 53
                        mov              rax, qword ptr [rsp + 8];            jmp   rax
.Lmatch_alternate_γ_73_af:
                        mov              r11, 53
.Lmatch_alternate_ω_73_af:
                        mov              r11, 53
                        mov              r14d, dword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16];           jmp   rax
.Lmatch_alternate_α_157_19:
                        add              rsp, 32;                             jmp   .Lmatch_arbno_ω_68_af
                        .size            n73_match_alternate_bx, .-n73_match_alternate_bx
                        .type            n74_match_span_bx, @function
n74_match_span_bx:
#-----------------------------------------------------------------------------------------------------------------------
n74_match_span_α:       sub              rsp, 16
                        mov              r11, 54
                        movsxd           rcx, r14d
.Lmatch_span_α_159_0:   cmp              ecx, r15d;                           jge   .Lmatch_span_α_159_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 32;                             je    .Lmatch_span_α_159_10
                        cmp              esi, 10;                             je    .Lmatch_span_α_159_10
                                                                              jmp   .Lmatch_span_α_159_1
.Lmatch_span_α_159_10:  add              ecx, 1;                              jmp   .Lmatch_span_α_159_0
.Lmatch_span_α_159_1:   cmp              ecx, r14d;                           jg    .Lmatch_span_α_159_240
                        add              rsp, 16;                             jmp   n73_match_alternate_β
.Lmatch_span_α_159_240: mov              dword ptr [rsp + 4], r14d
                        mov              r14d, ecx;                           jmp   .Lmatch_arbno_γ_68_as
n74_match_span_β:       mov              r11, 54
                        mov              r14d, dword ptr [rsp + 4]
                        add              rsp, 16;                             jmp   n73_match_alternate_β
                        .size            n74_match_span_bx, .-n74_match_span_bx
                        .type            n75_match_notany_bx, @function
n75_match_notany_bx:
#-----------------------------------------------------------------------------------------------------------------------
n75_match_notany_α:     mov              r11, 55
                        mov              eax, r14d
                        cmp              eax, r15d;                           jge   .Lmatch_alternate_ω_73_af
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 95;                             je    .Lmatch_alternate_ω_73_af
                        add              r14d, 1;                             jmp   n76_match_break_α
n75_match_notany_β:     mov              r11, 55
                        sub              r14d, 1;                             jmp   .Lmatch_alternate_ω_73_af
                        .size            n75_match_notany_bx, .-n75_match_notany_bx
                        .type            n76_match_break_bx, @function
n76_match_break_bx:
#-----------------------------------------------------------------------------------------------------------------------
n76_match_break_α:      mov              r11, 56
                        movsxd           rcx, r14d
.Lmatch_break_α_162_0:  cmp              ecx, r15d;                           jge   n75_match_notany_β
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 95;                             je    .Lmatch_break_α_162_1
                        add              ecx, 1;                              jmp   .Lmatch_break_α_162_0
.Lmatch_break_α_162_1:  mov              dword ptr [rbp + -128], r14d
                        mov              r14d, ecx;                           jmp   n77_match_lit_α
n76_match_break_β:      mov              r11, 56
                        mov              r14d, dword ptr [rbp + -128];        jmp   n75_match_notany_β
                        .size            n76_match_break_bx, .-n76_match_break_bx
                        .type            n77_match_lit_bx, @function
n77_match_lit_bx:
#-----------------------------------------------------------------------------------------------------------------------
n77_match_lit_α:        mov              r11, 57
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n76_match_break_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 95;                             jne   n76_match_break_β
                        add              r14d, 1;                             jmp   n78_match_any_α
n77_match_lit_β:        mov              r11, 57
                        sub              r14d, 1;                             jmp   n76_match_break_β
                        .size            n77_match_lit_bx, .-n77_match_lit_bx
                        .type            n78_match_any_bx, @function
n78_match_any_bx:
#-----------------------------------------------------------------------------------------------------------------------
n78_match_any_α:        mov              r11, 58
                        mov              eax, r14d
                        cmp              eax, r15d;                           jge   n77_match_lit_β
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .C0]
                        cmp              byte ptr [rdi+rsi], 0;               je    n77_match_lit_β
                        add              r14d, 1;                             jmp   n79_match_span_α
n78_match_any_β:        mov              r11, 58
                        sub              r14d, 1;                             jmp   n77_match_lit_β
                        .size            n78_match_any_bx, .-n78_match_any_bx
                        .type            n79_match_span_bx, @function
n79_match_span_bx:
#-----------------------------------------------------------------------------------------------------------------------
n79_match_span_α:       mov              r11, 59
                        lea              rdi, [rip + .C1]
                        movsxd           rcx, r14d
.Lmatch_span_α_168_0:   cmp              ecx, r15d;                           jge   .Lmatch_span_α_168_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0;               je    .Lmatch_span_α_168_1
                        add              ecx, 1;                              jmp   .Lmatch_span_α_168_0
.Lmatch_span_α_168_1:   cmp              ecx, r14d;                           jle   n78_match_any_β
                        mov              dword ptr [rbp + -156], r14d
                        mov              r14d, ecx;                           jmp   .Lmatch_alternate_γ_73_s1
n79_match_span_β:       mov              r11, 59
                        mov              r14d, dword ptr [rbp + -156];        jmp   n78_match_any_β
                        .size            n79_match_span_bx, .-n79_match_span_bx
                        .type            n80_match_span_bx, @function
n80_match_span_bx:
#-----------------------------------------------------------------------------------------------------------------------
n80_match_span_α:       mov              r11, 60
                        lea              rdi, [rip + .C2]
                        movsxd           rcx, r14d
.Lmatch_span_α_170_0:   cmp              ecx, r15d;                           jge   .Lmatch_span_α_170_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0;               je    .Lmatch_span_α_170_1
                        add              ecx, 1;                              jmp   .Lmatch_span_α_170_0
.Lmatch_span_α_170_1:   cmp              ecx, r14d;                           jle   .Lmatch_alternate_ω_73_af
                        mov              dword ptr [rbp + -92], r14d
                        mov              r14d, ecx;                           jmp   n81_match_lit_α
n80_match_span_β:       mov              r11, 60
                        mov              r14d, dword ptr [rbp + -92];         jmp   .Lmatch_alternate_ω_73_af
                        .size            n80_match_span_bx, .-n80_match_span_bx
                        .type            n81_match_lit_bx, @function
n81_match_lit_bx:
#-----------------------------------------------------------------------------------------------------------------------
n81_match_lit_α:        mov              r11, 61
                        mov              eax, r14d
                        add              eax, 10
                        cmp              eax, r15d;                           jg    n80_match_span_β
                        movsxd           rcx, r14d
                        mov              rdx, qword ptr [r13+rcx]
                        movabs           rax, 5791411556081353567
                        cmp              rdx, rax;                            jne   n80_match_span_β
                        movzx            eax, byte ptr [r13+rcx+8]
                        cmp              eax, 85;                             jne   n80_match_span_β
                        movzx            eax, byte ptr [r13+rcx+9]
                        cmp              eax, 78;                             jne   n80_match_span_β
                        add              r14d, 10;                            jmp   .Lmatch_alternate_γ_73_s0
n81_match_lit_β:        mov              r11, 61
                        sub              r14d, 10;                            jmp   n80_match_span_β
                        .size            n81_match_lit_bx, .-n81_match_lit_bx
                        .type            n82_statement_begin_bx, @function
n82_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n82_statement_begin_α:  mov              r11, 62;                             jmp   n83_lit_string_α
n82_statement_begin_β:  mov              r11, 62;                             jmp   main_γ
                        .size            n82_statement_begin_bx, .-n82_statement_begin_bx
                        .type            n83_lit_string_bx, @function
n83_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n83_lit_string_α:       sub              rsp, 16
                        mov              r11, 63
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 14
                        mov              rax, qword ptr [rip + .Llit_string_α_175_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n84_var_α
n83_lit_string_β:       mov              r11, 63
                        add              rsp, 16;                             jmp   n82_statement_begin_β
.Llit_string_α_175_0:   .quad            .Llit_string_α_175_0_s
.Llit_string_α_175_0_s: .string          "matched bytes="
                        .size            n83_lit_string_bx, .-n83_lit_string_bx
                        .type            n84_var_bx, @function
n84_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n84_var_α:              sub              rsp, 16
                        mov              r11, 64
                        mov              rax, qword ptr [r9 + 16]             # src
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n85_call_α
n84_var_β:              mov              r11, 64
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n82_statement_begin_β
                        .size            n84_var_bx, .-n84_var_bx
                        .type            n85_call_bx, @function
n85_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n85_call_α:             sub              rsp, 16
                        mov              r11, 65
                        sub              rsp, 16
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax
                        .section         .rodata
.Lcall_α_rkfnzd178:     .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd178]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              ecx, 311345
                        call             qword ptr [rip + rt_call_bid_sn4@GOTPCREL]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lcall_α_177_240
                        add              rsp, 16;                             jmp   n84_var_β
.Lcall_α_177_240:       mov              qword ptr [rsp + 0], rax             # result
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
1:                                                                            jmp   n86_binop_α
n85_call_β:             mov              r11, 65
                        add              rsp, 16;                             jmp   n84_var_β
                        .size            n85_call_bx, .-n85_call_bx
                        .type            n86_binop_bx, @function
n86_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n86_binop_α:            sub              rsp, 16
                        mov              r11, 66
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
1:                                                                            jmp   n87_assign_α
n86_binop_β:            mov              r11, 66
                        add              rsp, 32;                             jmp   n84_var_β
                        .size            n86_binop_bx, .-n86_binop_bx
                        .type            n87_assign_bx, @function
n87_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n87_assign_α:           mov              r11, 67
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_180_0]
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
1:                                                                            jmp   n88_statement_end_α
n87_assign_β:           mov              r11, 67;                             jmp   n86_binop_β
.Lassign_α_180_0:       .quad            .Lassign_α_180_0_s
.Lassign_α_180_0_s:     .string          "OUTPUT"
                        .size            n87_assign_bx, .-n87_assign_bx
                        .type            n88_statement_end_bx, @function
n88_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n88_statement_end_α:    mov              r11, 68
                        add              rsp, 64;                             jmp   main_γ
n88_statement_end_β:    mov              r11, 68
                        add              rsp, 64;                             jmp   main_γ
                        .size            n88_statement_end_bx, .-n88_statement_end_bx
                        .type            n89_statement_begin_bx, @function
n89_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n89_statement_begin_α:  mov              r11, 69;                             jmp   n90_lit_string_α
n89_statement_begin_β:  mov              r11, 69;                             jmp   main_γ
                        .size            n89_statement_begin_bx, .-n89_statement_begin_bx
                        .type            n90_lit_string_bx, @function
n90_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n90_lit_string_α:       sub              rsp, 16
                        mov              r11, 70
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 20
                        mov              rax, qword ptr [rip + .Llit_string_α_185_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n91_assign_α
n90_lit_string_β:       mov              r11, 70
                        add              rsp, 16;                             jmp   n89_statement_begin_β
.Llit_string_α_185_0:   .quad            .Llit_string_α_185_0_s
.Llit_string_α_185_0_s: .string          "Pattern match failed"
                        .size            n90_lit_string_bx, .-n90_lit_string_bx
                        .type            n91_assign_bx, @function
n91_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n91_assign_α:           mov              r11, 71
                        mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_186_0]
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
1:                                                                            jmp   n92_statement_end_α
n91_assign_β:           mov              r11, 71
                        add              rsp, 16;                             jmp   n89_statement_begin_β
.Lassign_α_186_0:       .quad            .Lassign_α_186_0_s
.Lassign_α_186_0_s:     .string          "OUTPUT"
                        .size            n91_assign_bx, .-n91_assign_bx
                        .type            n92_statement_end_bx, @function
n92_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n92_statement_end_α:    mov              r11, 72
                        add              rsp, 16;                             jmp   main_γ
n92_statement_end_β:    mov              r11, 72
                        add              rsp, 16;                             jmp   main_γ
                        .size            n92_statement_end_bx, .-n92_statement_end_bx
                        .type            n93_goto_bx, @function
n93_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n93_goto_α:             mov              r11, 73;                             jmp   n63_stmt_mark_α
n93_goto_β:             mov              r11, 73;                             jmp   main_ω
                        .size            n93_goto_bx, .-n93_goto_bx
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
                        .quad            3162442386778
                        .quad            38654705664
                        .quad            .Lgcmap_main_s
                        .quad            720
                        .quad            13
                        .quad            246290604621824
                        .quad            8800387989728
                        .quad            17600775979240
                        .quad            61576946123000
                        .quad            17592186044720
                        .quad            17596481012032
                        .quad            8804682957136
                        .quad            26392574034264
                        .quad            17592186044784
                        .quad            8800387989888
                        .quad            17605070946696
                        .quad            61576946123160
                        .quad            281474976711120
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
