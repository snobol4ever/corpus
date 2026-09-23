program whet(input, output);
(**********************************************************************
C     Benchmark Double Precision Whetstone (A001)
C     Curnow & Wichmann, NPL, 1972; this copy from FPCSource/tests/bench/whet.pas.
C     KERNEL FORM (CEO-1221): the eleven modules are unchanged; the upstream
C     wall-clock reporting (TimeNow, KIPS/MIPS) is removed because the harness
C     times the kernel, the major-loop count II is read from input like every
C     other kernel here, and POUT prints what each module COMPUTES on the last
C     major loop -- values that do not depend on II, so the REF pins them.
C**********************************************************************)

const
   NLoopValue = 100;

TYPE ARRAY4 = ARRAY [1..4] OF DOUBLE;

VAR E1                  : ARRAY4;
    T, T1, T2           : DOUBLE;
    J, K, L             : LONGINT;

PROCEDURE PA (VAR E : ARRAY4);
VAR J1 : LONGINT;
BEGIN
        J1 := 0;
        REPEAT
                E [1] := ( E [1] + E [2] + E [3] - E [4]) * T;
                E [2] := ( E [1] + E [2] - E [3] + E [4]) * T;
                E [3] := ( E [1] - E [2] + E [3] + E [4]) * T;
                E [4] := (-E [1] + E [2] + E [3] + E [4]) / T2;
                J1 := J1 + 1;
        UNTIL J1 >= 6;
END;

PROCEDURE P0;
BEGIN
        E1 [J] := E1 [K]; E1 [K] := E1 [L]; E1 [L] := E1 [J];
END;

PROCEDURE P3 (X,Y : DOUBLE; VAR Z : DOUBLE);
VAR X1, Y1 : DOUBLE;
BEGIN
        X1 := X;
        Y1 := Y;
        X1 := T * (X1 + Y1);
        Y1 := T * (X1 + Y1);
        Z := (X1 + Y1)/T2;
END;

PROCEDURE POUT (N, J, K : LONGINT; X1, X2, X3, X4 : DOUBLE);
BEGIN
        WriteLn(N:6,J:6,K:6,' ',X1:0:12,' ',X2:0:12,' ',X3:0:12,' ',X4:0:12);
END;

PROCEDURE DoIt;
VAR NLoop, I, II, JJ : LONGINT;
    N1, N2, N3, N4, N5, N6, N7, N8, N9, N10, N11 : LONGINT;
    X1, X2, X3, X4, X, Y, Z : DOUBLE;
BEGIN
(* The actual benchmark starts here. *)
        T  := 0.499975;
        T1 := 0.50025;
        T2 := 2.0;
        NLoop := NLoopValue;
        ReadLn (II);
        FOR JJ:=1 TO II DO BEGIN
(* Establish the relative loop counts of each module. *)
                N1 := 0;
                N2 := 12 * NLoop;
                N3 := 14 * NLoop;
                N4 := 345 * NLoop;
                N5 := 0;
                N6 := 210 * NLoop;
                N7 := 32 * NLoop;
                N8 := 899 * NLoop;
                N9 := 616 * NLoop;
                N10 := 0;
                N11 := 93 * NLoop;
(* Module 1: Simple identifiers *)
                X1 := 1.0;
                X2 := -1.0;
                X3 := -1.0;
                X4 := -1.0;
                FOR I:=1 TO N1 DO BEGIN
                        X1 := (X1 + X2 + X3 - X4)*T;
                        X2 := (X1 + X2 - X3 + X4)*T;
                        X3 := (X1 - X2 + X3 + X4)*T;
                        X4 := (-X1 + X2 + X3 + X4)*T;
                END;
                IF (JJ = II) THEN BEGIN
                        POUT (N1, N1, N1, X1, X2, X3, X4);
                END;
(* Module 2: Array elements *)
                E1 [1] :=  1.0;
                E1 [2] := -1.0;
                E1 [3] := -1.0;
                E1 [4] := -1.0;
                FOR I:=1 TO N2 DO BEGIN
                        E1 [1] := (E1 [1] + E1 [2] + E1 [3] - E1 [4])*T;
                        E1 [2] := (E1 [1] + E1 [2] - E1 [3] + E1 [4])*T;
                        E1 [3] := (E1 [1] - E1 [2] + E1 [3] + E1 [4])*T;
                        E1 [4] := (-E1 [1] + E1 [2] + E1 [3] + E1 [4])*T;
                END;
                IF (JJ = II) THEN BEGIN
                        POUT (N2, N3, N2, E1 [1], E1 [2], E1 [3], E1 [4]);
                END;
(* Module 3: Array as parameter *)
                FOR I:=1 TO N3 DO BEGIN
                        PA (E1);
                END;
                IF (JJ = II) THEN BEGIN
                        POUT(N3, N2, N2, E1 [1], E1 [2], E1 [3], E1 [4]);
                END;
(* Module 4: Conditional jumps *)
                J := 1;
                FOR I:=1 TO N4 DO BEGIN
                        IF (J <> 1) THEN J := 3 ELSE J := 2;
                        IF (J <= 2) THEN J := 1 ELSE J := 0;
                        IF (J >= 1) THEN J := 0 ELSE J := 1;
                END;
                IF (JJ = II) THEN BEGIN
                        POUT (N4, J, J, X1, X2, X3, X4)
                END;
(* Module 5: Omitted; Module 6: Integer arithmetic *)
                J := 1;
                K := 2;
                L := 3;
                FOR I:=1 TO N6 DO BEGIN
                        J := J * (K-J) * (L-K);
                        K := L * K - (L-J) * K;
                        L := (L - K) * (K + J);
                        E1 [L-1] := (J + K + L);
                        E1 [K-1] := (J * K * L);
                END;
                IF (JJ = II) THEN BEGIN
                        POUT (N6, J, K, E1 [1], E1 [2], E1 [3], E1 [4]);
                END;
(* Module 7: Trigonometric functions *)
                X := 0.5;
                Y := 0.5;
                FOR I:=1 TO N7 DO BEGIN
                        X:=T*arctan(T2*sin(X)*cos(X)/(cos(X+Y)+cos(X-Y)-1.0));
                        Y:=T*arctan(T2*sin(Y)*cos(Y)/(cos(X+Y)+cos(X-Y)-1.0));
                END;
                IF (JJ = II) THEN BEGIN
                        POUT (N7, J, K, X, X, Y, Y);
                END;
(* Module 8: Procedure calls *)
                X := 1.0;
                Y := 1.0;
                Z := 1.0;
                FOR I:=1 TO N8 DO BEGIN
                        P3 (X,Y,Z);
                END;
                IF (JJ = II) THEN BEGIN
                        POUT (N8, J, K, X, Y, Z, Z);
                END;
(* Module 9: Array references *)
                J := 1;
                K := 2;
                L := 3;
                E1 [1] := 1.0;
                E1 [2] := 2.0;
                E1 [3] := 3.0;
                FOR I:=1 TO N9 DO BEGIN
                        P0;
                END;
                IF (JJ = II) THEN BEGIN
                        POUT (N9, J, K, E1 [1], E1 [2], E1 [3], E1 [4])
                END;
(* Module 10: Integer arithmetic *)
                J := 2;
                K := 3;
                FOR I:=1 TO N10 DO BEGIN
                        J := J + K;
                        K := J + K;
                        J := K - J;
                        K := K - J - J;
                END;
                IF (JJ = II) THEN BEGIN
                        POUT (N10, J, K, X1, X2, X3, X4)
                END;
(* Module 11: Standard functions *)
                X := 0.75;
                FOR I:=1 TO N11 DO BEGIN
                  X := sqrt (exp (ln (X)/T1))
                END;
                IF (JJ = II) THEN BEGIN
                        POUT (N11, J, K, X, X, X, X)
                END;
(* THIS IS THE END OF THE MAJOR LOOP. *)
        END;
END;

BEGIN
    DoIt;
END.
