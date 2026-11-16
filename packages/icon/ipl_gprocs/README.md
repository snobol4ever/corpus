# ipl_gprocs

The drivers of the graphics procedure files of the Icon program library (`gprocs`, Icon 9.5.25a; public domain, as the library) that
no program of `ipl_gprogs` calls. Each entry is a small program, `NAME_driver.icn`, that links one file of `../ipl/gprocs` and calls its
procedures, so that file is graded at all. Ruled by the cto 2026-11-16 on the cqo's census of the other Icon containers; built by
officer_03 (row icon-graphics-the-drivers-of-the-uncalled-graphics-procedure-files-are-the-package-ipl-gprocs). A driver is never an
entry of `ipl_gprogs`, whose rows are the library's own graphics programs, and never of `ipl`, which has no graphics oracle.

THE ROAD (skill suites-and-grading section 4, THE SCREEN ROAD). Four drivers wait on a dialog and carry `NAME.events`: their answer is
their text, then one screen line a still picture (`out_files` screen.dump). The other eleven are graded on their text alone and still
need a display: `NAME.display` runs them under the road's `--no-screen`, which gives them a display and reads no screen.
`event_driver` reads its event history from `event_driver.in`. `popular_driver`'s answer is the library's own run-time error 207,
the same twice on the oracle (`want_rc` 1 in `ALL.rc`, the stderr cell `merged`: AN ERROR FROM THE ORACLE IS AN ANSWER). The four computations of
`rgbcomp_driver` fail on the oracle and are kept so; it links `rgbrec` through `rgbcomp`.

THE ANSWERS were cut by the cqo from the graphics build of the oracle, `/home/resources/icon-master-x`, twice in a fresh folder each
time on the screen road, equal twice (`/home/resources/progress/icon-graphics-2026-11-16/other-containers/drivers/cut.sh`).
`CONTRACT.tsv` is the one of `ipl_gprogs`: the library's procedure folders on the link path, its include folders on the include path.

THE DRIVERS:

- `attribs_driver` (events): the grading vehicle for gprocs/attribs.icn: attribs() shows its dialog of the window's attributes; attribs_driver.events presses Return on it (Okay), and the attributes it set back are written.
- `clip_driver`: the grading vehicle for gprocs/clip.icn: NewClip, XCopy, XCut and XPaste on a small window, read back with Pixel().
- `colrspec_driver`: the grading vehicle for gprocs/colrspec.icn: colrspec() on a name, a modified name, a numeric and a hex specification, and one it refuses.
- `event_driver`: the grading vehicle for gprocs/event.icn: its Event() overloads the built-in and plays the event history on standard input (event_driver.in, three lines an event) through evplay(); at the end of the history it exits. The window is passed: evplay(&null) appends a null to the queue (Pending with a null argument) and the oracle then ends with error 143.
- `getcolrs_driver` (events): the grading vehicle for gprocs/getcolrs.icn: get_colors("list") asks through two dialogs for a count and then that many colour specifications; getcolrs_driver.events answers 2, red and blue, and the list of colour values it returns is written.
- `lindterp_driver`: the grading vehicle for gprocs/lindterp.icn: one small L-system (Koch's curve, two generations) drawn by lindterp(), the drawn pixels counted. The record is the driver's own, with the delta field lindterp() reads (lindrec.icn's lsys_0l has angle, no delta).
- `overlay_driver`: the grading vehicle for gprocs/overlay.icn: an image written by the driver itself is overlaid on a window and read back.
- `pixelmap_driver`: the grading vehicle for gprocs/pixelmap.icn: a pixel list written by the driver itself becomes a window, read back.
- `popular_driver`: the grading vehicle for gprocs/popular.icn: popularity() of the colours of one image string. The library reads imr.palette and imr.pixels of imrutils' ImageRecord, which has no such fields, so its answer is the run-time error 207 the oracle gives (stderr merged).
- `rawimage_driver`: the grading vehicle for gprocs/rawimage.icn: WriteRaw() of a small window to standard output, and ReadRaw() of a raw image written by the driver itself, read back with Pixel().
- `repeats_driver`: the grading vehicle for gprocs/repeats.icn: an image written by the driver itself is repeated 2 by 3 and read back.
- `rgbcomp_driver`: the grading vehicle for gprocs/rgbcomp.icn and gprocs/rgbrec.icn, which it links: rgbrec() of a colour, and rgbcomp(), rgbavg(), rgbsum() and rgbdif() as the library computes them (each hands rgbrec() three numbers where it takes one colour, so each fails on the oracle).
- `winsnap_driver` (events): the grading vehicle for gprocs/winsnap.icn: winsnap() asks for a file name in its dialog; winsnap_driver.events types snap.gif and Return, and the image written is opened again and read back.
- `wipe_driver`: the grading vehicle for gprocs/wipe.icn: wipe() in each of its seven directions, a pixel read after each.
- `xutils_driver` (events): the grading vehicle for gprocs/xutils.icn: Quit() on an empty queue fails, on a queue holding a quit event returns the window; Done() waits for the q of xutils_driver.events and exits.
