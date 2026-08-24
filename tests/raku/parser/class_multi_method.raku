class Counter {
    has $.count;
    method get() {
        say($.count);
    }
    method show($x) {
        say($x);
    }
}
