# unicon_ipl -- the Unicon-only files of the Unicon program library that Unicon programs `$include` and `link`

Arizona's IPL (../ipl) has no posix.icn. Unicon's ipl/incl/posix.icn (the errno constants and WNOHANG/WUNTRACED as `$define`, `link posix`, `invocable` of the posix record types) and ipl/procs/posix.icn (the nine posix_* records) are copied here from /home/resources/unicon/ipl, byte for byte unless a file says otherwise. SCRIP's `$include` search (icon_lex.c ipp_pathfind) looks here after Arizona's ipl/incl; the `link` search (icon_driver.c icn_link_open) looks in procs here FIRST for a Unicon program (a marker or --dialect=unicon) and after Arizona's ipl/procs for a plain Icon program. Not a graded package: no ALL.csv.

procs/xoptions.icn is Unicon's ipl/procs/xoptions.icn (the command-line option parser that general/xcommand and samples/xcommand link) with the semicolons SCRIP Icon requires inserted by harness/scripts/util_icon_semicolons.py under Unicon's own Ender/Beginner rule; every other byte is upstream's.

procs/numbers.icn is Unicon's ipl/procs/numbers.icn (digsum over !string(i); it defines no max or min, they are Unicon builtins) with the semicolons SCRIP Icon requires inserted by harness/scripts/util_icon_semicolons.py --compile-args=--dialect=unicon (197 inserted, audit clean); every other byte is upstream's.
