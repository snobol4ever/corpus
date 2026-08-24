class Dog {
    has $.name;
    method speak() {
        say("woof");
    }
}
my $d = Dog.new(name => "Rex");
say($d.name);
