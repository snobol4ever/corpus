# unicon_gfx_witnesses

SCRIP's own screen witnesses of the Unicon window object (skill `unicon` section 8, U5; the cto's ruling 2026-11-17 17:2x CST on officer_05's
measurement: an upstream program is graded as upstream, and a witness of ours says what it tests, so these are not entries of `unicon_tests`).
One entry per function family the Unicon object has and Arizona's lacks. Each program is written here, carries its semicolons, is a Unicon
program by the driver switch (`compile_args --dialect=unicon`), and answers one line `screen 1024x768 md5 <md5>` on the screen road
(`out_files screen.dump`, `NAME.cap` 600, `timeout_s` 1800, the rule of the unicon screen entries). The ref is cut from the graphics unicon
through `util_screen_run.py`, twice, and the oracle's screen is kept beside the entry as `screens/NAME.png` for the reader; the PNG is never compared.

| entry | family | what it draws |
|---|---|---|
| cubesphere | DrawCube, DrawSphere, Refresh in a `gl` window | a white cube with a shaded sphere above it |
