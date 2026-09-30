                        .intel_syntax    noprefix
                        .text
                        .file            1 "snobol4/claws5/claws5-match-fence.sno"
                        .file            2 "<included>"
#-----------------------------------------------------------------------------------------------------------------------
FN__PAT$0:
PAT$0_α_body:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 248
                        lea              rax, [rip + .Lgcmap_PAT$0]
                        mov              qword ptr [rbp + -240], rax
                        mov              dword ptr [rbp + -248], 160
                        mov              dword ptr [rbp + -244], 248
                        xorps            xmm0, xmm0
                        movups           xmmword ptr [rbp + -232], xmm0
                        movups           xmmword ptr [rbp + -216], xmm0
                        movups           xmmword ptr [rbp + -200], xmm0
                        movups           xmmword ptr [rbp + -184], xmm0
                        movups           xmmword ptr [rbp + -168], xmm0
                        movups           xmmword ptr [rbp + -152], xmm0
                        movups           xmmword ptr [rbp + -136], xmm0
                        movups           xmmword ptr [rbp + -120], xmm0
                        movups           xmmword ptr [rbp + -104], xmm0
                        movups           xmmword ptr [rbp + -88], xmm0
                        movups           xmmword ptr [rbp + -72], xmm0
                        movups           xmmword ptr [rbp + -56], xmm0
                        xor              eax, eax
                        mov              qword ptr [rbp + -40], rax
                        mov              qword ptr [rbp + -24], rdx
                        mov              qword ptr [rbp + -32], r12
                        .type            n0_match_pos_bx, @function
n0_match_pos_bx:
#-----------------------------------------------------------------------------------------------------------------------
n0_match_pos_α:         mov              rax, 0
                        cmp              r14d, eax;                           jne   PAT$0_ω
                                                                              jmp   n1_match_arbno_α
n0_match_pos_β:                                                               jmp   PAT$0_ω
                        .size            n0_match_pos_bx, .-n0_match_pos_bx
                        .type            n1_match_arbno_bx, @function
n1_match_arbno_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1_match_arbno_α:       sub              rsp, 208
                        mov              dword ptr [rsp + 0], r14d
                        mov              dword ptr [rsp + 4], r14d
                        mov              qword ptr [rsp + 8], r12
                        mov              rax, qword ptr [rbp + -48]
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rbp + -48], rsp;          jmp   n2_match_rpos_α
n1_match_arbno_β:       mov              rax, qword ptr [rbp + -48]
                        mov              r12, qword ptr [rax + 8];            jmp   n3_match_fence1_α
.Lmatch_arbno_γ_1_as:   mov              rcx, qword ptr [rbp + -48]
                        mov              eax, dword ptr [rcx + 4]
                        cmp              r14d, eax;                           je    n4_match_span_β
                        sub              rsp, 208
                        mov              eax, dword ptr [rcx + 0]
                        mov              dword ptr [rsp + 0], eax
                        mov              dword ptr [rsp + 4], r14d
                        mov              qword ptr [rsp + 8], r12
                        mov              qword ptr [rsp + 16], rcx
                        mov              rax, qword ptr [rbp + -224]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rbp + -216]
                        mov              qword ptr [rsp + 40], rax
                        mov              rax, qword ptr [rbp + -208]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rbp + -200]
                        mov              qword ptr [rsp + 56], rax
                        mov              rax, qword ptr [rbp + -192]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rbp + -184]
                        mov              qword ptr [rsp + 72], rax
                        mov              rax, qword ptr [rbp + -176]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rbp + -168]
                        mov              qword ptr [rsp + 88], rax
                        mov              rax, qword ptr [rbp + -160]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rbp + -152]
                        mov              qword ptr [rsp + 104], rax
                        mov              rax, qword ptr [rbp + -144]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rbp + -136]
                        mov              qword ptr [rsp + 120], rax
                        mov              rax, qword ptr [rbp + -128]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rbp + -120]
                        mov              qword ptr [rsp + 136], rax
                        mov              rax, qword ptr [rbp + -112]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rbp + -104]
                        mov              qword ptr [rsp + 152], rax
                        mov              rax, qword ptr [rbp + -96]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rbp + -88]
                        mov              qword ptr [rsp + 168], rax
                        mov              rax, qword ptr [rbp + -80]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rbp + -72]
                        mov              qword ptr [rsp + 184], rax
                        mov              rax, qword ptr [rbp + -64]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rbp + -56]
                        mov              qword ptr [rsp + 200], rax
                        mov              qword ptr [rbp + -48], rsp;          jmp   n2_match_rpos_α
.Lmatch_arbno_γ_1_af:
.Lmatch_arbno_ω_1_af:   mov              rcx, qword ptr [rbp + -48]
                        mov              eax, dword ptr [rcx + 0]
                        mov              r14d, dword ptr [rcx + 4]
                        mov              rdx, qword ptr [rcx + 16]
                        mov              qword ptr [rbp + -48], rdx
                        cmp              r14d, eax;                           je    .Lmatch_arbno_β_15_3
                        mov              rax, qword ptr [rcx + 32]
                        mov              qword ptr [rbp + -224], rax
                        mov              rax, qword ptr [rcx + 40]
                        mov              qword ptr [rbp + -216], rax
                        mov              rax, qword ptr [rcx + 48]
                        mov              qword ptr [rbp + -208], rax
                        mov              rax, qword ptr [rcx + 56]
                        mov              qword ptr [rbp + -200], rax
                        mov              rax, qword ptr [rcx + 64]
                        mov              qword ptr [rbp + -192], rax
                        mov              rax, qword ptr [rcx + 72]
                        mov              qword ptr [rbp + -184], rax
                        mov              rax, qword ptr [rcx + 80]
                        mov              qword ptr [rbp + -176], rax
                        mov              rax, qword ptr [rcx + 88]
                        mov              qword ptr [rbp + -168], rax
                        mov              rax, qword ptr [rcx + 96]
                        mov              qword ptr [rbp + -160], rax
                        mov              rax, qword ptr [rcx + 104]
                        mov              qword ptr [rbp + -152], rax
                        mov              rax, qword ptr [rcx + 112]
                        mov              qword ptr [rbp + -144], rax
                        mov              rax, qword ptr [rcx + 120]
                        mov              qword ptr [rbp + -136], rax
                        mov              rax, qword ptr [rcx + 128]
                        mov              qword ptr [rbp + -128], rax
                        mov              rax, qword ptr [rcx + 136]
                        mov              qword ptr [rbp + -120], rax
                        mov              rax, qword ptr [rcx + 144]
                        mov              qword ptr [rbp + -112], rax
                        mov              rax, qword ptr [rcx + 152]
                        mov              qword ptr [rbp + -104], rax
                        mov              rax, qword ptr [rcx + 160]
                        mov              qword ptr [rbp + -96], rax
                        mov              rax, qword ptr [rcx + 168]
                        mov              qword ptr [rbp + -88], rax
                        mov              rax, qword ptr [rcx + 176]
                        mov              qword ptr [rbp + -80], rax
                        mov              rax, qword ptr [rcx + 184]
                        mov              qword ptr [rbp + -72], rax
                        mov              rax, qword ptr [rcx + 192]
                        mov              qword ptr [rbp + -64], rax
                        mov              rax, qword ptr [rcx + 200]
                        mov              qword ptr [rbp + -56], rax
                        lea              rsp, [rcx + 208];                    jmp   n4_match_span_β
.Lmatch_arbno_β_15_3:   lea              rsp, [rcx + 208];                    jmp   n0_match_pos_β
                        .size            n1_match_arbno_bx, .-n1_match_arbno_bx
                        .type            n2_match_rpos_bx, @function
n2_match_rpos_bx:
#-----------------------------------------------------------------------------------------------------------------------
n2_match_rpos_α:        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx;                           jne   n1_match_arbno_β
                                                                              jmp   PAT$0_γ
n2_match_rpos_β:                                                              jmp   n1_match_arbno_β
                        .size            n2_match_rpos_bx, .-n2_match_rpos_bx
                        .type            n3_match_fence1_bx, @function
n3_match_fence1_bx:
#-----------------------------------------------------------------------------------------------------------------------
n3_match_fence1_α:      mov              qword ptr [rbp + -96], rsp
                        mov              qword ptr [rbp + -88], r12;          jmp   n5_match_alternate_α
.Lmatch_fence1_γ_3_as:  mov              rsp, qword ptr [rbp + -96];          jmp   n4_match_span_α
.Lmatch_fence1_γ_3_af:
.Lmatch_fence1_ω_3_af:
n3_match_fence1_β:      mov              r12, qword ptr [rbp + -88]
                        mov              rsp, qword ptr [rbp + -96];          jmp   .Lmatch_arbno_ω_1_af
                        .size            n3_match_fence1_bx, .-n3_match_fence1_bx
                        .type            n4_match_span_bx, @function
n4_match_span_bx:
#-----------------------------------------------------------------------------------------------------------------------
n4_match_span_α:        sub              rsp, 16
                        movsxd           rcx, r14d
.Lmatch_span_α_20_0:    cmp              ecx, r15d;                           jge   .Lmatch_span_α_20_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 32;                             je    .Lmatch_span_α_20_10
                        cmp              esi, 10;                             je    .Lmatch_span_α_20_10
                                                                              jmp   .Lmatch_span_α_20_1
.Lmatch_span_α_20_10:   add              ecx, 1;                              jmp   .Lmatch_span_α_20_0
.Lmatch_span_α_20_1:    cmp              ecx, r14d;                           jg    .Lmatch_span_α_20_240
                        add              rsp, 16;                             jmp   .Lmatch_arbno_ω_1_af
.Lmatch_span_α_20_240:  mov              dword ptr [rbp + -76], r14d
                        mov              r14d, ecx;                           jmp   .Lmatch_arbno_γ_1_as
n4_match_span_β:        mov              r14d, dword ptr [rbp + -76]
                        add              rsp, 16;                             jmp   .Lmatch_arbno_ω_1_af
                        .size            n4_match_span_bx, .-n4_match_span_bx
                        .type            n5_match_alternate_bx, @function
n5_match_alternate_bx:
#-----------------------------------------------------------------------------------------------------------------------
n5_match_alternate_α:   mov              dword ptr [rbp + -128], r14d
                        lea              rax, [rip + .Lmatch_alternate_α_22_21]
                        mov              qword ptr [rbp + -112], rax;         jmp   n11_match_span_α
.Lmatch_alternate_α_22_21:
                        lea              rax, [rip + .Lmatch_alternate_α_22_19]
                        mov              qword ptr [rbp + -112], rax;         jmp   n6_match_notany_α
.Lmatch_alternate_γ_5_s0:
                        lea              rax, [rip + .Lmatch_alternate_α_22_40]
                        mov              qword ptr [rbp + -120], rax;         jmp   .Lmatch_alternate_γ_5_as
.Lmatch_alternate_γ_5_s1:
                        lea              rax, [rip + .Lmatch_alternate_α_22_41]
                        mov              qword ptr [rbp + -120], rax;         jmp   .Lmatch_alternate_γ_5_as
.Lmatch_alternate_α_22_40:
                                                                              jmp   n12_match_lit_β
.Lmatch_alternate_α_22_41:
                                                                              jmp   n10_match_span_β
.Lmatch_alternate_γ_5_as:
                                                                              jmp   .Lmatch_fence1_γ_3_as
n5_match_alternate_β:   mov              rax, qword ptr [rbp + -120];         jmp   rax
.Lmatch_alternate_γ_5_af:
.Lmatch_alternate_ω_5_af:
                        mov              r14d, dword ptr [rbp + -128]
                        mov              rax, qword ptr [rbp + -112];         jmp   rax
.Lmatch_alternate_α_22_19:
                                                                              jmp   .Lmatch_fence1_ω_3_af
                        .size            n5_match_alternate_bx, .-n5_match_alternate_bx
                        .type            n6_match_notany_bx, @function
n6_match_notany_bx:
#-----------------------------------------------------------------------------------------------------------------------
n6_match_notany_α:      mov              eax, r14d
                        cmp              eax, r15d;                           jge   .Lmatch_alternate_ω_5_af
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 95;                             je    .Lmatch_alternate_ω_5_af
                        add              r14d, 1;                             jmp   n7_match_break_α
n6_match_notany_β:      sub              r14d, 1;                             jmp   .Lmatch_alternate_ω_5_af
                        .size            n6_match_notany_bx, .-n6_match_notany_bx
                        .type            n7_match_break_bx, @function
n7_match_break_bx:
#-----------------------------------------------------------------------------------------------------------------------
n7_match_break_α:       movsxd           rcx, r14d
.Lmatch_break_α_25_0:   cmp              ecx, r15d;                           jge   n6_match_notany_β
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 95;                             je    .Lmatch_break_α_25_1
                        add              ecx, 1;                              jmp   .Lmatch_break_α_25_0
.Lmatch_break_α_25_1:   mov              dword ptr [rbp + -192], r14d
                        mov              r14d, ecx;                           jmp   n8_match_lit_α
n7_match_break_β:       mov              r14d, dword ptr [rbp + -192];        jmp   n6_match_notany_β
                        .size            n7_match_break_bx, .-n7_match_break_bx
                        .type            n8_match_lit_bx, @function
n8_match_lit_bx:
#-----------------------------------------------------------------------------------------------------------------------
n8_match_lit_α:         mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n7_match_break_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 95;                             jne   n7_match_break_β
                        add              r14d, 1;                             jmp   n9_match_any_α
n8_match_lit_β:         sub              r14d, 1;                             jmp   n7_match_break_β
                        .size            n8_match_lit_bx, .-n8_match_lit_bx
                        .type            n9_match_any_bx, @function
n9_match_any_bx:
#-----------------------------------------------------------------------------------------------------------------------
n9_match_any_α:         mov              eax, r14d
                        cmp              eax, r15d;                           jge   n8_match_lit_β
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .C0]
                        cmp              byte ptr [rdi+rsi], 0;               je    n8_match_lit_β
                        add              r14d, 1;                             jmp   n10_match_span_α
n9_match_any_β:         sub              r14d, 1;                             jmp   n8_match_lit_β
                        .size            n9_match_any_bx, .-n9_match_any_bx
                        .type            n10_match_span_bx, @function
n10_match_span_bx:
#-----------------------------------------------------------------------------------------------------------------------
n10_match_span_α:       lea              rdi, [rip + .C1]
                        movsxd           rcx, r14d
.Lmatch_span_α_31_0:    cmp              ecx, r15d;                           jge   .Lmatch_span_α_31_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0;               je    .Lmatch_span_α_31_1
                        add              ecx, 1;                              jmp   .Lmatch_span_α_31_0
.Lmatch_span_α_31_1:    cmp              ecx, r14d;                           jle   n9_match_any_β
                        mov              dword ptr [rbp + -220], r14d
                        mov              r14d, ecx;                           jmp   .Lmatch_alternate_γ_5_s1
n10_match_span_β:       mov              r14d, dword ptr [rbp + -220];        jmp   n9_match_any_β
                        .size            n10_match_span_bx, .-n10_match_span_bx
                        .type            n11_match_span_bx, @function
n11_match_span_bx:
#-----------------------------------------------------------------------------------------------------------------------
n11_match_span_α:       lea              rdi, [rip + .C2]
                        movsxd           rcx, r14d
.Lmatch_span_α_33_0:    cmp              ecx, r15d;                           jge   .Lmatch_span_α_33_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0;               je    .Lmatch_span_α_33_1
                        add              ecx, 1;                              jmp   .Lmatch_span_α_33_0
.Lmatch_span_α_33_1:    cmp              ecx, r14d;                           jle   .Lmatch_alternate_ω_5_af
                        mov              dword ptr [rbp + -156], r14d
                        mov              r14d, ecx;                           jmp   n12_match_lit_α
n11_match_span_β:       mov              r14d, dword ptr [rbp + -156];        jmp   .Lmatch_alternate_ω_5_af
                        .size            n11_match_span_bx, .-n11_match_span_bx
                        .type            n12_match_lit_bx, @function
n12_match_lit_bx:
#-----------------------------------------------------------------------------------------------------------------------
n12_match_lit_α:        mov              eax, r14d
                        add              eax, 10
                        cmp              eax, r15d;                           jg    n11_match_span_β
                        movsxd           rcx, r14d
                        mov              rdx, qword ptr [r13+rcx]
                        movabs           rax, 5791411556081353567
                        cmp              rdx, rax;                            jne   n11_match_span_β
                        movzx            eax, byte ptr [r13+rcx+8]
                        cmp              eax, 85;                             jne   n11_match_span_β
                        movzx            eax, byte ptr [r13+rcx+9]
                        cmp              eax, 78;                             jne   n11_match_span_β
                        add              r14d, 10;                            jmp   .Lmatch_alternate_γ_5_s0
n12_match_lit_β:        sub              r14d, 10;                            jmp   n11_match_span_β
                        .size            n12_match_lit_bx, .-n12_match_lit_bx
#-----------------------------------------------------------------------------------------------------------------------
PAT$0_res:
                        mov              rbp, qword ptr [rsp + 24]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
PAT$0_β:
                                                                              jmp   n2_match_rpos_β
#-----------------------------------------------------------------------------------------------------------------------
PAT$0_γ:
                        mov              rcx, qword ptr [rbp + 16]
                        push             rbp
                        push             rcx
                        mov              rcx, qword ptr [rbp + 8]
                        push             rcx
                        lea              rax, [rip + PAT$0_res]
                        push             rax
                        mov              rbp, qword ptr [rbp + 0];            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
PAT$0_ω:
                        mov              r12, qword ptr [rbp + -32]
                        mov              rsp, rbp
                        pop              rbp
                        mov              rcx, qword ptr [rsp + 8]
                        add              rsp, 16;                             jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
.Lgcmap_PAT$0:
                        .quad            1066498346330
                        .quad            17179869208
                        .quad            0
                        .quad            248
                        .quad            26
                        .quad            8804682956568
                        .quad            17600775978784
                        .quad            8808977923888
                        .quad            8804682956600
                        .quad            17600775978816
                        .quad            8808977923920
                        .quad            8804682956632
                        .quad            17600775978848
                        .quad            8808977923952
                        .quad            8804682956664
                        .quad            8804682956672
                        .quad            8813272891272
                        .quad            8813272891280
                        .quad            8804682956696
                        .quad            17600775978912
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
                        .section         .data.rel.ro
                        .p2align         4
.Lthk_PAT$0:            .quad            FN__PAT$0
                        .long            256, 1
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
                        mov              edi, 3
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 3
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
                        .quad            0
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
                        mov              qword ptr [rsp + 504], rax
                        mov              dword ptr [rsp + 496], 160
                        mov              dword ptr [rsp + 500], 512
                        mov              eax, 0
main_α_body:
                        sub              rsp, 0
                        .type            n36_call_bx, @function
n36_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n36_call_α:             sub              rsp, 16
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
1:                      cmp              al, 104;                             jne   .Lcall_α_77_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n37_call_α
.Lcall_α_77_240:        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n37_call_α
n36_call_β:             add              rsp, 16
                        add              rsp, -16;                            jmp   n37_call_α
                        .size            n36_call_bx, .-n36_call_bx
                        .type            n37_call_bx, @function
n37_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n37_call_α:             sub              rsp, 16
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
1:                      cmp              al, 104;                             jne   .Lcall_α_78_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n38_statement_begin_α
.Lcall_α_78_240:        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 32;                             jmp   n38_statement_begin_α
n37_call_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n38_statement_begin_α
                        .size            n37_call_bx, .-n37_call_bx
                        .type            n38_statement_begin_bx, @function
n38_statement_begin_bx:
#=======================================================================================================================
#         &TRIM   =   0
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 1 0
n38_statement_begin_α:                                                        jmp   n39_lit_integer_α
n38_statement_begin_β:                                                        jmp   n42_statement_begin_α
                        .size            n38_statement_begin_bx, .-n38_statement_begin_bx
                        .type            n39_lit_integer_bx, @function
n39_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n39_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_81_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n40_kw_assign_snobol4_α
.Llit_integer_α_81_0:   .quad            0
                        .size            n39_lit_integer_bx, .-n39_lit_integer_bx
                        .type            n40_kw_assign_snobol4_bx, @function
n40_kw_assign_snobol4_bx:
#-----------------------------------------------------------------------------------------------------------------------
n40_kw_assign_snobol4_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lkw_assign_snobol4_α_82_0]
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
                        cmp              al, 104;                             jne   .Lkw_assign_snobol4_α_82_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n38_statement_begin_β
.Lkw_assign_snobol4_α_82_240:
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
1:                                                                            jmp   n41_statement_end_α
.Lkw_assign_snobol4_α_82_0:
                        .quad            1
                        .size            n40_kw_assign_snobol4_bx, .-n40_kw_assign_snobol4_bx
                        .type            n41_statement_end_bx, @function
n41_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n41_statement_end_α:    add              rsp, 32;                             jmp   n42_statement_begin_α
                        .size            n41_statement_end_bx, .-n41_statement_end_bx
                        .type            n42_statement_begin_bx, @function
n42_statement_begin_bx:
#=======================================================================================================================
#         claws   =   POS(0)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 2 0
n42_statement_begin_α:                                                        jmp   n43_lit_string_α
n42_statement_begin_β:                                                        jmp   n47_statement_begin_α
                        .size            n42_statement_begin_bx, .-n42_statement_begin_bx
                        .type            n43_lit_string_bx, @function
n43_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n43_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_string_α_87_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n44_call_α
.Llit_string_α_87_0:    .quad            .Lthk_PAT$0
                        .size            n43_lit_string_bx, .-n43_lit_string_bx
                        .type            n44_call_bx, @function
n44_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n44_call_α:             sub              rsp, 16
                        sub              rsp, 16
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sno_mkpat_d@PLT
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
1:                      add              rsp, 16
                        cmp              al, 104;                             jne   .Lcall_α_88_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n42_statement_begin_β
.Lcall_α_88_240:        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n45_assign_α
n44_call_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n42_statement_begin_β
                        .size            n44_call_bx, .-n44_call_bx
                        .type            n45_assign_bx, @function
n45_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n45_assign_α:           mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # claws
                        mov              qword ptr [r9 + 8], rdx;             jmp   n46_statement_end_α
                        .size            n45_assign_bx, .-n45_assign_bx
                        .type            n46_statement_end_bx, @function
n46_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n46_statement_end_α:    add              rsp, 32;                             jmp   n47_statement_begin_α
                        .size            n46_statement_end_bx, .-n46_statement_end_bx
                        .type            n47_statement_begin_bx, @function
n47_statement_begin_bx:
#=======================================================================================================================
#         INPUT(.INPUT, 9, '[-f0 -r4194304]')
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 13 0
n47_statement_begin_α:                                                        jmp   n48_lit_name_α
n47_statement_begin_β:                                                        jmp   n53_statement_begin_α
                        .size            n47_statement_begin_bx, .-n47_statement_begin_bx
                        .type            n48_lit_name_bx, @function
n48_lit_name_bx:
#-----------------------------------------------------------------------------------------------------------------------
n48_lit_name_α:         sub              rsp, 16
                        mov              qword ptr [rsp + 0], 40              # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Llit_name_α_94_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n49_lit_integer_α
.Llit_name_α_94_0:      .quad            .Llit_name_α_94_0_s
.Llit_name_α_94_0_s:    .string          "INPUT"
                        .size            n48_lit_name_bx, .-n48_lit_name_bx
                        .type            n49_lit_integer_bx, @function
n49_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n49_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_95_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n50_lit_string_α
n49_lit_integer_β:      add              rsp, 16
                        add              rsp, 16;                             jmp   n47_statement_begin_β
.Llit_integer_α_95_0:   .quad            9
                        .size            n49_lit_integer_bx, .-n49_lit_integer_bx
                        .type            n50_lit_string_bx, @function
n50_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n50_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 15
                        mov              rax, qword ptr [rip + .Llit_string_α_96_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n51_call_α
n50_lit_string_β:       add              rsp, 16;                             jmp   n49_lit_integer_β
.Llit_string_α_96_0:    .quad            .Llit_string_α_96_0_s
.Llit_string_α_96_0_s:  .string          "[-f0 -r4194304]"
                        .size            n50_lit_string_bx, .-n50_lit_string_bx
                        .type            n51_call_bx, @function
n51_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n51_call_α:             sub              rsp, 16
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
.Lcall_α_bynamefnzd29:  .string          "INPUT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_bynamefnzd29]
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
                        cmp              al, 104;                             jne   .Lcall_α_97_240
                        add              rsp, 16;                             jmp   n50_lit_string_β
.Lcall_α_97_240:        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_call.cpp:371
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
1:                                                                            jmp   n52_statement_end_α
n51_call_β:             add              rsp, 16;                             jmp   n50_lit_string_β
                        .size            n51_call_bx, .-n51_call_bx
                        .type            n52_statement_end_bx, @function
n52_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n52_statement_end_α:    add              rsp, 64;                             jmp   n53_statement_begin_α
                        .size            n52_statement_end_bx, .-n52_statement_end_bx
                        .type            n53_statement_begin_bx, @function
n53_statement_begin_bx:
#=======================================================================================================================
#         src     =   INPUT  :F(error)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 14 0
n53_statement_begin_α:                                                        jmp   n54_var_α
n53_statement_begin_β:                                                        jmp   n72_statement_begin_α
                        .size            n53_statement_begin_bx, .-n53_statement_begin_bx
                        .type            n54_var_bx, @function
n54_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n54_var_α:              sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lvar_α_102_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_GET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lvar_α_102_240
                        add              rsp, 16;                             jmp   n53_statement_begin_β
.Lvar_α_102_240:        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_var_global.cpp:67
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
1:                                                                            jmp   n55_assign_α
.Lvar_α_102_0:          .quad            .Lvar_α_102_0_s
.Lvar_α_102_0_s:        .string          "INPUT"
                        .size            n54_var_bx, .-n54_var_bx
                        .type            n55_assign_bx, @function
n55_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n55_assign_α:           mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 16], rax             # src
                        mov              qword ptr [r9 + 24], rdx;            jmp   n56_statement_end_α
                        .size            n55_assign_bx, .-n55_assign_bx
                        .type            n56_statement_end_bx, @function
n56_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n56_statement_end_α:    add              rsp, 16;                             jmp   n57_statement_begin_α
                        .size            n56_statement_end_bx, .-n56_statement_end_bx
                        .type            n57_statement_begin_bx, @function
n57_statement_begin_bx:
#=======================================================================================================================
#         src     ?   claws  :F(error)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 15 0
n57_statement_begin_α:                                                        jmp   n58_var_α
n57_statement_begin_β:                                                        jmp   n72_statement_begin_α
                        .size            n57_statement_begin_bx, .-n57_statement_begin_bx
                        .type            n58_var_bx, @function
n58_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n58_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 16]             # src
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n59_var_α
                        .size            n58_var_bx, .-n58_var_bx
                        .type            n59_var_bx, @function
n59_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n59_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 0]              # claws
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n60_assign_α
n59_var_β:              add              rsp, 16
                        add              rsp, 16;                             jmp   n72_statement_begin_α
                        .size            n59_var_bx, .-n59_var_bx
                        .type            n60_assign_bx, @function
n60_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n60_assign_α:           mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 32], rax             # PATV$0
                        mov              qword ptr [r9 + 40], rdx;            jmp   n61_match_begin_α
n60_assign_β:                                                                 jmp   n59_var_β
                        .size            n60_assign_bx, .-n60_assign_bx
                        .type            n61_match_begin_bx, @function
n61_match_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n61_match_begin_α:      mov              rdi, qword ptr [rsp + 16]            # var
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
.Lmatch_begin_α_112_0:  mov              r14d, dword ptr [rbp + -40]
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # match_beta_cont
                        mov              rax, qword ptr [rcx + 248]
                        mov              qword ptr [rbp + -48], rax
                        lea              rax, [rip + .Lmatch_begin_α_112_13]
                        mov              qword ptr [rcx + 248], rax;          jmp   n62_match_defer_α
n61_match_begin_β:
.Lmatch_begin_α_112_13: lea              rsp, [rbp + -88]                     # retry_whack
                        add              dword ptr [rbp + -40], 1             # start_δ
                        mov              eax, dword ptr [rbp + -40]
                        cmp              eax, r15d;                           jg    .Lmatch_begin_β_112_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lmatch_begin_β_112_1
                                                                              jmp   .Lmatch_begin_α_112_0
.Lmatch_begin_β_112_1:
.Lmatch_begin_γ_61_af:
.Lmatch_begin_ω_61_af:  mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # mbc_restore
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
                        pop              rbp;                                 jmp   n60_assign_β
                        .size            n61_match_begin_bx, .-n61_match_begin_bx
                        .type            n62_match_defer_bx, @function
n62_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n62_match_defer_α:      mov              rax, qword ptr [r9 + 32]             # PATV$0
                        mov              rdx, qword ptr [r9 + 40]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_113_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_113_10
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dtp_fn_of@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax                                  # gc_poll bb_match_defer.cpp:119
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
1:                      mov              rdx, qword ptr [r9 + 40];            jmp   .Lmatch_defer_α_113_10
.Lmatch_defer_α_113_9:  xor              eax, eax
.Lmatch_defer_α_113_10: test             rax, rax;                            jz    .Lmatch_defer_α_113_0
.Lmatch_defer_α_113_48: mov              r8d, 1
                        lea              rcx, [rip + .Lmatch_defer_α_113_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_113_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_113_4:                                                        jmp   n63_match_end_α
.Lmatch_defer_α_113_5:  cmp              r14d, -2;                            je    .Lmatch_begin_ω_61_af
                                                                              jmp   n61_match_begin_β
.Lmatch_defer_α_113_0:  sub              rsp, 32
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], r14
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        lea              rdi, [r9 + 32]                       # PATV$0
                        xor              esi, esi
                        mov              qword ptr [1879048192], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_open_cell@PLT
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_113_51
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_113_51: lea              rdi, [rsp + 0]
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
.Lmatch_defer_α_113_2:  test             rax, rax;                            je    .Lmatch_defer_α_113_3
                        cmp              rdx, 4;                              je    .Lmatch_defer_α_113_40
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
                        cmp              rcx, 2;                              je    .Lmatch_defer_α_113_41
                        cmp              rcx, 1;                              je    .Lmatch_defer_α_113_141
                        lea              rcx, [rip + .Lmatch_defer_α_113_43]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_113_42]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_113_42]
                        lea              rdx, [rip + .Lmatch_defer_α_113_43]; jmp   rax
.Lmatch_defer_α_113_41: sub              rsp, 48
                        mov              qword ptr [rsp + 0], 0
                        lea              rcx, [rip + .Lmatch_defer_α_113_44]
                        mov              qword ptr [rsp + 8], rcx
                        lea              rcx, [rip + .Lmatch_defer_α_113_45]
                        mov              qword ptr [rsp + 16], rcx
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 16
                        lea              rcx, [rsp + 0];                      jmp   rax
.Lmatch_defer_α_113_44: add              rsp, 48
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_113_46
.Lmatch_defer_α_113_45: add              rsp, 48
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_113_47
.Lmatch_defer_α_113_42: add              rsp, 16
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_113_46
.Lmatch_defer_α_113_43: add              rsp, 16
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_113_47
.Lmatch_defer_α_113_141:
                        lea              rcx, [rip + .Lmatch_defer_α_113_143]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_113_142]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_113_142]
                        lea              rdx, [rip + .Lmatch_defer_α_113_143]
                                                                              jmp   rax
.Lmatch_defer_α_113_142:
                        add              rsp, 0
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_113_46
.Lmatch_defer_α_113_143:
                        add              rsp, 0
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_113_47
.Lmatch_defer_α_113_46: mov              qword ptr [rip + rtccb+40], r8
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_113_52
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_113_52: lea              rdi, [rsp + 0]
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
1:                                                                            jmp   .Lmatch_defer_α_113_2
.Lmatch_defer_α_113_47: mov              qword ptr [rip + rtccb+40], r8
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_113_53
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_113_53: lea              rdi, [rsp + 0]
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
1:                                                                            jmp   .Lmatch_defer_α_113_2
.Lmatch_defer_α_113_40: mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        add              rsp, 32
                        mov              rdx, rax
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lmatch_defer_α_113_48
.Lmatch_defer_α_113_3:  mov              r13, qword ptr [rsp + 8]
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
.Lmatch_defer_α_113_49: cmp              r14d, -2;                            je    .Lmatch_begin_ω_61_af
                        test             eax, eax;                            js    n61_match_begin_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_113_6]
                        push             rcx
                        push             rax;                                 jmp   n63_match_end_α
.Lmatch_defer_α_113_6:  add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n61_match_begin_β
n62_match_defer_β:      cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_113_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_113_12
                                                                              jmp   rax
.Lmatch_defer_β_113_12:                                                       jmp   qword ptr [rsp]
                        .size            n62_match_defer_bx, .-n62_match_defer_bx
                        .type            n63_match_end_bx, @function
n63_match_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n63_match_end_α:        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # mbc_restore
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
.Lmatch_end_α_115_1:    cmp              rax, 1;                              jbe   .Lmatch_end_α_115_2
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
                        cmp              rcx, 2;                              je    .Lmatch_end_α_115_20
                        cmp              rcx, 1;                              je    .Lmatch_end_α_115_120
                        lea              rcx, [rip + .Lmatch_end_α_115_22]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_end_α_115_21]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_end_α_115_21]
                        lea              rdx, [rip + .Lmatch_end_α_115_22];   jmp   rax
.Lmatch_end_α_115_20:   sub              rsp, 48
                        mov              qword ptr [rsp + 0], 0
                        lea              rcx, [rip + .Lmatch_end_α_115_23]
                        mov              qword ptr [rsp + 8], rcx
                        lea              rcx, [rip + .Lmatch_end_α_115_24]
                        mov              qword ptr [rsp + 16], rcx
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 16
                        lea              rcx, [rsp + 0];                      jmp   rax
.Lmatch_end_α_115_23:   add              rsp, 48
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_115_8
.Lmatch_end_α_115_24:   add              rsp, 48
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_115_9
.Lmatch_end_α_115_21:   add              rsp, 16
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_115_8
.Lmatch_end_α_115_22:   add              rsp, 16
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_115_9
.Lmatch_end_α_115_120:  lea              rcx, [rip + .Lmatch_end_α_115_122]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_end_α_115_121]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_end_α_115_121]
                        lea              rdx, [rip + .Lmatch_end_α_115_122];  jmp   rax
.Lmatch_end_α_115_121:  add              rsp, 0
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_115_8
.Lmatch_end_α_115_122:  add              rsp, 0
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_115_9
.Lmatch_end_α_115_8:    mov              qword ptr [rip + rtccb+40], r8
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
1:                                                                            jmp   .Lmatch_end_α_115_1
.Lmatch_end_α_115_9:    mov              qword ptr [rip + rtccb+40], r8
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
1:                                                                            jmp   .Lmatch_end_α_115_1
.Lmatch_end_α_115_2:    mov              qword ptr [rsp + 0], rax
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
                        test             rax, rax;                            je    .Lmatch_end_α_115_13
                                                                              jmp   .Lmatch_begin_ω_61_af
.Lmatch_end_α_115_13:   mov              r12, qword ptr [rbp + -8]            # cas_mark
                        mov              qword ptr [1879048192], r12
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              rsp, rbp                             # frame_whack
                        pop              rbp;                                 jmp   n64_statement_end_α
                        .size            n63_match_end_bx, .-n63_match_end_bx
                        .type            n64_statement_end_bx, @function
n64_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n64_statement_end_α:    add              rsp, 32;                             jmp   n65_statement_begin_α
                        .size            n64_statement_end_bx, .-n64_statement_end_bx
                        .type            n65_statement_begin_bx, @function
n65_statement_begin_bx:
#=======================================================================================================================
#         OUTPUT  =   'matched bytes=' SIZE(src)  :(END)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 16 0
n65_statement_begin_α:                                                        jmp   n66_lit_string_α
n65_statement_begin_β:                                                        jmp   main_γ
                        .size            n65_statement_begin_bx, .-n65_statement_begin_bx
                        .type            n66_lit_string_bx, @function
n66_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n66_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 14
                        mov              rax, qword ptr [rip + .Llit_string_α_120_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n67_var_α
.Llit_string_α_120_0:   .quad            .Llit_string_α_120_0_s
.Llit_string_α_120_0_s: .string          "matched bytes="
                        .size            n66_lit_string_bx, .-n66_lit_string_bx
                        .type            n67_var_bx, @function
n67_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n67_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 16]             # src
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n68_call_α
n67_var_β:              add              rsp, 16
                        add              rsp, 16;                             jmp   n65_statement_begin_β
                        .size            n67_var_bx, .-n67_var_bx
                        .type            n68_call_bx, @function
n68_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n68_call_α:             sub              rsp, 16
                        sub              rsp, 16
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax
                        .section         .rodata
.Lcall_α_rkfnzd123:     .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd123]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              ecx, 311345
                        call             qword ptr [rip + rt_call_bid_sn4@GOTPCREL]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lcall_α_122_240
                        add              rsp, 16;                             jmp   n67_var_β
.Lcall_α_122_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:208
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
1:                                                                            jmp   n69_binop_α
n68_call_β:             add              rsp, 16;                             jmp   n67_var_β
                        .size            n68_call_bx, .-n68_call_bx
                        .type            n69_binop_bx, @function
n69_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n69_binop_α:            sub              rsp, 16
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
1:                                                                            jmp   n70_assign_α
n69_binop_β:            add              rsp, 32;                             jmp   n67_var_β
                        .size            n69_binop_bx, .-n69_binop_bx
                        .type            n70_assign_bx, @function
n70_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n70_assign_α:           mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_125_0]
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
1:                                                                            jmp   n71_statement_end_α
.Lassign_α_125_0:       .quad            .Lassign_α_125_0_s
.Lassign_α_125_0_s:     .string          "OUTPUT"
                        .size            n70_assign_bx, .-n70_assign_bx
                        .type            n71_statement_end_bx, @function
n71_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n71_statement_end_α:    add              rsp, 64;                             jmp   main_γ
                        .size            n71_statement_end_bx, .-n71_statement_end_bx
                        .type            n72_statement_begin_bx, @function
n72_statement_begin_bx:
#=======================================================================================================================
# error   OUTPUT  =   'Pattern match failed'
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 17 0
n72_statement_begin_α:                                                        jmp   n73_lit_string_α
n72_statement_begin_β:                                                        jmp   main_γ
                        .size            n72_statement_begin_bx, .-n72_statement_begin_bx
                        .type            n73_lit_string_bx, @function
n73_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n73_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 20
                        mov              rax, qword ptr [rip + .Llit_string_α_130_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n74_assign_α
.Llit_string_α_130_0:   .quad            .Llit_string_α_130_0_s
.Llit_string_α_130_0_s: .string          "Pattern match failed"
                        .size            n73_lit_string_bx, .-n73_lit_string_bx
                        .type            n74_assign_bx, @function
n74_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n74_assign_α:           mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_131_0]
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
1:                                                                            jmp   n75_statement_end_α
.Lassign_α_131_0:       .quad            .Lassign_α_131_0_s
.Lassign_α_131_0_s:     .string          "OUTPUT"
                        .size            n74_assign_bx, .-n74_assign_bx
                        .type            n75_statement_end_bx, @function
n75_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n75_statement_end_α:    add              rsp, 16;                             jmp   main_γ
                        .size            n75_statement_end_bx, .-n75_statement_end_bx
                        .type            n76_goto_bx, @function
n76_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n76_goto_α:                                                                   jmp   n72_statement_begin_α
n76_goto_β:                                                                   jmp   main_ω
                        .size            n76_goto_bx, .-n76_goto_bx
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
                        .quad            2200369712474
                        .quad            38654705664
                        .quad            .Lgcmap_main_s
                        .quad            496
                        .quad            5
                        .quad            263882790666240
                        .quad            8800387989744
                        .quad            17600775979256
                        .quad            79169132167432
                        .quad            175921860444496
.Lgcmap_main_s:         .string          "main"
module_init:
                        sub              rsp, 8
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
