:- module(w, []).
:- initialization(main).
e(N, X) :- catch((Y is X, R = Y), error(E, _), R = err(E)), writeq(N-R), nl.
t(N, G) :- catch((G -> R = yes ; R = no), error(E, _), R = err(E)), writeq(N-R), nl.
main :- e(default_sign_nan, sign(nan)), e(default_log0, log(0.0)), e(default_pow_zero_neg, 0.0 ** -1), e(default_acos2, acos(2)),
    t(underflow_flag, (current_prolog_flag(float_underflow, U), U == ignore, set_prolog_flag(float_underflow, error), set_prolog_flag(float_underflow, U))),
    t(rounding_flag, (current_prolog_flag(float_rounding, R0), R0 == to_nearest, set_prolog_flag(float_rounding, to_zero), current_prolog_flag(float_rounding, to_zero), set_prolog_flag(float_rounding, R0))),
    t(unknown_flag_fails, \+ current_prolog_flag(no_such_flag_x, _)), t(tagged, (current_prolog_flag(max_tagged_integer, M), integer(M), M > 0)),
    t(float_max, (current_prolog_flag(float_max, FM), FM =:= 1.7976931348623157e308)), t(flags_enumerate, (findall(F, current_prolog_flag(F, _), Fs), memberchk(float_rounding, Fs), memberchk(bounded, Fs))),
    forall(member(F-V, [float_overflow-infinity, float_zero_div-infinity, float_undefined-nan]), set_prolog_flag(F, V)),
    forall(member(N-X, [sign_nan-sign(nan), ceiling_inf-ceiling(inf), floor_nan-floor(nan), round_ninf-round(-inf), truncate_inf-truncate(inf), log0-log(0.0), log10_m0-log10(-0.0),
        atanh1-atanh(1.0), atan2_00-atan2(0.0,0.0), atan2_m0m0-atan2(-0.0,-0.0), pow_inf_0-(inf**0.0), pow_nan_0-(nan**0.0), pow_0_neg-(0.0** -1), div_int_0-(1/0), div_rat_0-(-1r2/0),
        ffp_m0-float_fractional_part(-0.0), ffp_inf-float_fractional_part(inf), ffp_minf-float_fractional_part(-inf), copysign_0_nan-copysign(0.0,nan), copysign_nan-copysign(nan,-0.0), erf1-erf(1.0),
        max_m0_0-max(-0.0,0), max_m0_p0-max(-0.0,0.0), min_0_m0-min(0,-0.0), root3_neg-(-8.0**1r3), root3_neg_sq-(-8.0**2r3), root_even_neg-(-4.0**3r2), rt_up-roundtoward(1/3, to_positive),
        rt_down-roundtoward(1/3, to_negative), rt_neg_root_up-roundtoward(-2.0**1r3, to_positive), rt_small_root_up-roundtoward(0.0002**1r3, to_positive),
        big_below_overflow_down-roundtoward(float(2^1024-1), to_negative), big_overflow_down-roundtoward(float(2^1024), to_negative), neg_big_overflow_up-roundtoward(float(-(2^1024)), to_positive)]), e(N, X)),
    X1 is -0.0, I is inf, NI is -inf, NN is nan, msort([I, 0.0, X1, NI, NN, 0, -1], L1), writeq(msort-L1), nl,
    findall(O, (member(A-B, [NN-0.0, X1-0.0, X1-0, 0.0-0, 0-0.0]), compare(O, A, B)), Os), writeq(compare-Os), nl,
    t(sort_bound_nan, sort([1.0Inf, 0.0, -0.0, -1.0Inf, 1.5NaN], [1.5NaN, -1.0Inf, -0.0, 0.0, 1.0Inf])), t(sort_bound_zero_sign, sort([0.0], [-0.0])),
    findall(C, (member(Z0, [1.0, 0.0, -0.0, inf, nan, -inf, 1.0e-310]), Z is Z0, float_class(Z, C)), Cs), writeq(float_class-Cs), nl, t(float_class_int, float_class(1, _)),
    t(bounded_ints, bounded_number(0, 10, 1)), t(bounded_rat_out, \+ bounded_number(0, 1r2, 1)), t(bounded_int_fill, (bounded_number(L2, H2, -1), [L2, H2] == [-2, 0])),
    t(bounded_float_fill, (bounded_number(L3, H3, -1.0), [L3, H3] == [-1.0000000000000002, -0.9999999999999999])), t(bounded_inf, \+ bounded_number(_, _, I)), t(bounded_nan, \+ bounded_number(_, _, NN)),
    writeq(spacing-(a - X1)), nl.
