# sno_procmail (Snobol4Procmail)

hurufu's snobol-procmail (https://github.com/hurufu/snobol-procmail, commit 35c6f85 of 2023-08-10, MIT): a toy procmail in SPITBOL that reads an
email on standard input and prints the folder it belongs in, read in place (`ALL.source`), upper-cased in place by `sno_upcase_edition.py`
(29 lines). Its README runs the two files together (`spitbol $THIS_DIR/*.spt`), so the entry is `procmail.sno`, OURS, beside them in the
collection: two `-INCLUDE` lines, `0-common.spt` then `1-user.spt`. THE INPUT IS OURS: `procmail.in`, an email to one of the rule's addresses;
the oracle answers `+ag`.

The first SCRIP reading (mode 3, SCRIP 38179ce886): 1 of 1.
