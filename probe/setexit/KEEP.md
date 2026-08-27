# KEEP.md — probe/setexit

Per `probe-consolidate-m1-and-small` (parent: `corpus-suites-consolidation`).

Only 3 of 9 witnesses are currently green; those 3 converted into
`tests/snobol4/probe/setexit.{sno,ref}`. The other 6 -- a majority of this family -- stay
loose, `--skip`'d loud and deliberate rather than silently dropped or force-converted.

⚠️ **Worth flagging beyond the routine KEEP exclusion: 6 of 9 SETEXIT witnesses are red**,
which reads as a live, fairly broad correctness gap in SETEXIT handling rather than one-off
noise. Not investigated further here -- fixing it is out of scope for this consolidation row
-- but a future SETEXIT-focused session should probably start from this table rather than
rediscover it.

Live measurement, 2026-08-27 (this session), both m3 and m4:
```
se_errlimit_survives.sno   m3: FAIL rc=1, output mismatch   m4: FAIL rc=1, output mismatch
se_oneshot.sno             m3: FAIL rc=0, output mismatch   m4: SKIP, gcc link failed
se_rearm.sno                m3: FAIL rc=0, output mismatch   m4: SKIP, gcc link failed
se_reset_null.sno          m3: FAIL rc=0, output mismatch   m4: FAIL rc=0, output mismatch
se_trap_fires.sno          m3: FAIL rc=0, output mismatch   m4: SKIP, gcc link failed
se_trap_lastno.sno         m3: FAIL rc=1, output mismatch   m4: SKIP, gcc link failed
```
Green (converted): se_notrap_failexit.sno, se_retval.sno, se_trap_undef.sno.

| file | reason |
|---|---|
| se_errlimit_survives.sno | output mismatch both modes |
| se_oneshot.sno | m3 output mismatch, m4 link failure |
| se_rearm.sno | m3 output mismatch, m4 link failure |
| se_reset_null.sno | output mismatch both modes |
| se_trap_fires.sno | m3 output mismatch, m4 link failure |
| se_trap_lastno.sno | m3 output mismatch, m4 link failure |
