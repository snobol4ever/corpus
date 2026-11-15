#----------------------------------------------------------------- 1 100-doors-1
my @doors = False xx 101;

(.=not for @doors[0, $_ ... 100]) for 1..100;

say "Door $_ is ", <closed open>[ @doors[$_] ] for 1..100;
#----------------------------------------------------------------- 2 100-doors-2
say "Door $_ is open" for map {$^n ** 2}, 1..10;
#----------------------------------------------------------------- 3 100-doors-3
say 'Door $_ is open' for (1..10)»²;
#----------------------------------------------------------------- 4 100-doors-4
 say "Door $_ is open" for 1..10 X** 2;
#----------------------------------------------------------------- 5 100-doors-5
say "Door $_ is ", <closed open>[.sqrt == .sqrt.floor] for 1..100;
#----------------------------------------------------------------- 6 100-doors-6
sub  output( @arr, $max ) {
    my $output = 1;
    for 1..^$max -> $index {
	if @arr[$index] {
	    printf "%4d", $index;
	    say '' if $output++ %%  10;
	}
    }
    say '';
}

sub MAIN ( Int :$doors = 100 ) {
    my $doorcount = $doors + 1;
    my @door[$doorcount] = 0 xx ($doorcount);

    INDEX:
    for 1...^$doorcount -> $index {
        # flip door $index & its multiples, up to last door.
        #
	for ($index, * + $index ... *)[^$doors] -> $multiple {
	    next INDEX if $multiple > $doors;
	    @door[$multiple] =  @door[$multiple] ?? 0 !! 1;
	}
    }
    output @door, $doors+1;
}
#--------------------------------------------------------------- 7 10001th-prime
say (^∞).grep( &is-prime )[10000]
#------------------------------------------------------------- 8 24-game-solve-1
use MONKEY-SEE-NO-EVAL;

my @digits;
my $amount = 4;

# Get $amount digits from the user,
# ask for more if they don't supply enough
while @digits.elems < $amount {
    @digits.append: (prompt "Enter {$amount - @digits} digits from 1 to 9, "
    ~ '(repeats allowed): ').comb(/<[1..9]>/);
}
# Throw away any extras
@digits = @digits[^$amount];

# Generate combinations of operators
my @ops = [X,] <+ - * /> xx 3;

# Enough sprintf formats to cover most precedence orderings
my @formats = (
    '%d %s %d %s %d %s %d',
    '(%d %s %d) %s %d %s %d',
    '(%d %s %d %s %d) %s %d',
    '((%d %s %d) %s %d) %s %d',
    '(%d %s %d) %s (%d %s %d)',
    '%d %s (%d %s %d %s %d)',
    '%d %s (%d %s (%d %s %d))',
);

# Brute force test the different permutations
@digits.permutations».join.unique».comb.race.map: -> @p {
    for @ops -> @o {
        for @formats -> $format {
            my $result = .EVAL given my $string = sprintf $format, roundrobin(@p, @o, :slip);
            say "$string = 24" and last if $result and $result == 24;
        }
    }
}
#------------------------------------------ 9 9-billion-names-of-god-the-integer
my @todo = $[1];
my @sums = 0;
sub nextrow($n) {
    for +@todo .. $n -> $l {
        my $r = [];
        for reverse ^$l -> $x {
            my @x := @todo[$x];
            if @x {
                $r.push: @sums[$x] += @x.shift;
            }
            else {
                $r.push: @sums[$x];
            }
        }
        @todo.push($r);
    }
    @todo[$n];
}

say "rows:";
say .fmt('%2d'), ": ", nextrow($_)[] for 1..25;


my @names-of-God = 1, { partition-sum ++$ } … *;
my @names-of-God-adder = lazy [\+] flat 1, ( (1 .. *) Z (1 .. *).map: * × 2 + 1 );
sub partition-sum ($n) {
    sum @names-of-God[$n X- @names-of-God-adder[^(@names-of-God-adder.first: * > $n, :k)]]
        Z× (flat (1, 1, -1, -1) xx *)
}

say "\nsums:";
for 23, 123, 1234, 12345 {
    put $_, "\t",  @names-of-God[$_];
}
#------------------------------------------------------- 10 99-bottles-of-beer-1
my $b = 99;

repeat while --$b {
    say "{b $b} on the wall";
    say "{b $b}";
    say "Take one down, pass it around";
    say "{b $b-1} on the wall";
    say "";
}

sub b($b) {
    "$b bottle{'s' if $b != 1} of beer";
}
#------------------------------------------------------- 11 99-bottles-of-beer-2
for 99...1 -> $bottles {
    sing $bottles, :wall;
    sing $bottles;
    say  "Take one down, pass it around";
    sing $bottles - 1, :wall;
    say  "";
}

#| Prints a verse about a certain number of beers, possibly on a wall.
sub sing(
    Int $number, #= Number of bottles of beer.
    Bool :$wall, #= Mention that the beers are on a wall?
) {
    my $quantity = $number == 0 ?? "No more"      !! $number;
    my $plural   = $number == 1 ?? ""             !! "s";
    my $location = $wall        ?? " on the wall" !! "";
    say "$quantity bottle$plural of beer$location"
}
#------------------------------------------------------- 12 99-bottles-of-beer-3
my @quantities = flat (99 ... 1), 'No more', 99;
my @bottles = flat 'bottles' xx 98, 'bottle', 'bottles' xx 2;
my @actions = flat 'Take one down, pass it around' xx 99,
              'Go to the store, buy some more';

for @quantities Z @bottles Z @actions Z
    @quantities[1 .. *] Z @bottles[1 .. *]
    -> ($a, $b, $c, $d, $e) {
    say "$a $b of beer on the wall";
    say "$a $b of beer";
    say $c;
    say "$d $e of beer on the wall\n";
}
#---------------------------------------------------------------------- 13 a+b-1
get.words.sum.say;
#---------------------------------------------------------------------- 14 a+b-2
say [+] get.words;
#---------------------------------------------------------------------- 15 a+b-3
my ($a, $b) = $*IN.get.split(" ");
say $a + $b;
#--------------------------------------------------------- 16 a-search-algorithm
# 20200427 Raku programming solution

class AStarGraph {

   has @.barriers =
      <2 4>,<2 5>,<2 6>,<3 6>,<4 6>,<5 6>,<5 5>,<5 4>,<5 3>,<5 2>,<4 2>,<3 2>;

   method heuristic(\start, \goal) {
      my (\D1,\D2) = 1, 1;
      my (\dx,\dy) = ( start.list »-« goal.list )».abs;
      return  (D1 * (dx + dy)) + (D2 - 2*D1) * min dx, dy
   }

   method get_vertex_neighbours(\pos) {
      gather {
         for <1 0>,<-1 0>,<0 1>,<0 -1>,<1 1>,<-1 1>,<1 -1>,<-1 -1> -> \d {
            my (\x2,\y2) = pos.list »+« d.list;
            (x2 < 0 || x2 > 7 || y2 < 0 || y2 > 7) && next;
            take x2, y2;
         }
      }
   }

   method move_cost(\a,\b) { (b ~~ any self.barriers) ?? 100 !! 1 }
}

sub AStarSearch(\start, \end, \graph) {

   my (%G,%F);

   %G{start.Str} = 0;
   %F{start.Str} = graph.heuristic(start, end);

   my @closedVertices = [];
   my @openVertices = [].push(start);
   my %cameFrom;

   while (@openVertices.Bool) {
      my $current = Nil; my $currentFscore = Inf;

      for @openVertices -> \pos {
         if (%F{pos.Str} < $currentFscore) {
            $currentFscore = %F{pos.Str};
            $current = pos
         }
      }

      if $current ~~ end {
         my @path = [].push($current);
         while %cameFrom{$current.Str}:exists {
            $current = %cameFrom{$current.Str};
            @path.push($current)
         }
         return @path.reverse, %F{end.Str}
      }

      @openVertices .=  grep: * !eqv $current;
      @closedVertices.push($current);

      for (graph.get_vertex_neighbours($current)) -> \neighbour {
         next if neighbour ~~ any @closedVertices;
         my \candidateG = %G{$current.Str}+graph.move_cost($current,neighbour);

         if !(neighbour ~~ any @openVertices) {
            @openVertices.push(neighbour)
         } elsif (candidateG ≥ %G{neighbour.Str}) {
            next
         }

         %cameFrom{neighbour.Str} = $current;
         %G{neighbour.Str} = candidateG;
         my \H = graph.heuristic(neighbour, end);
         %F{neighbour.Str} = %G{neighbour.Str} + H;
      }
   }
   die "A* failed to find a solution"
}

my \graph = AStarGraph.new;
my (\route, \cost) = AStarSearch(<0 0>, <7 7>, graph);

my \w = my \h = 10;

my @grid = [ ['.' xx w ] xx h ];
for ^h -> \y { @grid[y;0] = "█"; @grid[y;*-1] = "█" }
for ^w -> \x { @grid[0;x] = "█"; @grid[*-1;x] = "█" }

for (graph.barriers) -> \d { @grid[d[0]+1][d[1]+1] = "█" }
for @(route)         -> \d { @grid[d[0]+1][d[1]+1] = "x" }

.join.say for @grid ;

say "Path cost : ", cost, " and route : ", route;
#--------------------------------------------------------- 17 abbreviations-easy
<
Add ALTer  BAckup Bottom  CAppend Change SCHANGE  CInsert CLAst COMPress COpy
COUnt COVerlay CURsor DELete CDelete Down DUPlicate Xedit EXPand EXTract Find
NFind NFINDUp NFUp CFind FINdup FUp FOrward GET Help HEXType Input POWerinput
Join SPlit SPLTJOIN  LOAD  Locate CLocate  LOWercase UPPercase  LPrefix MACRO
MErge MODify MOve MSG Next Overlay PARSE PREServe PURge PUT PUTD  Query  QUIT
READ  RECover REFRESH RENum REPeat  Replace CReplace  RESet  RESTore  RGTLEFT
RIght LEft  SAVE  SET SHift SI  SORT  SOS  STAck STATus  TOP TRAnsfer Type Up
> ~~ m:g/ ((<.:Lu>+) <.:Ll>*) /;

my %abr = '' => '', |$/.map: {
    my $abbrv = .[0].Str.fc;
    |map { $abbrv.substr( 0, $_ ) => $abbrv.uc },
    .[0][0].Str.chars .. $abbrv.chars
};

sub abbr-easy ( $str ) { %abr{$str.trim.fc} // '*error*' }

# Testing
for 'riG   rePEAT copies  put mo   rest    types   fup.    6       poweRin', '' -> $str {
    put ' Input: ', $str;
    put 'Output: ', join ' ', $str.words.map: &abbr-easy;
}
#------------------------------------------------------- 18 abbreviations-simple
<
add 1  alter 3  backup 2  bottom 1  Cappend 2  change 1  Schange  Cinsert 2  Clast 3
compress 4 copy 2 count 3 Coverlay 3 cursor 3  delete 3 Cdelete 2  down 1  duplicate
3 xEdit 1 expand 3 extract 3  find 1 Nfind 2 Nfindup 6 NfUP 3 Cfind 2 findUP 3 fUP 2
forward 2  get  help 1 hexType 4  input 1 powerInput 3  join 1 split 2 spltJOIN load
locate 1 Clocate 2 lowerCase 3 upperCase 3 Lprefix 2  macro  merge 2 modify 3 move 2
msg  next 1 overlay 1 parse preserve 4 purge 3 put putD query 1 quit  read recover 3
refresh renum 3 repeat 3 replace 1 Creplace 2 reset 3 restore 4 rgtLEFT right 2 left
2  save  set  shift 2  si  sort  sos  stack 3 status 4 top  transfer 3  type 1  up 1
> ~~ m:g/ (<.alpha>+) \s* (\d*) /;

my %abr = '' => '', |$/.map: {
    my $abbrv = .[0].Str.fc;
    |map { $abbrv.substr( 0, $_ ) => $abbrv.uc },
    +(.[1].Str || .[0].Str.chars) .. .[0].Str.chars;
};

sub abbr-simple ( $str ) { %abr{$str.trim.fc} // '*error*' }

# Testing
for 'riG   rePEAT copies  put mo   rest    types   fup.    6       poweRin', '' -> $str {
    put ' Input: ', $str;
    put 'Output: ', join ' ', $str.words.map: &abbr-simple;
}
#----------------------------------------------------- 19 abc-incremental-counts
say "\nUsing ", my $dict = 'unixdict.txt';
my @tests = <a b c>, 1, <t h e>, 1, <c i o>, 2;
filter $dict.IO.words;

say "\n\nUsing ", $dict = 'words_alpha.txt';
@tests[1,3,5]».++;
filter $dict.IO.words;

sub filter (@words) {
    for @tests -> ($a, $b, $c), $min {
        say "\nLetters: ($a $b $c) -- Minimum count $min\n",
          @words.race.grep(&incremental).sort.join("\n") || '<none>';

        sub incremental ($word) {
            my @v = $word.comb.Bag{$a,$b,$c}.values.sort;
            (@v[0] >= $min) && (@v[0]+1 == @v[1]) && (@v[0]+2 == @v[2])
        }
    }
}
#---------------------------------------------------------------- 20 abc-problem
multi can-spell-word(Str $word, @blocks) {
    my @regex = @blocks.map({ my @c = .comb; rx/<@c>/ }).grep: { .ACCEPTS($word.uc) }
    can-spell-word $word.uc.comb.list, @regex;
}

multi can-spell-word([$head,*@tail], @regex) {
    for @regex -> $re {
        if $head ~~ $re {
            return True unless @tail;
            return False if @regex == 1;
            return True if can-spell-word @tail, list @regex.grep: * !=== $re;
        }
    }
    False;
}

my @b = <BO XK DQ CP NA GT RE TG QD FS JW HU VI AN OB ER FS LY PC ZM>;

for <A BaRK BOoK tREaT COmMOn SqUAD CoNfuSE> {
    say "$_     &can-spell-word($_, @b)";
}
#-------------------------------------------------------------- 21 abstract-type
use v6;

role A {
    # must be filled in by the class it is composed into
    method abstract() { ... };

    # can be overridden in the class, but that's not mandatory
    method concrete() { say '# 42' };
}

class SomeClass does A {
    method abstract() {
        say "# made concrete in class"
    }
}

my $obj = SomeClass.new;
$obj.abstract();
$obj.concrete();

# output:
# made concrete in class
# 42
#---------------------- 22 abundant-deficient-and-perfect-number-classifications
sub propdivsum (\x) {
    my @l = 1 if x > 1;
    (2 .. x.sqrt.floor).map: -> \d {
        unless x % d { @l.push: d; my \y = x div d; @l.push: y if y != d }
    }
    sum @l
}

say bag (1..20000).map: { propdivsum($_) <=> $_ }
#------------------------------------------------------- 23 abundant-odd-numbers
sub odd-abundant (\x) {
    my @l = x.is-prime ?? 1 !! flat
    1, (3 .. x.sqrt.floor).map: -> \d {
         next unless d +& 1;
         my \y = x div d;
         next if y * d !== x;
         d !== y ?? (d, y) !! d
    };
    @l.sum > x ?? @l.sort !! Empty;
}

sub odd-abundants (Int :$start-at is copy) {
    $start-at = ( $start-at + 2 ) div 3;
    $start-at += $start-at %% 2;
    $start-at *= 3;
    ($start-at, *+6 ... *).hyper.map: {
        next unless my $oa = cache .&odd-abundant;
        sprintf "%6d: divisor sum: {$oa.join: ' + '} = {$oa.sum}", $_
    }
}

put 'First 25 abundant odd numbers:';
.put for odd-abundants( :start-at(1) )[^25];

put "\nOne thousandth abundant odd number:\n" ~ odd-abundants( :start-at(1) )[999] ~

"\n\nFirst abundant odd number above one billion:\n" ~ odd-abundants( :start-at(1_000_000_000) ).head;
#-------------------------------------------------------- 24 accumulator-factory
sub accum ($n is copy) { sub { $n += $^x } }

#Example use:
my $a = accum 5;
$a(4.5);
say $a(.5);   # Prints "10".

# You can also use the "&" sigil to create a function that behaves syntactically
# like any other function (i.e. no sigil nor parentheses needed to call it):

my &b = accum 5;
say b 3;   # Prints "8".
#------------------------------------------------------- 25 ackermann-function-3
proto A(Int \𝑚, Int \𝑛) { (state @)[𝑚][𝑛] //= {*} }

multi A(0,      Int \𝑛) { 𝑛 + 1 }
multi A(1,      Int \𝑛) { 𝑛 + 2 }
multi A(2,      Int \𝑛) { 3 + 2 * 𝑛 }
multi A(3,      Int \𝑛) { 5 + 8 * (2 ** 𝑛 - 1) }

multi A(Int \𝑚, 0     ) { A(𝑚 - 1, 1) }
multi A(Int \𝑚, Int \𝑛) { A(𝑚 - 1, A(𝑚, 𝑛 - 1)) }

# Testing:
say A(4,1);
say .chars, " digits starting with ", .substr(0,50), "..." given A(4,2);
#---------------------------- 26 add-a-variable-to-a-class-instance-at-runtime-1
class Bar { }             # an empty class

my $object = Bar.new;     # new instance

role a_role {             # role to add a variable: foo,
   has $.foo is rw = 2;   # with an initial value of 2
}

$object does a_role;      # compose in the role

say $object.foo;          # prints: 2
$object.foo = 5;          # change the variable
say $object.foo;          # prints: 5

my $ohno = Bar.new;       # new Bar object
#say $ohno.foo;           # runtime error, base Bar class doesn't have the variable foo

my $this = $object.new;   # instantiate a new Bar derived from $object
say $this.foo;            # prints: 2 - original role value

my $that = $object.clone; # instantiate a new Bar derived from $object copying any variables
say $that.foo;            # 5 - value from the cloned object
#---------------------------- 27 add-a-variable-to-a-class-instance-at-runtime-2
my $lue = 42 but role { has $.answer = "Life, the Universe, and Everything" }

say $lue;          # 42
say $lue.answer;   # Life, the Universe, and Everything
#---------------------------- 28 add-a-variable-to-a-class-instance-at-runtime-3
use MONKEY-TYPING;
augment class Int {
    method answer { "Life, the Universe, and Everything" }
}
say 42.answer;     # Life, the Universe, and Everything
#------------------------------------------------------------ 29 additive-primes
unit sub MAIN ($limit = 500);
say "{+$_} additive primes < $limit:\n{$_».fmt("%" ~ $limit.chars ~ "d").batch(10).join("\n")}",
    with ^$limit .grep: { .is-prime && .comb.sum.is-prime }
#----------------------------------------------------- 30 aho-corasick-algorithm
# 20250615 Raku programming solution

class Node {
   has %!son;           # Transitions for each character
   has Int $!fail = 0;  # Failure link
   has Int $!idx = 0;   # Index of the pattern ending at this node
   has Int $!ans = 0;   # Answer for occurrences of patterns
   has Int $!du = 0;    # Incoming edge count for topological sorting

   method add-transition(Str $char, Int $state) { %!son{$char} = $state }
   method get-transition(Str $char) { %!son{$char} // 0 }
   method set-fail(Int $state) { $!fail = $state }
   method fail { $!fail }
   method set-idx(Int $index) { $!idx = $index }
   method idx { $!idx }
   method increment-ans { $!ans++ }
   method add-ans(Int $count) { $!ans += $count }
   method ans { $!ans }
   method increment-du { $!du++ }
   method decrement-du { $!du-- }
   method du { $!du }
}

class ACAutomaton {
   has @!trie = Node.new;    # Trie nodes
   has Int $!tot = 0;        # Total number of nodes
   has Int $!pattern-id = 0; # Pattern ID counter
   has @!final-ans;          # Final results for patterns

   method insert(Str $pattern) {
      my $current = 0;
      for $pattern.comb -> $char {
         unless @!trie[$current].get-transition($char) {
            $!tot++;
            @!trie.push(Node.new);
            @!trie[$current].add-transition($char, $!tot);
         }
         $current = @!trie[$current].get-transition($char);
      }
      if @!trie[$current].idx == 0 {
         $!pattern-id++;
         @!trie[$current].set-idx($!pattern-id);
      }
      @!trie[$current].idx;
   }

   method build {
      my @queue = gather for 'a'..'z' -> $char {
         if my $state = @!trie[0].get-transition($char) { take $state }
      }

      while my $state = @queue.shift {
         for 'a'..'z' -> $char {
            my $fail = @!trie[$state].fail;
            if my $son = @!trie[$state].get-transition($char) {
               @!trie[$son].set-fail(@!trie[$fail].get-transition($char));
               @!trie[@!trie[$son].fail].increment-du;
               @queue.push($son);
            } else {
               @!trie[$state].add-transition($char, @!trie[$fail].get-transition($char));
            }
         }
      }
   }

   method query(Str $text) {
      my $current = 0;
      for $text.comb -> $char {
         $current = @!trie[$current].get-transition($char);
         @!trie[$current].increment-ans;
      }
   }

   method calculate-final-answers {
      @!final-ans = (0 xx ($!pattern-id + 1));
      my @queue = (0..$!tot).grep: { @!trie[$_].du == 0 }

      while @queue.Bool {
         my $idx = @!trie[my $state = @queue.shift].idx;
         @!final-ans[$idx] = @!trie[$state].ans if $idx;
         @!trie[my $fail = @!trie[$state].fail].add-ans(@!trie[$state].ans);
         @!trie[$fail].decrement-du;
         if @!trie[$fail].du == 0 { @queue.push($fail) }
      }
   }

   method get-final-answers { @!final-ans }
}

my @patterns = <a bb aa abaa abaaa>;
my $text = "abaaabaa";
my $aca = ACAutomaton.new;
my @end-node-ids = @patterns.map: { $aca.insert: $_ }

$aca.build;
$aca.query($text);
$aca.calculate-final-answers;

for ^@patterns.elems -> $i {
   my $id = @end-node-ids[$i];
   say "The pattern '{@patterns[$i]}' appears {$aca.get-final-answers[$id]} times."
}
#------------------------------------------------------------------- 31 air-mass
constant DEG = pi/180;    # degrees to radians
constant RE  = 6371000;   # Earth radius in meters
constant dd  = 0.001;     # integrate in this fraction of the distance already covered
constant FIN = 10000000;  # integrate only to a height of 10000km, effectively infinity

#| Density of air as a function of height above sea level
sub rho ( \a ) { exp( -a / 8500 ) }

sub height ( \a, \z, \d ) {
    # a = altitude of observer
    # z = zenith angle (in degrees)
    # d = distance along line of sight
    my \AA = RE + a;
    sqrt( AA² + d² - 2*d*AA*cos((180-z)*DEG) ) - AA;
}

#| Integrates density along the line of sight
sub column_density ( \a, \z ) {
    my $sum = 0;
    my $d   = 0;
    while $d < FIN {
        my \delta = max(dd, (dd)*$d);  # Adaptive step size to avoid it taking forever
        $sum += rho(height(a, z, $d + delta/2))*delta;
        $d   += delta;
    }
    $sum;
}

sub airmass ( \a, \z ) {
    column_density( a, z ) /
    column_density( a, 0 )
}

say 'Angle     0 m              13700 m';
say '------------------------------------';
say join "\n", (0, 5 ... 90).hyper(:3batch).map: -> \z {
    sprintf "%2d      %11.8f      %11.8f", z, airmass(    0, z), airmass(13700, z);
}
#-------------------------------------------------------- 32 aks-test-for-primes
constant expansions = [1], [1,-1], -> @prior { [|@prior,0 Z- 0,|@prior] } ... *;

sub polyprime($p where 2..*) { so expansions[$p].[1 ..^ */2].all %% $p }

# Showing the expansions:

say ' p: (x-1)ᵖ';
say '-----------';

sub super ($n) {
    $n.trans: '0123456789'
           => '⁰¹²³⁴⁵⁶⁷⁸⁹';
}

for ^13 -> $d {
    say $d.fmt('%2i: '), (
        expansions[$d].kv.map: -> $i, $n {
            my $p = $d - $i;
            [~] gather {
                take < + - >[$n < 0] ~ ' ' unless $p == $d;
                take $n.abs                unless $p == $d > 0;
                take 'x'                   if $p > 0;
                take super $p - $i         if $p > 1;
            }
        }
    )
}

#  And testing the function:

print "\nPrimes up to 100:\n  { grep &polyprime, 2..100 }\n";
#------------------------------------------------------------ 33 align-columns-1
my @lines =
q|Given$a$text$file$of$many$lines,$where$fields$within$a$line$
are$delineated$by$a$single$'dollar'$character,$write$a$program
that$aligns$each$column$of$fields$by$ensuring$that$words$in$each$
column$are$separated$by$at$least$one$space.
Further,$allow$for$each$word$in$a$column$to$be$either$left$
justified,$right$justified,$or$center$justified$within$its$column.
|.lines;

my @widths;

for @lines { for .split('$').kv { @widths[$^key] max= $^word.chars; } }
for @lines { say |.split('$').kv.map: { (align @widths[$^key], $^word) ~ " "; } }

sub align($column_width, $word, $aligment = @*ARGS[0]) {
        my $lr = $column_width - $word.chars;
        my $c  = $lr / 2;
        given ($aligment) {
                when "center" { " " x $c.ceiling ~ $word ~ " " x $c.floor }
                when "right"  { " " x $lr        ~ $word                  }
                default       {                    $word ~ " " x $lr      }
        }
}
#------------------------------------------- 34 aliquot-sequence-classifications
sub propdivsum (\x) {
    my @l = x > 1;
    (2 .. x.sqrt.floor).map: -> \d {
        unless x % d { my \y = x div d; y == d ?? @l.push: d !! @l.append: d,y }
    }
    sum @l;
}

multi quality (0,1)  { 'perfect ' }
multi quality (0,2)  { 'amicable' }
multi quality (0,$n) { "sociable-$n" }
multi quality ($,1)  { 'aspiring' }
multi quality ($,$n) { "cyclic-$n" }

sub aliquotidian ($x) {
    my %seen;
    my @seq = $x, &propdivsum ... *;
    for 0..16 -> $to {
        my $this = @seq[$to] or return "$x\tterminating\t[@seq[^$to]]";
        last if $this > 140737488355328;
        if %seen{$this}:exists {
            my $from = %seen{$this};
            return "$x\t&quality($from, $to-$from)\t[@seq[^$to]]";
        }
        %seen{$this} = $to;
    }
    "$x non-terminating\t[{@seq}]";
}

aliquotidian($_).say for flat
    1..10,
    11, 12, 28, 496, 220, 1184, 12496, 1264460,
    790, 909, 562, 1064, 1488,
    15355717786080;
#------------------------------------------------------------- 35 almost-prime-1
sub is-k-almost-prime($n is copy, $k) returns Bool {
    loop (my ($p, $f) = 2, 0; $f < $k && $p*$p <= $n; $p++) {
        $n /= $p, $f++ while $n %% $p;
    }
    $f + ($n > 1) == $k;
}

for 1 .. 5 -> $k {
    say ~.[^10]
        given grep { is-k-almost-prime($_, $k) }, 2 .. *
}
#------------------------------------------------------------- 36 almost-prime-2
constant @primes = 2, |(3, 5, 7 ... *).grep: *.is-prime;

multi sub factors(1) { 1 }
multi sub factors(Int $remainder is copy) {
    gather for @primes -> $factor {
        # if remainder < factor², we're done
        if $factor * $factor > $remainder {
            take $remainder if $remainder > 1;
            last;
        }
        # How many times can we divide by this prime?
        while $remainder %% $factor {
            take $factor;
            last if ($remainder div= $factor) === 1;
        }
    }
}

constant @factory = lazy 0..* Z=> flat (0, 0, map { +factors($_) }, 2..*);

sub almost($n) { map *.key, grep *.value == $n, @factory }

put almost($_)[^10] for 1..5;
#---------------------------------------------------------------------- 37 amb-1
#| an array of four words, that have more possible values.
#| Normally we would want `any' to signify we want any of the values, but well negate later and thus we need `all'
my @a =
(all «the that a»),
(all «frog elephant thing»),
(all «walked treaded grows»),
(all «slowly quickly»);

sub test (Str $l, Str $r) {
    $l.ends-with($r.substr(0,1))
}

(sub ($w1, $w2, $w3, $w4){
  # return if the values are false
  return unless [and] test($w1, $w2), test($w2, $w3),test($w3, $w4);
  # say the results. If there is one more Container layer around them this doesn't work, this is why we need the arguments here.
  say "$w1 $w2 $w3 $w4"
})(|@a); # supply the array as argumetns

#---------------------------------------------------------------------- 38 amb-2
# The Task #
my @firstSet  = «the that a»;
my @secondSet = «frog elephant thing»;
my @thirdSet  = «walked treaded grows»;
my @fourthSet = «slowly quickly»;

.say for doAmb [@firstSet, @secondSet, @thirdSet, @fourthSet];


sub doAmb( @lol ) {	# Takes out the correct sentences.
	my @sentences = map *.join(" "), [X] @lol;
	grep &isAmb, @sentences;
}

sub isAmb( $sentence ) {	# Checks `$sentence` for correctness.
	$sentence !~~ / (.) " " (.)	<!{$0 eq $1}> /	# <https://docs.raku.org/language/regexes#Regex_boolean_condition_check>
}
#------------------------------------------------------------- 39 amicable-pairs
sub propdivsum (\x) {
    my @l = 1 if x > 1;
    (2 .. x.sqrt.floor).map: -> \d {
        unless x % d { @l.push: d; my \y = x div d; @l.push: y if y != d }
    }
    sum @l
}

(1..20000).race.map: -> $i {
    my $j = propdivsum($i);
    say "$i $j" if $j > $i and $i == propdivsum($j);
}
#---------------------------------------------------------- 40 anagram-generator
unit sub MAIN ($in is copy = '', :$dict = 'unixdict.txt');

say 'Enter a word or phrase to be anagramed. (Loading dictionary)' unless $in.chars;

# Load the words into a word / Bag hash
my %words = $dict.IO.slurp.lc.words.race.map: { .comb(/\w/).join => .comb(/\w/).Bag };

# Declare some globals
my ($phrase, $count, $bag);

loop {
    ($phrase, $count, $bag) = get-phrase;
    find-anagram Hash.new: %words.grep: { .value ⊆ $bag };
}

sub get-phrase {
    my $prompt = $in.chars ?? $in !! prompt "\nword or phrase? (press Enter to quit) ";
    $in = '';
    exit unless $prompt;
    $prompt,
    +$prompt.comb(/\w/),
    $prompt.lc.comb(/\w/).Bag;
}

sub find-anagram (%subset, $phrase is copy = '', $last = Inf) {
    my $remain = $bag ∖ $phrase.comb(/\w/).Bag;        # Find the remaining letters
    my %filtered = %subset.grep: { .value ⊆ $remain }; # Find words using the remaining letters
    my $sofar = +$phrase.comb(/\w/);                   # Get the count of the letters used so far
    for %filtered.sort: { -.key.chars, ~.key } {       # Sort by length then alphabetically then iterate
        my $maybe = +.key.comb(/\w/);                  # Get the letter count of the maybe addition
        next if $maybe > $last;                        # Next if it is longer than last - only consider descending length words
        next if $maybe == 1 and $last == 1;            # Only allow one one character word
        next if $count - $sofar - $maybe > $maybe;     # Try to balance word lengths
        if $sofar + $maybe == $count {                 # It's an anagram
            say $phrase ~ ' ' ~ .key and next;         # Display it and move on
        } else {                                       # Not yet a full anagram, recurse
            find-anagram %filtered, $phrase ~ ' ' ~ .key, $maybe;
        }
    }
}
#-------------------------------------- 41 angle-difference-between-two-bearings
sub infix:<∠> (Real $b1, Real $b2) {
   (my $b = ($b2 - $b1 + 720) % 360) > 180 ?? $b - 360 !! $b;
}

for 20, 45,
   -45, 45,
   -85, 90,
   -95, 90,
   -45, 125,
   -45, 145,
   29.4803, -88.6381,
   -78.3251, -159.036,
   -70099.74233810938, 29840.67437876723,
   -165313.6666297357, 33693.9894517456,
   1174.8380510598456, -154146.66490124757,
   60175.77306795546, 42213.07192354373

  -> $b1, $b2 { printf "%10.2f %10.2f = %8.2f\n", $b1, $b2, $b1 ∠ $b2 }
#---------------------------- 42 angles-geometric-normalization-and-conversion-1
my @units =
    { code => 'd', name => 'degrees' , number =>  360 },
    { code => 'g', name => 'gradians', number =>  400 },
    { code => 'm', name => 'mills'   , number => 6400 },
    { code => 'r', name => 'radians' , number =>  tau },
;

my Code %cvt = (@units X @units).map: -> ($a, $b) {
    "{$a.<code>}2{$b.<code>}" => sub ($angle) {
        my $norm = $angle % $a.<number>
                 - ( $a.<number> if $angle < 0 );
        $norm * $b.<number> / $a.<number>
    }
}

say '     Angle Unit     ', @units».<name>».tc.fmt('%11s');

for -2, -1, 0, 1, 2, tau, 16, 360/tau, 360-1, 400-1, 6400-1, 1_000_000 -> $angle {
    say '';
    for @units -> $from {
        my @sub_keys = @units.map: { "{$from.<code>}2{.<code>}" };

        my @results = %cvt{@sub_keys}».($angle);

        say join ' ', $angle      .fmt('%10g'),
                      $from.<name>.fmt('%-8s'),
                      @results    .fmt('%11g');
    }
}
#---------------------------- 43 angles-geometric-normalization-and-conversion-2
sub postfix:<t>( $t ) { my $a = $t % 1 * τ;           $t >=0 ?? $a !! $a - τ }
sub postfix:<d>( $d ) { my $a = $d % 360 * τ / 360;   $d >=0 ?? $a !! $a - τ }
sub postfix:<g>( $g ) { my $a = $g % 400 * τ / 400;   $g >=0 ?? $a !! $a - τ }
sub postfix:<m>( $m ) { my $a = $m % 6400 * τ / 6400; $m >=0 ?? $a !! $a - τ }
sub postfix:<r>( $r ) { my $a = $r % τ;               $r >=0 ?? $a !! $a - τ }

sub postfix:«->t» ($angle) { my $a = $angle / τ;        ($angle < 0 and $a == -1)    ?? -0 !! $a }
sub postfix:«->d» ($angle) { my $a = $angle / τ * 360;  ($angle < 0 and $a == -360)  ?? -0 !! $a }
sub postfix:«->g» ($angle) { my $a = $angle / τ * 400;  ($angle < 0 and $a == -400)  ?? -0 !! $a }
sub postfix:«->m» ($angle) { my $a = $angle / τ * 6400; ($angle < 0 and $a == -6400) ?? -0 !! $a }
sub postfix:«->r» ($angle) { my $a = $angle;            ($angle < 0 and $a == -τ)    ?? -0 !! $a }

for <-2 -1 0 1 2 6.2831853 16 57.2957795 359 399 6399 1000000> -> $a {
    say '';
    say '  Quantity  Unit      ', <turns degrees gradians mils radians>.fmt('%15s');
    for 'turns', &postfix:«t», 'degrees', &postfix:«d», 'gradians', &postfix:«g»,
        'mils',  &postfix:«m», 'radians', &postfix:«r»
      -> $unit, &f {
            printf "%10s %-10s %15s %15s %15s %15s %15s\n", $a, $unit,
            |($a.&f->t, $a.&f->d, $a.&f->g, $a.&f->m, $a.&f->r)».round(.00000001);
    }
}
#------------------------------------------------------ 44 anonymous-recursion-1
sub fib($n) {
    die "Naughty fib" if $n < 0;
    return {
        $_ < 2
            ?? $_
            !!  &?BLOCK($_-1) + &?BLOCK($_-2);
    }($n);
}

say fib(10);
#------------------------------------------------------ 45 anonymous-recursion-2
constant @fib = 0, 1, *+* ... *;
say @fib[10];
#---------------------------------------------------------------- 46 anti-primes
sub propdiv (\x) {
    my @l = 1 if x > 1;
    (2 .. x.sqrt.floor).map: -> \d {
        unless x % d { @l.push: d; my \y = x div d; @l.push: y if y != d }
    }
    @l
}

my $last = 0;

my @anti-primes = lazy 1, |(|(2..59), 60, *+60 … *).grep: -> $c {
    my \mx = +propdiv($c);
    next if mx <= $last;
    $last = mx;
    $c
}

my $upto = 5e5;

put "First 20 anti-primes:\n{ @anti-primes[^20] }";

put "\nCount of anti-primes <= $upto: {+@anti-primes[^(@anti-primes.first: * > $upto, :k)]}";
#------------------------------------------------------------ 47 ap-rys-constant
sub postfix:<!> (Int $n) { (constant f = 1, |[\×] 1..*)[$n] }

say 'Actual value to 100 decimal places:';
say '1.2020569031595942853997381615114499907649862923404988817922715553418382057863130901864558736093352581';

say "\nFirst 1000 terms of ζ(3) truncated to 100 decimal places. (accurate to 6 decimal places):";
say (1..1000).map({FatRat.new: 1, .³}).sum.substr: 0, 102;

say "\nFirst 158 terms of Markov / Apéry representation truncated to 100 decimal places:";
say (5/2 × (1..158).map( -> \k { (-1)**(k-1) × FatRat.new: k!², ((2×k)! × k³) } ).sum).substr: 0, 102;

say "\nFirst 20 terms of Wedeniwski representation truncated to 100 decimal places:";
say (1/24 × ((^20).map: -> \k {
    (-1)**k × FatRat.new: (2×k+1)!³ × (2×k)!³ × k!³ × (126392×k⁵ + 412708×k⁴ + 531578×k³ + 336367×k² + 104000×k + 12463), (3×k+2)! × (4×k+3)!³
}).sum).substr: 0, 102;
#--------------------------------- 48 append-numbers-at-same-position-in-strings
my @lists = 1..9, 10..18, 19..27;
put [Z~] @lists;         # the task
put [Z~] @lists».flip;   # each component reversed
put [RZ~] @lists;        # in reversed order
put ([Z~] @lists)».flip; # reversed components in reverse order
#----------------------------------------------- 49 apply-a-callback-to-an-array
sub function { 2 * $^x + 3 };
my @array = 1 .. 5;

# via map function
.say for map &function, @array;

# via map method
.say for @array.map(&function);

# via for loop
for @array {
    say function($_);
}

# via the "hyper" metaoperator and method indirection
say @array».&function;

# we neither need a variable for the array nor for the function
say [1,2,3]>>.&({ $^x + 1});
#----------------------------------------------------- 50 approximate-equality-1
say 0.1 + 0.2 + 0.3 + 0.4 === 1.0000000000000000000000000000000000000000000000000000000000000000000000000; # True
#----------------------------------------------------- 51 approximate-equality-2
for
    100000000000000.01, 100000000000000.011,
    100.01, 100.011,
    10000000000000.001 / 10000.0, 1000000000.0000001000,
    0.001, 0.0010000001,
    0.000000000000000000000101, 0.0,
    sqrt(2) * sqrt(2), 2.0,
    -sqrt(2) * sqrt(2), -2.0,
    100000000000000003.0, 100000000000000004.0,
    3.14159265358979323846, 3.14159265358979324

  -> $a, $b {
    say "$a ≅ $b: ", $a ≅ $b;
}

say "\nTolerance may be adjusted.";

say 22/7, " ≅ ", π, ": ", 22/7 ≅ π;
{ # Localize the tolerance to only this block
  my $*TOLERANCE = .001;
  say 22/7, " ≅ ", π, ": ", 22/7 ≅ π;
}
#------------------------------------- 52 arbitrary-precision-integers-included-
given [**] 5, 4, 3, 2 {
  use Test;
  ok /^ 62060698786608744707 <digit>* 92256259918212890625 $/,
     '5**4**3**2 has expected first and last twenty digits';
  printf 'This number has %d digits', .chars;
}
#------------------------- 53 arithmetic-coding-as-a-generalized-change-of-radix
sub cumulative_freq(%freq) {
    my %cf;
    my $total = 0;
    for %freq.keys.sort -> $c {
        %cf{$c} = $total;
        $total += %freq{$c};
    }
    return %cf;
}

sub arithmethic_coding($str, $radix) {
    my @chars = $str.comb;

    # The frequency characters
    my %freq;
    %freq{$_}++ for @chars;

    # The cumulative frequency table
    my %cf = cumulative_freq(%freq);

    # Base
    my $base = @chars.elems;

    # Lower bound
    my $L = 0;

    # Product of all frequencies
    my $pf = 1;

    # Each term is multiplied by the product of the
    # frequencies of all previously occurring symbols
    for @chars -> $c {
        $L = $L*$base + %cf{$c}*$pf;
        $pf *= %freq{$c};
    }

    # Upper bound
    my $U = $L + $pf;

    my $pow = 0;
    loop {
        $pf div= $radix;
        last if $pf == 0;
        ++$pow;
    }

    my $enc = ($U - 1) div ($radix ** $pow);
    ($enc, $pow, %freq);
}

sub arithmethic_decoding($encoding, $radix, $pow, %freq) {

    # Multiply encoding by radix^pow
    my $enc = $encoding * $radix**$pow;

    # Base
    my $base = [+] %freq.values;

    # Create the cumulative frequency table
    my %cf = cumulative_freq(%freq);

    # Create the dictionary
    my %dict;
    for %cf.kv -> $k,$v {
        %dict{$v} = $k;
    }

    # Fill the gaps in the dictionary
    my $lchar;
    for ^$base -> $i {
        if (%dict{$i}:exists) {
            $lchar = %dict{$i};
        }
        elsif (defined $lchar) {
            %dict{$i} = $lchar;
        }
    }

    # Decode the input number
    my $decoded = '';
    for reverse(^$base) -> $i {

        my $pow = $base**$i;
        my $div = $enc div $pow;

        my $c  = %dict{$div};
        my $fv = %freq{$c};
        my $cv = %cf{$c};

        my $rem = ($enc - $pow*$cv) div $fv;

        $enc = $rem;
        $decoded ~= $c;
    }

    # Return the decoded output
    return $decoded;
}

my $radix = 10;    # can be any integer greater or equal with 2

for <DABDDB DABDDBBDDBA ABRACADABRA TOBEORNOTTOBEORTOBEORNOT> -> $str {
    my ($enc, $pow, %freq) = arithmethic_coding($str, $radix);
    my $dec = arithmethic_decoding($enc, $radix, $pow, %freq);

    printf("%-25s=> %19s * %d^%s\n", $str, $enc, $radix, $pow);

    if ($str ne $dec) {
        die "\tHowever that is incorrect!";
    }
}
#--------------------------------------------------------- 54 arithmetic-complex
my $a = 1 + i;
my $b = pi + 1.25i;

.say for $a + $b, $a * $b, -$a, 1 / $a, $a.conj;
.say for $a.abs, $a.sqrt, $a.re, $a.im;
#------------------------------------------------------ 55 arithmetic-evaluation
sub ev (Str $s --> Numeric) {

    grammar expr {
        token TOP { ^ <sum> $ }
        token sum { <product> (('+' || '-') <product>)* }
        token product { <factor> (('*' || '/') <factor>)* }
        token factor { <unary_minus>? [ <parens> || <literal> ] }
        token unary_minus { '-' }
        token parens { '(' <sum> ')' }
        token literal { \d+ ['.' \d+]? || '.' \d+ }
    }

    my sub minus ($b) { $b ?? -1 !! +1 }

    my sub sum ($x) {
        [+] flat product($x<product>), map
            { minus($^y[0] eq '-') * product $^y<product> },
            |($x[0] or [])
    }

    my sub product ($x) {
        [*] flat factor($x<factor>), map
            { factor($^y<factor>) ** minus($^y[0] eq '/') },
            |($x[0] or [])
    }

    my sub factor ($x) {
        minus($x<unary_minus>) * ($x<parens>
          ?? sum $x<parens><sum>
          !! $x<literal>)
    }

    expr.parse([~] split /\s+/, $s);
    $/ or fail 'No parse.';
    sum $/<sum>;

}

# Testing:

say ev '5';                                    #   5
say ev '1 + 2 - 3 * 4 / 5';                    #   0.6
say ev '1 + 5*3.4 - .5  -4 / -2 * (3+4) -6';   #  25.5
say ev '((11+15)*15)* 2 + (3) * -4 *1';        # 768
#------------------------------------------------ 56 arithmetic-geometric-mean-1
sub agm( $a is copy, $g is copy ) {
    ($a, $g) = ($a + $g)/2, sqrt $a * $g until $a ≅ $g;
    return $a;
}

say agm 1, 1/sqrt 2;
#------------------------------------------------ 57 arithmetic-geometric-mean-2
sub agm( $a, $g ) {
    $a ≅ $g ?? $a !! agm(|@$_)
        given ($a + $g)/2, sqrt $a * $g;
}

say agm 1, 1/sqrt 2;
#------------------------------------------------ 58 arithmetic-geometric-mean-3
sub agm {
  ($^z, {(.re+.im)/2 + (.re*.im).sqrt*1i} ... * ≅ *)
  .tail.re
}

say agm 1 + 1i/2.sqrt
#------------------------------------- 59 arithmetic-geometric-mean-calculate-pi
constant number-of-decimals = 100;

multi sqrt(Int $n) {
  (10**($n.chars div 2), { ($_ + $n div $_) div 2 } ... * == *).tail
}

multi sqrt(FatRat $r --> FatRat) {
  return FatRat.new:
    sqrt($r.numerator * 10**(number-of-decimals*2) div $r.denominator),
    10**number-of-decimals;
}

my FatRat ($a, $n) = 1.FatRat xx 2;
my FatRat $g = sqrt(1/2.FatRat);
my $z = .25;

for ^10 {
  given [ ($a + $g)/2, sqrt($a * $g) ] {
    $z -= (.[0] - $a)**2 * $n;
    $n += $n;
    ($a, $g) = @$_;
    say ($a ** 2 / $z).substr: 0, 2 + number-of-decimals;
  }
}
#--------------------------------------------------------- 60 arithmetic-integer
my Int $a = get.floor;
my Int $b = get.floor;

say 'sum:              ', $a + $b;
say 'difference:       ', $a - $b;
say 'product:          ', $a * $b;
say 'integer quotient: ', $a div $b;
say 'remainder:        ', $a % $b;
say 'exponentiation:   ', $a**$b;
#------------------------------------------------------ 61 arithmetic-rational-2
for 1.0, 1.1, 1.2 ... 10 { .say }
#-------------------------------------------------------- 62 array-concatenation
my @array1 = 1, 2, 3;
my @array2 = 4, 5, 6;

# If you want to concatenate two array to form a third,
# either use the slip operator "|", to flatten each array.

my @array3 = |@array1, |@array2;
say @array3;

# or just flatten both arrays in one fell swoop

@array3 = flat @array1, @array2;
say @array3;

# On the other hand, if you just want to add the elements
# of the second array to the first, use the .append method.

say @array1.append: @array2;
#------------------------------------------------------------- 63 array-length-1
my @array = <apple orange>;

say @array.elems;  # 2
say elems @array;  # 2
say + @array;      # 2
say @array + 0;    # 2
#------------------------------------------------------------- 64 array-length-2
my @infinite = 1 .. Inf;  # 1, 2, 3, 4, ...

say @infinite[5000];  # 5001
say @infinite.elems;  # Throws exception "Cannot .elems a lazy list"
#--------------------------------------------------------------------- 65 arrays
my @arr;

push @arr, 1;
push @arr, 3;

@arr[0] = 2;

say @arr[0];
#--------------------------------------------------- 66 ascii-control-characters
enum C0 (|(^32).map({ (0x2400 + $_).chr => $_ }), '␡' => 127);

printf "Ord: %3d, Unicode: %s, Enum: %s\n", $_, .uniname, C0($_)
   for (^128).grep: {.chr ~~ /<:Cc>/}
#------------------------------------------------- 67 associative-array-creation
my %h1 = key1 => 'val1', 'key-2' => 2, three => -238.83, 4 => 'val3';
my %h2 = 'key1', 'val1', 'key-2', 2, 'three', -238.83, 4, 'val3';

# Creating a hash from two lists using a metaoperator.

my @a = 1..5;
my @b = 'a'..'e';
my %h = @a Z=> @b;

# Hash elements and hash slices now use the same sigil as the whole hash. This is construed as a feature.
# Curly braces no longer auto-quote, but Raku's qw (shortcut < ... >) now auto-subscripts.

say %h1{'key1'};
say %h1<key1>;
%h1<key1> = 'val1';
%h1<key1 three> = 'val1', -238.83;

# Special syntax is no longer necessary to access a hash stored in a scalar.

my $h = {key1 => 'val1', 'key-2' => 2, three => -238.83, 4 => 'val3'};
say $h<key1>;

# Keys are of type Str or Int by default. The type of the key can be provided.

my %hash{Any}; # same as %hash{*}
class C {};
my %cash{C};
%cash{C.new} = 1;
#-------------------------------------------------- 68 associative-array-merging
# Show original hashes
say my %base   = :name('Rocket Skates'), :price<12.75>, :color<yellow>;
say my %update = :price<15.25>, :color<red>, :year<1974>;

# Need to assign to anonymous hash to get the desired results and avoid mutating
# TIMTOWTDI
say "\nUpdate:\n", join "\n", sort %=%base, %update;
# Same
say "\nUpdate:\n", {%base, %update}.sort.join: "\n";

say "\nMerge:\n", join "\n", sort ((%=%base).push: %update)».join: ', ';
# Same
say "\nMerge:\n", ({%base}.push: %update)».join(', ').sort.join: "\n";

# Demonstrate unmutated hashes
say "\n", %base, "\n", %update;
#-------------------------------------------------------- 69 averages-mean-angle
# Of course, you can still use pi and 180.
sub deg2rad { $^d * tau / 360 }
sub rad2deg { $^r * 360 / tau }

sub phase ($c)  {
    my ($mag,$ang) = $c.polar;
    return NaN if $mag < 1e-16;
    $ang;
}

sub meanAngle { rad2deg phase [+] map { cis deg2rad $_ }, @^angles }

say meanAngle($_).fmt("%.2f\tis the mean angle of "), $_ for
    [350, 10],
    [90, 180, 270, 360],
    [10, 20, 30];
#-------------------------------------------------- 70 averages-mean-time-of-day
sub tod2rad($_) { [+](.comb(/\d+/) Z* 3600,60,1) * tau / 86400 }

sub rad2tod ($r) {
    my $x = $r * 86400 / tau;
    (($x xx 3 Z/ 3600,60,1) Z% 24,60,60).fmt('%02d',':');
}

sub phase ($c) { $c.polar[1] }

sub mean-time (@t) { rad2tod phase [+] map { cis tod2rad $_ }, @t }

my @times = ["23:00:17", "23:40:20", "00:12:45", "00:17:19"];

say "{ mean-time(@times) } is the mean time of @times[]";
#------------------------------------------------- 71 averages-pythagorean-means
sub A { ([+] @_) / @_ }
sub G { ([*] @_) ** (1 / @_) }
sub H { @_ / [+] 1 X/ @_ }

say "A(1,...,10) = ", A(1..10);
say "G(1,...,10) = ", G(1..10);
say "H(1,...,10) = ", H(1..10);
#------------------------------------------------ 72 averages-root-mean-square-1
sub rms(*@nums) { sqrt ([+] @nums X** 2) / @nums }

say rms 1..10;
#--------------------------------------------- 73 averages-simple-moving-average
sub sma-generator (Int $P where * > 0) {
    sub ($x) {
        state @a = 0 xx $P;
        @a.push($x).shift;
        @a.sum / $P;
    }
}

# Usage:
my &sma = sma-generator 3;

for 1, 2, 3, 2, 7 {
    printf "append $_ --> sma = %.2f  (with period 3)\n", sma $_;
}
#------------------------------------------------ 74 b-zier-curves-intersections
# 20231025 Raku programming solution

class Point { has ($.x, $.y) is rw is default(0) }

class QuadSpline { has ($.c0, $.c1, $.c2) is rw is default(0) }

class QuadCurve { has QuadSpline ($.x, $.y) is rw }

class Workset { has QuadCurve ($.p, $.q) }

sub subdivideQuadSpline($q, $t) {
   my $s = 1.0 - $t;
   my ($c0,$c1,$c2) = do given $q { .c0, .c1, .c2 };
   my $u_c1 = $s*$c0 + $t*$c1;
   my $v_c1 = $s*$c1 + $t*$c2;
   my $u_c2 = $s*$u_c1 + $t*$v_c1;
   return ($c0, $u_c1, $u_c2), ($u_c2, $v_c1, $c2)
}

sub subdivideQuadCurve($q, $t, $u is rw, $v is rw) {
   with (subdivideQuadSpline($q.x,$t),subdivideQuadSpline($q.y,$t))».List.flat {
      $u=QuadCurve.new(x => QuadSpline.new(c0 => .[0],c1 => .[1],c2 => .[2]),
                       y => QuadSpline.new(c0 => .[6],c1 => .[7],c2 => .[8]));
      $v=QuadCurve.new(x => QuadSpline.new(c0 => .[3],c1 => .[4],c2 => .[5]),
                       y => QuadSpline.new(c0 => .[9],c1 => .[10],c2 => .[11]))
   }
}

sub seemsToBeDuplicate(@intersects, $xy, $spacing) {
   my $seemsToBeDup = False;
   for @intersects {
      $seemsToBeDup = abs(.x - $xy.x) < $spacing && abs(.y - $xy.y) < $spacing;
      last if $seemsToBeDup;
   }
   return $seemsToBeDup;
}

sub rectsOverlap($xa0, $ya0, $xa1, $ya1, $xb0, $yb0, $xb1, $yb1) {
   return $xb0 <= $xa1 && $xa0 <= $xb1 && $yb0 <= $ya1 && $ya0 <= $yb1
}

sub testIntersect($p,$q,$tol,$exclude is rw,$accept is rw,$intersect is rw) {
   my $pxmin = min($p.x.c0, $p.x.c1, $p.x.c2);
   my $pymin = min($p.y.c0, $p.y.c1, $p.y.c2);
   my $pxmax = max($p.x.c0, $p.x.c1, $p.x.c2);
   my $pymax = max($p.y.c0, $p.y.c1, $p.y.c2);
   my $qxmin = min($q.x.c0, $q.x.c1, $q.x.c2);
   my $qymin = min($q.y.c0, $q.y.c1, $q.y.c2);
   my $qxmax = max($q.x.c0, $q.x.c1, $q.x.c2);
   my $qymax = max($q.y.c0, $q.y.c1, $q.y.c2);
   ($exclude, $accept) = True, False;

   if rectsOverlap($pxmin,$pymin,$pxmax,$pymax,$qxmin,$qymin,$qxmax,$qymax) {
      $exclude = False;
      my ($xmin,$xmax) = max($pxmin, $qxmin), min($pxmax, $pxmax);
      if ($xmax < $xmin) { die "Assertion failure: $xmax < $xmin\n" }
      my ($ymin,$ymax) = max($pymin, $qymin), min($pymax, $qymax);
      if ($ymax < $ymin) { die "Assertion failure: $ymax < $ymin\n" }
      if $xmax - $xmin <= $tol and $ymax - $ymin <= $tol {
         $accept = True;
         given $intersect { (.x, .y) = 0.5 X* $xmin+$xmax, $ymin+$ymax }
      }
   }
}

sub find-intersects($p, $q, $tol, $spacing) {
   my Point @intersects;
   my @workload = Workset.new(p => $p, q => $q);

   while my $work = @workload.pop {
      my ($intersect,$exclude,$accept) = Point.new, False, False;
      testIntersect($work.p, $work.q, $tol, $exclude, $accept, $intersect);
      if $accept {
         unless seemsToBeDuplicate(@intersects, $intersect, $spacing) {
            @intersects.push: $intersect;
         }
      } elsif not $exclude {
         my QuadCurve ($p0, $p1, $q0, $q1);
         subdivideQuadCurve($work.p, 0.5, $p0, $p1);
         subdivideQuadCurve($work.q, 0.5, $q0, $q1);
         for $p0, $p1 X $q0, $q1 {
            @workload.push: Workset.new(p => .[0], q => .[1])
         }
      }
   }
   return @intersects;
}

my $p = QuadCurve.new( x => QuadSpline.new(c0 => -1.0,c1 =>  0.0,c2 => 1.0),
                       y => QuadSpline.new(c0 =>  0.0,c1 => 10.0,c2 => 0.0));
my $q = QuadCurve.new( x => QuadSpline.new(c0 =>  2.0,c1 => -8.0,c2 => 2.0),
                       y => QuadSpline.new(c0 =>  1.0,c1 =>  2.0,c2 => 3.0));
my $spacing = ( my $tol = 0.0000001 ) * 10;
.say for find-intersects($p, $q, $tol, $spacing);
#---------------------------------------------------------- 75 babbage-problem-1
# For all positive integers from 1 to Infinity
for 1 .. Inf -> $integer {

    # calculate the square of the integer
    my $square = $integer²;

    # print the integer and square and exit if the square modulo 1000000 is equal to 269696
    print "{$integer}² equals $square" and exit if $square mod 1000000 == 269696;
}
#---------------------------------------------------------- 76 babbage-problem-2
.say and exit if $_²  % 1e6 == 269696 for ^∞;
#------------------------------------------------------------- 77 bacon-cipher-1
my $secret = q:to/END/;
    This task is to implement a program for encryption and decryption
    of plaintext using the simple alphabet of the Baconian cipher or
    some other kind of representation of this alphabet (make anything
    signify anything). This example will work with anything in the
    ASCII range... even code! $r%_-^&*(){}+~ #=`/\';*1234567890"'
    END

my $text = q:to/END/;
    Bah. It isn't really practical to use typeface changes to encode
    information, it is too easy to tell that there is something going
    on and will attract attention. Font changes with enough regularity
    to encode mesages relatively efficiently would need to happen so
    often it would be obvious that there was some kind of manipulation
    going on. Steganographic encryption where it is obvious that there
    has been some tampering with the carrier is not going to be very
    effective. Not that any of these implementations would hold up to
    serious scrutiny anyway. Anyway, here's a semi-bogus implementation
    that hides information in white space. The message is hidden in this
    paragraph of text. Yes, really. It requires a fairly modern file
    viewer to display (not display?) the hidden message, but that isn't
    too unlikely any more. It may be stretching things to call this a
    Bacon cipher, but I think it falls within the spirit of the task,
    if not the exact definition.
    END
#'
my @enc = "﻿", "​";
my %dec = @enc.pairs.invert;

sub encode ($c) { @enc[($c.ord).fmt("%07b").comb].join('') }

sub hide ($msg is copy, $text) {
    $msg ~= @enc[0] x (0 - ($msg.chars % 8)).abs;
    my $head = $text.substr(0,$msg.chars div 8);
    my $tail = $text.substr($msg.chars div 8, *-1);
    ($head.comb «~» $msg.comb(/. ** 8/)).join('') ~ $tail;
}

sub reveal ($steg) {
    join '', map { :2(%dec{$_.comb}.join('')).chr },
    $steg.subst( /\w | <punct> | " " | "\n" /, '', :g).comb(/. ** 7/);
}

my $hidden = join '', map  { .&encode }, $secret.comb;

my $steganography = hide $hidden, $text;

say "Steganograpic message hidden in text:";
say $steganography;

say '*' x 70;

say "Hidden message revealed:";
say reveal $steganography;
#------------------------------------------------------------- 78 bacon-cipher-2
my @abc = 'a' .. 'z';
my @symb = ' ', |@abc;  # modified Baconian charset - space and full alphabet
# TODO original one with I=J U=V, nice for Latin

my %bacon = @symb Z=> (^@symb).map(*.base(2).fmt("%05s"));
my %nocab = %bacon.antipairs;

sub bacon ($s, $msg) {
  my @raw = $s.lc.comb;
  my @txt := @raw[ (^@raw).grep({@raw[$_] (elem) @abc}) ];
  for $msg.lc.comb Z @txt.batch(5) -> ($c-msg, @a) {
    for @a.kv -> $i, $c-str {
      (my $x := @a[$i]) = $x.uc if %bacon{$c-msg}.comb[$i].Int.Bool;
  } }
  @raw.join;
}

sub unbacon ($s) {
  my $chunks = ($s ~~ m:g/\w+/)>>.Str.join.comb(/.**5/);
  $chunks.map(*.comb.map({.uc eq $_})».Int».Str.join).map({%nocab{$_}}).join;
}

my $msg = "Omnes homines dignitate et iure liberi et pares nascuntur";

my $str = <Lorem ipsum dolor sit amet, consectetur adipiscing elit,
sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi
ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit
in voluptate velit esse cillum dolore eu fugiat nulla pariatur.
Excepteur sint occaecat cupidatat non proident, sunt in culpa
qui officia deserunt mollit anim id est laborum.>;

my $baconed = bacon $str, $msg;
$baconed = $baconed.?naive-word-wrapper || $baconed;
# FIXME ^^^ makes dbl space after .
say "text:\n$baconed\n";
my $unbaconed = unbacon($baconed).trim.uc;
say "hidden message:\n$unbaconed";
#-------------------------------------------------------- 79 balanced-brackets-1
sub balanced($s) {
    my $l = 0;
    for $s.comb {
        when "]" {
            --$l;
            return False if $l < 0;
        }
        when "[" {
            ++$l;
        }
    }
    return $l == 0;
}

my $n = prompt "Number of brackets";
my $s = (<[ ]> xx $n).flat.pick(*).join;
say "$s {balanced($s) ?? "is" !! "is not"} well-balanced"
#-------------------------------------------------------- 80 balanced-brackets-2
sub balanced($s) {
    .none < 0 and .[*-1] == 0
        given ([\+] '\\' «leg« $s.comb).cache;
}

my $n = prompt "Number of bracket pairs: ";
my $s = <[ ]>.roll($n*2).join;
say "$s { balanced($s) ?? "is" !! "is not" } well-balanced"
#-------------------------------------------------------- 81 balanced-brackets-3
sub balanced($_ is copy) {
    Nil while s:g/'[]'//;
    $_ eq '';
}

my $n = prompt "Number of bracket pairs: ";
my $s = <[ ]>.roll($n*2).join;
say "$s is", ' not' x not balanced($s), " well-balanced";
#-------------------------------------------------------- 82 balanced-brackets-4
grammar BalBrack { token TOP { '[' <TOP>* ']' } }

my $n = prompt "Number of bracket pairs: ";
my $s = ('[' xx $n, ']' xx $n).flat.pick(*).join;
say "$s { BalBrack.parse($s) ?? "is" !! "is not" } well-balanced";
#----------------------------------------------------------- 83 balanced-ternary
class BT {
    has @.coeff;

    my %co2bt = '-1' => '-', '0' => '0', '1' => '+';
    my %bt2co = %co2bt.invert;

    multi method new (Str $s) {
	self.bless(coeff => %bt2co{$s.flip.comb});
    }
    multi method new (Int $i where $i >= 0) {
	self.bless(coeff => carry $i.base(3).comb.reverse);
    }
    multi method new (Int $i where $i < 0) {
	self.new(-$i).neg;
    }

    method Str () { %co2bt{@!coeff}.join.flip }
    method Int () { [+] @!coeff Z* (1,3,9...*) }

    multi method neg () {
	self.new: coeff => carry self.coeff X* -1;
    }
}

sub carry (*@digits is copy) {
    loop (my $i = 0; $i < @digits; $i++) {
	while @digits[$i] < -1 { @digits[$i] += 3; @digits[$i+1]--; }
	while @digits[$i] > 1  { @digits[$i] -= 3; @digits[$i+1]++; }
    }
    pop @digits while @digits and not @digits[*-1];
    @digits;
}

multi prefix:<-> (BT $x) { $x.neg }

multi infix:<+> (BT $x, BT $y) {
    my ($b,$a) = sort +*.coeff, ($x, $y);
    BT.new: coeff => carry ($a.coeff Z+ |$b.coeff, |(0 xx $a.coeff - $b.coeff));
}

multi infix:<-> (BT $x, BT $y) { $x + $y.neg }

multi infix:<*> (BT $x, BT $y) {
    my @x = $x.coeff;
    my @y = $y.coeff;
    my @z = 0 xx @x+@y-1;
    my @safe;
    for @x -> $xd {
	@z = @z Z+ |(@y X* $xd), |(0 xx @z-@y);
	@safe.push: @z.shift;
    }
    BT.new: coeff => carry @safe, @z;
}

my $a = BT.new: "+-0++0+";
my $b = BT.new: -436;
my $c = BT.new: "+-++-";
my $x = $a * ( $b - $c );

say 'a == ', $a.Int;
say 'b == ', $b.Int;
say 'c == ', $c.Int;
say "a × (b − c) == ", ~$x, ' == ', $x.Int;
#---------------------------------------------------------- 84 bankers-algorithm
my @avail = <3 1 1 2>;                        # Available instances of resource
my @maxm  = <3 3 2 2>, <1 2 3 4>, <1 3 5 0>;  # Maximum resources that can be allocated to processes
my @allot = <1 2 2 1>, <1 0 3 3>, <1 2 1 0>;  # Resources allocated to processes

# Function to find the system is in safe state or not
sub isSafe(\work is copy, \maxm, \allot) {
    my \P          = allot.elems;     # Number of processes
    my \Pool       = (^P).SetHash;    # Process pool
    my \R          = work.elems;      # Number of resources
    my \need       = maxm »-« allot;  # the need matrix
    my @safe-sequence;

    # While all processes are not finished or system is not in safe state
    my $count = 0;
    while $count < P {
        my $found = False;
        for Pool.keys -> \p {
            if all need[p] »≤« work {    # now process can be finished
                work »+=« allot[p;^R];   # Free the resources
                say 'available resources: ' ~ work;
                @safe-sequence.push: p;  # Add this process to safe sequence
                Pool{p}--;               # Remove this process from Pool
                $count += 1;
                $found = True
            }
        }
        # If we could not find a next process in safe sequence
        return False, "System is not in safe state." unless $found;
    }
    # If system is in safe state then safe sequence will be as below
    return True, "Safe sequence is: " ~ @safe-sequence
}

# Check if system is in a safe state
my ($safe-state,$status-message) = isSafe @avail, @maxm, @allot;
say "Safe state? $safe-state";
say "Message:    $status-message";
#------------------------------------------- 85 base-16-numbers-needing-a-to-f-2
put display :20cols, :fmt('%3d'), (^501).grep( { so any |.map: { .polymod(16 xx *) »>» 9 } } );

sub display ($list, :$cols = 10, :$fmt = '%6d', :$title = "{+$list} matching:\n" )   {
    cache $list;
    $title ~ $list.batch($cols)».fmt($fmt).join: "\n"
}
#------------------------------------------------------- 86 base58check-encoding
sub encode_Base58 ( Int $x ) {
    constant @codes = <
          1 2 3 4 5 6 7 8 9
        A B C D E F G H   J K L M N   P Q R S T U V W X Y Z
        a b c d e f g h i j k   m n o p q r s t u v w x y z
    >;

    return @codes[ $x.polymod( 58 xx * ) ].join.flip;
}

my @tests =
    25420294593250030202636073700053352635053786165627414518 => '6UwLL9Risc3QfPqBUvKofHmBQ7wMtjvM',
    0x61                    => '2g',
    0x626262                => 'a3gV',
    0x636363                => 'aPEr',
    0x73696d706c792061206c6f6e6720737472696e67 => '2cFupjhnEsSn59qHXstmK2ffpLv2',
    0x516b6fcd0f            => 'ABnLTmg',
    0xbf4f89001e670274dd    => '3SEo3LWLoPntC',
    0x572e4794              => '3EFU7m',
    0xecac89cad93923c02321  => 'EJDM8drfXA6uyA',
    0x10c8511e              => 'Rt5zm',
;
use Test;
for @tests {
    is encode_Base58(.key), .value, "{.key} encodes to {.value}";
}
#------------------------------------------------------------- 87 bell-numbers-1
 my @Aitkens-array = lazy [1], -> @b {
     my @c = @b.tail;
     @c.push: @b[$_] + @c[$_] for ^@b;
     @c
 } ... *;

 my @Bell-numbers = @Aitkens-array.map: { .head };

say "First fifteen and fiftieth Bell numbers:";
printf "%2d: %s\n", 1+$_, @Bell-numbers[$_] for flat ^15, 49;

say "\nFirst ten rows of Aitken's array:";
.say for @Aitkens-array[^10];
#------------------------------------------------------------- 88 bell-numbers-2
sub binomial { [*] ($^n … 0) Z/ 1 .. $^p }

my @bell = 1, -> *@s { [+] @s »*« @s.keys.map: { binomial(@s-1, $_) }  } … *;

.say for @bell[^15], @bell[50 - 1];
#------------------------------------------------------------- 89 bell-numbers-3
my @Stirling_numbers_of_the_second_kind =
    (1,),
    { (0, |@^last) »+« (|(@^last »*« @^last.keys), 0) } … *
;
my @bell = @Stirling_numbers_of_the_second_kind.map: *.sum;

.say for @bell.head(15), @bell[50 - 1];
#--------------------------------------------------------------- 90 benfords-law
sub benford(@a) { bag +« @a».substr(0,1) }

sub show(%distribution) {
    printf "%9s %9s  %s\n", <Actual Expected Deviation>;
    for 1 .. 9 -> $digit {
        my $actual = %distribution{$digit} * 100 / [+] %distribution.values;
        my $expected = (1 + 1 / $digit).log(10) * 100;
        printf "%d: %5.2f%% | %5.2f%% | %.2f%%\n",
          $digit, $actual, $expected, abs($expected - $actual);
    }
}

multi MAIN($file) { show benford $file.IO.lines }
multi MAIN() { show benford ( 1, 1, 2, *+* ... * )[^1000] }
#------------------------------------------------- 91 berlekamp-massey-algorithm
# 20250510 Raku programming solution

constant MOD = 2;

sub berlekamp_massey(@a) {
   my ($n, $w, $delta, @ans_coef, @lst) = @a.elems - 1, 0;
   for 1 .. $n -> $i {
      my $tmp = 0;
      for ^@ans_coef.elems -> $j {
         if $i - 1 - $j >= 1 {
            $tmp = ($tmp + @a[$i - 1 - $j] * @ans_coef[$j]) % MOD;
         }
      }
      my $discrepancy = (@a[$i] - $tmp + MOD) % MOD;
      next if $discrepancy == 0;
      if $w == 0 {
         @ans_coef = (0 xx $i);
         $w = $i;
         $delta = $discrepancy;
         next;
      }
      my @now = @ans_coef;
      my $mul = $discrepancy * expmod($delta, MOD - 2, MOD);
      my $needed_len = @lst.elems + $i - $w;
      if @ans_coef.elems < $needed_len {
         @ans_coef.append: (0 xx ($needed_len - @ans_coef.elems));
      }
      if $i - $w - 1 >= 0 {
         @ans_coef[$i - $w - 1] = (@ans_coef[$i - $w - 1] + $mul) % MOD;
      }
      for ^@lst.elems -> $j {
         my $idx = $i - $w + $j;
         if $idx < @ans_coef.elems {
            my $term_to_subtract = ($mul * @lst[$j]) % MOD;
            @ans_coef[$idx] = (@ans_coef[$idx] - $term_to_subtract + MOD) % MOD;
         }
      }
      if @ans_coef.elems > @now.elems {
         @lst = @now;
         $w = $i;
         $delta = $discrepancy;
      }
   }
   return @ans_coef.map: { ($^x + MOD) % MOD };
}

sub calculate_term($m, @coef, @h) {
   if $m < @h.elems                { return (@h[$m] + MOD) % MOD }
   if ( my $k = @coef.elems ) == 0 { return 0 }
   my @p_coeffs = (1, |@coef);
   sub poly_mul(@a, @b, $degree_k, @p_poly) {
      my @res = (0 xx (2 * $degree_k));
      for ^$degree_k X ^$degree_k -> ($i, $j) {
         next if @a[$i] == 0;
         @res[$i + $j] = (@res[$i + $j] + @a[$i] * @b[$j]) % MOD;
      }
      for ( 2 * $degree_k - 1 ... $degree_k ) -> $i {
         next if @res[$i] == 0;
         my $term = @res[$i];
         @res[$i] = 0;
         for 0 .. $degree_k -> $j {
            if ( my $idx = $i - $j ) >= 0 {
               @res[$idx] = (@res[$idx] + $term * @p_poly[$j]) % MOD;
            }
         }
      }
      return @res[0 ... ^$degree_k];
   }
   my @f = (1, |(0 xx ($k - 1)));
   my @g = $k == 1 ?? (@p_coeffs[1],) !! (0, 1, |(0 xx ($k - 2)));
   my $power = $m;
   while $power > 0 {
      unless $power %% 2 { @f = poly_mul(@f, @g, $k, @p_coeffs) }
      @g = poly_mul(@g, @g, $k, @p_coeffs);
      $power div= 2;
   }
   my $final_ans = 0;
   for ^$k -> \k {
      if k+1 < @h.elems { $final_ans = ($final_ans + @h[k+1] * @f[k]) % MOD }
   }
   return ($final_ans + MOD) % MOD;
}

sub solve {
   my @h_input = 0,0,1,1,0,1,0;
   my $n = @h_input.elems;
   my @h = 0, |@h_input;
   my @ans_coef = berlekamp_massey(@h);
   say @ans_coef.map({ ($^x + MOD) % MOD }).Str;
   my $m = 10;
   my $result = calculate_term($m, @ans_coef, @h);
   say ($result + MOD) % MOD;
}

solve();
#-------------------------------------------------------- 92 bernoulli-numbers-1
sub bernoulli($n) {
    my @a;
    for 0..$n -> $m {
        @a[$m] = FatRat.new(1, $m + 1);
        for reverse 1..$m -> $j {
          @a[$j - 1] = $j * (@a[$j - 1] - @a[$j]);
        }
    }
    return @a[0];
}

constant @bpairs = grep *.value.so, ($_ => bernoulli($_) for 0..60);

my $width = max @bpairs.map: *.value.numerator.chars;
my $form = "B(%2d) = \%{$width}d/%d\n";

printf $form, .key, .value.nude for @bpairs;
#-------------------------------------------------------- 93 bernoulli-numbers-2
constant bernoulli = gather {
    my @a;
    for 0..* -> $m {
        @a = FatRat.new(1, $m + 1),
                -> $prev {
                    my $j = @a.elems;
                    $j * (@a.shift - $prev);
                } ... { not @a.elems }
        take $m => @a[*-1] if @a[*-1];
    }
}

constant @bpairs = bernoulli[^52];

my $width = max @bpairs.map: *.value.numerator.chars;
my $form = "B(%d)\t= \%{$width}d/%d\n";

printf $form, .key, .value.nude for @bpairs;
#-------------------------------------------------------- 94 bernoulli-numbers-3
sub infix:<bop>(\prev, \this) {
    this.key => this.key * (this.value - prev.value)
}

sub next-bernoulli ( (:key($pm), :value(@pa)) ) {
    $pm + 1 => [
        map *.value,
        [\bop] ($pm + 2 ... 1) Z=> FatRat.new(1, $pm + 2), |@pa
    ]
}

constant bernoulli =
    grep *.value,
    map { .key => .value[*-1] },
    (0 => [FatRat.new(1,1)], &next-bernoulli ... *)
;

constant @bpairs = bernoulli[^52];

my $width = max @bpairs.map: *.value.numerator.chars;
my $form = "B(%d)\t= \%{$width}d/%d\n";

printf $form, .key, .value.nude for @bpairs;
#-------------------------------------------------------- 95 bernoullis-triangle
sub bernoullis-triangle { [1], {[0, |$_ Z+ |$_, 2 ** $++]} … * }

.put for bernoullis-triangle[^15]».fmt: "%5d";
#------------------------------------------------ 96 bernstein-basis-polynomials
# 20230601 Raku programming solution

sub toBern2 { [ @_[0], @_[0]+@_[1]/2, @_[0..2].sum ] }

sub toBern3 (@a) { @a[0], @a[0]+@a[1]/3, @a[0]+@a[1]*2/3+@a[2]/3, @a[0..3].sum }

sub evalBern-N (@b, $t) { # uses de Casteljau's algorithm
   my ($s, @bern) = 1 - $t, @b.Slip;
   while ( @bern.elems > 2 ) {
      @bern = @bern.rotor(2 => -1).map: { $s * .[0] + $t * .[1] };
   }
   return $s * @bern[0] + $t * @bern[1]
}

sub evaluations (@m, @b, $x) {
   my $m = ([o] map { $_ + $x * * }, @m)(0); # Horner's rule
   return "p({$x.fmt: '%.2f'}) = { evalBern-N @b, $x } (mono $m)";
}

sub bern2to3 (@a) { @a[0], @a[0]/3+@a[1]*2/3, @a[1]*2/3+@a[2]/3, @a[2] }

my (@pm,@qm,@rm) := ([1, 0, 0], [1, 2, 3], [1, 2, 3, 4]);

say "Subprogram(1) examples:";

my (@pb2,@qb2) := (@pm,@qm).map: { toBern2 $_ };
say "mono [{.[0]}] --> bern [{.[1]}]" for (@pm,@pb2,@qm,@qb2).rotor: 2;

say "\nSubprogram(2) examples:";

for (@pm,@pb2,@qm,@qb2).rotor(2) X (0.25,7.5) -> [[@m,@b], $x] {
   say evaluations @m, @b, $x
}

say "\nSubprogram(3) examples:";

.push(0) for (@pm,@qm);
my (@pb3,@qb3,@rb3) := (@pm,@qm,@rm).map: { toBern3 $_ };
say "mono [{.[0]}] --> bern [{.[1]}]" for (@pm,@pb3,@qm,@qb3,@rm,@rb3).rotor: 2;

say "\nSubprogram(4) examples:";

for (@pm,@pb3,@qm,@qb3,@rm,@rb3).rotor(2) X (0.25,7.5) -> [[@m,@b], $x] {
   say evaluations @m, @b, $x
}

say "\nSubprogram(5) examples:";

my (@pc,@qc) := (@pb2,@qb2).map: { bern2to3 $_ };
say  "mono [{.[1]}] --> bern [{.[0]}]" for (@pc,@pb2,@qc,@qb2).rotor: 2;
#----------------------------------------------------------- 97 bin-given-limits
sub bin_it ( @limits, @data ) {
    my @ranges = ( -Inf, |@limits, Inf ).rotor( 2 => -1 ).map: { .[0] ..^ .[1] };
    my @binned = @data.classify(-> $d { @ranges.grep(-> $r { $d ~~ $r }) });
    my %counts = @binned.map: { .key => .value.elems };
    return @ranges.map: { $_ => ( %counts{$_} // 0 ) };
}
sub bin_format ( @bins ) {
    return @bins.map: { .key.gist.fmt('%9s => ') ~ .value.fmt('%2d') };
}

my @tests =
    {
        limits => (23, 37, 43, 53, 67, 83),
        data   => (95,21,94,12,99,4,70,75,83,93,52,80,57,5,53,86,65,17,92,83,71,61,54,58,47,16,8,9,32,84,7,87,46,19,30,37,96,6,98,40,79,97,45,64,60,29,49,36,43,55),
    },
    {
        limits => (14, 18, 249, 312, 389, 392, 513, 591, 634, 720),
        data   => (
            445,814,519,697,700,130,255,889,481,122,932, 77,323,525,570,219,367,523,442,933,416,589,930,373,202,253,775, 47,731,685,293,126,133,450,545,100,741,583,763,306,
            655,267,248,477,549,238, 62,678, 98,534,622,907,406,714,184,391,913, 42,560,247,346,860, 56,138,546, 38,985,948, 58,213,799,319,390,634,458,945,733,507,916,123,
            345,110,720,917,313,845,426,  9,457,628,410,723,354,895,881,953,677,137,397, 97,854,740, 83,216,421, 94,517,479,292,963,376,981,480, 39,257,272,157,  5,316,395,
            787,942,456,242,759,898,576, 67,298,425,894,435,831,241,989,614,987,770,384,692,698,765,331,487,251,600,879,342,982,527,736,795,585, 40, 54,901,408,359,577,237,
            605,847,353,968,832,205,838,427,876,959,686,646,835,127,621,892,443,198,988,791,466, 23,707,467, 33,670,921,180,991,396,160,436,717,918,  8,374,101,684,727,749
        ),
    },
;
for @tests -> ( :@limits, :@data ) {
    my @bins = bin_it( @limits, @data );
    .say for bin_format(@bins);
    say '';
}
#------------------------------------------------------- 98 binary-coded-decimal
# 20220930 Raku programming solution

class Bcd64 { has uint64 $.bits }

multi infix:<⊞> (Bcd64 \p, Bcd64 \q) {
   my $t1 = p.bits + 0x0666_6666_6666_6666;
   my $t2 = ( $t1 + q.bits ) % uint64.Range.max ;
   my $t3 = $t1 +^ q.bits;
   my $t4 = +^($t2 +^ $t3) +& 0x1111_1111_1111_1110;
   my $t5 = ($t4 +> 2) +| ($t4 +> 3);
   Bcd64.new: bits => ($t2 - $t5)
}

multi prefix:<⊟> (Bcd64 \p) {
   my $t1 = uint64.Range.max + 1 - p.bits ;
   my $t2 = ( $t1 + 0xFFFF_FFFF_FFFF_FFFF ) % uint64.Range.max;
   my $t3 = $t2 +^ 1;
   my $t4 = +^($t2 +^ $t3) +& 0x1111_1111_1111_1110;
   my $t5 = ($t4 +> 2) +| ($t4 +> 3);
   Bcd64.new: bits => ($t1 - $t5)
}

multi infix:<⊟> (Bcd64 \p, Bcd64 \q) { p ⊞ ( ⊟q ) }

my ($one,$n19,$n30,$n99) = (0x01,0x19,0x30,0x99).map: { Bcd64.new: bits=>$_ };

{ .bits.base(16).say } for ($n19 ⊞ $one,$n30 ⊟ $one,$n99 ⊞ $one);

#------------------------------------------------------------ 99 binary-digits-1
say .fmt("%b") for 5, 50, 9000;
#----------------------------------------------------------- 100 binary-digits-2
say .base(2) for 5, 50, 9000;
#------------------------------------------------------------ 101 binary-strings
# Raku is perfectly fine with NUL *characters* in strings:
my Str $s = 'nema' ~ 0.chr ~ 'problema!';
say $s;

# However, Raku makes a clear distinction between strings
# (i.e. sequences of characters), like your name, or …
my Str $str = "My God, it's full of chars!";
# … and sequences of bytes (called Bufs), for example a PNG image, or …
my Buf $buf = Buf.new(255, 0, 1, 2, 3);
say $buf;

# Strs can be encoded into Blobs …
my Blob $this = 'round-trip'.encode('ascii');
# … and Blobs can be decoded into Strs …
my Str $that = $this.decode('ascii');

# So it's all there. Nevertheless, let's solve this task explicitly
# in order to see some nice language features:

# We define a class …
class ByteStr {
    # … that keeps an array of bytes, and we delegate some
    # straight-forward stuff directly to this attribute:
    # (Note: "has byte @.bytes" would be nicer, but that is
    # not yet implemented in Rakudo.)
    has Int @.bytes handles(< Bool elems gist push >);

    # A handful of methods …
    method clone() {
        self.new(:@.bytes);
    }

    method substr(Int $pos, Int $length) {
        self.new(:bytes(@.bytes[$pos .. $pos + $length - 1]));
    }

    method replace(*@substitutions) {
        my %h = @substitutions;
        @.bytes.=map: { %h{$_} // $_ }
    }
}

# A couple of operators for our new type:
multi infix:<cmp>(ByteStr $x, ByteStr $y) { $x.bytes.join cmp $y.bytes.join }
multi infix:<~>  (ByteStr $x, ByteStr $y) { ByteStr.new(:bytes(|$x.bytes, |$y.bytes)) }

# create some byte strings (destruction not needed due to garbage collection)
my ByteStr $b0 = ByteStr.new;
my ByteStr $b1 = ByteStr.new(:bytes( |'foo'.ords, 0, 10, |'bar'.ords ));

# assignment ($b1 and $b2 contain the same ByteStr object afterwards):
my ByteStr $b2 = $b1;

# comparing:
say 'b0 cmp b1 = ', $b0 cmp $b1;
say 'b1 cmp b2 = ', $b1 cmp $b2;

# cloning:
my $clone = $b1.clone;
$b1.replace('o'.ord => 0);
say 'b1 = ', $b1;
say 'b2 = ', $b2;
say 'clone = ', $clone;

# to check for (non-)emptiness we evaluate the ByteStr in boolean context:
say 'b0 is ', $b0 ?? 'not empty' !! 'empty';
say 'b1 is ', $b1 ?? 'not empty' !! 'empty';

# appending a byte:
$b1.push: 123;
say 'appended = ', $b1;

# extracting a substring:
my $sub = $b1.substr(2, 4);
say 'substr = ', $sub;

# replacing a byte:
$b2.replace(102 => 103);
say 'replaced = ', $b2;

# joining:
my ByteStr $b3 = $b1 ~ $sub;
say 'joined = ', $b3;
#-------------------------------------------------------- 102 binomial-transform
sub binomial { [×] ($^n … 0) Z/ 1 .. $^p }

sub binomial-transform (*@seq) {
    @seq.keys.map: -> \n { sum (0..n).map: -> \k { binomial(n,k) × @seq[k] } }
}

sub inverse-binomial-transform (*@seq) {
    @seq.keys.map: -> \n { sum (0..n).map: -> \k { binomial(n,k) × @seq[k] × exp(n - k, -1) } }
}

sub si-binomial-transform (*@seq) { #self inverting
    @seq.keys.map: -> \n { sum (0..n).map: -> \k { binomial(n,k) × @seq[k] × exp(k, -1) } }
}

my $upto = 20;

for 'Catalan number',   (1, {[+] @_ Z× @_.reverse}…*),
    'Prime flip-flop',  (1..*).map({.is-prime ?? 1 !! 0}),
    'Fibonacci number', (0,1,*+*…*),
    'Padovan number',   (1,0,0, -> $c,$b,$ {$b+$c}…*)
  -> $name, @seq {
    say qq:to/BIN/;
    $name sequence:
    {@seq[^$upto]}
    Forward binomial transform:
    {binomial-transform(@seq)[^$upto]}
    Inverse binomial transform:
    {inverse-binomial-transform(@seq)[^$upto]}
    Round trip:
    {inverse-binomial-transform(binomial-transform(@seq))[^$upto]}
    Self inverting:
    {si-binomial-transform(@seq)[^$upto]}
    Re inverted:
    {si-binomial-transform(si-binomial-transform(@seq))[^$upto]}
    BIN
}
#------------------------------------------------- 103 bioinformatics-base-count
my $dna = join '', lines q:to/END/;
    CGTAAAAAATTACAACGTCCTTTGGCTATCTCTTAAACTCCTGCTAAATG
    CTCGTGCTTTCCAATTATGTAAGCGTTCCGAGACGGGGTGGTCGATTCTG
    AGGACAAAGGTCAAGATGGAGCGCATCGAACGCAATAAGGATCATTTGAT
    GGGACGTTTCGTCGACAAAGTCTTGTTTCGAGAGTAACGGCTACCGTCTT
    CGATTCTGCTTATAACACTATGTTCTTATGAAATGGATGTTCTGAGTTGG
    TCAGTCCCAATGTGCGGGGTTTCTTTTAGTACGTCGGGAGTGGTATTATA
    TTTAATTTTTCTATATAGCGATCTGTATTTAAGCAATTCATTTAGGTTAT
    CGCCGCGATGCTCGGTTCGGACCGCCAAGCATCTGGCTCCACTGCTAGTG
    TCCTAAATTTGAATGGCAAACACAAATAAGATTTAGCAATTCGTGTAGAC
    GACCGGGGACTTGCATGATGGGAGCAGCTTTGTTAAACTACGAACGTAAT
    END


put pretty($dna, 80);
put "\nTotal bases: ", +my $bases = $dna.comb.Bag;
put $bases.sort(~*.key).join: "\n";

sub pretty ($string, $wrap = 50) {
    $string.comb($wrap).map( { sprintf "%8d: %s", $++ * $wrap, $_ } ).join: "\n"
}
#------------------------------------------------ 104 bitmap-b-zier-curves-cubic
class Pixel { has UInt ($.R, $.G, $.B) }
class Bitmap {
    has UInt ($.width, $.height);
    has Pixel @!data;

    method fill(Pixel $p) {
        @!data = $p.clone xx ($!width*$!height)
    }
    method pixel(
	  $i where ^$!width,
	  $j where ^$!height
	  --> Pixel
    ) is rw { @!data[$i + $j * $!width] }

    method set-pixel ($i, $j, Pixel $p) {
        self.pixel($i, $j) = $p.clone;
    }
    method get-pixel ($i, $j) returns Pixel {
	    self.pixel($i, $j);
    }

    method line(($x0 is copy, $y0 is copy), ($x1 is copy, $y1 is copy), $pix) {
        my $steep = abs($y1 - $y0) > abs($x1 - $x0);
        if $steep {
            ($x0, $y0) = ($y0, $x0);
            ($x1, $y1) = ($y1, $x1);
        }
        if $x0 > $x1 {
            ($x0, $x1) = ($x1, $x0);
            ($y0, $y1) = ($y1, $y0);
        }
        my $Δx = $x1 - $x0;
        my $Δy = abs($y1 - $y0);
        my $error = 0;
        my $Δerror = $Δy / $Δx;
        my $y-step = $y0 < $y1 ?? 1 !! -1;
        my $y = $y0;
        for $x0 .. $x1 -> $x {
            if $steep {
                self.set-pixel($y, $x, $pix);
            } else {
                self.set-pixel($x, $y, $pix);
            }
            $error += $Δerror;
            if $error >= 0.5 {
                $y += $y-step;
                $error -= 1.0;
            }
        }
    }

    method dot (($px, $py), $pix, $radius = 2) {
        for $px - $radius .. $px + $radius -> $x {
            for $py - $radius .. $py + $radius -> $y {
                self.set-pixel($x, $y, $pix) if ( $px - $x + ($py - $y) * i ).abs <= $radius;
            }
        }
    }

    method cubic ( ($x1, $y1), ($x2, $y2), ($x3, $y3), ($x4, $y4), $pix, $segments = 30 ) {
        my @line-segments = map -> $t {
            my \a = (1-$t)³;
            my \b = $t  * (1-$t)² * 3;
            my \c = $t² * (1-$t)  * 3;
            my \d = $t³;
            (a*$x1 + b*$x2 + c*$x3 + d*$x4).round(1),(a*$y1 + b*$y2 + c*$y3 + d*$y4).round(1)
        }, (0, 1/$segments, 2/$segments ... 1);
        for @line-segments.rotor(2=>-1) -> ($p1, $p2) { self.line( $p1, $p2, $pix) };
    }

    method data { @!data }
}

role PPM {
    method P6 returns Blob {
	"P6\n{self.width} {self.height}\n255\n".encode('ascii')
	~ Blob.new: flat map { .R, .G, .B }, self.data
    }
}

sub color( $r, $g, $b) { Pixel.new(R => $r, G => $g, B => $b) }

my Bitmap $b = Bitmap.new( width => 600, height => 400) but PPM;

$b.fill( color(2,2,2) );

my @points = (85,390), (5,5), (580,370), (270,10);

my %seen;
my $c = 0;
for @points.permutations -> @this {
    %seen{@this.reverse.join.Str}++;
    next if %seen{@this.join.Str};
    $b.cubic( |@this, color(255-$c,127,$c+=22) );
}

@points.map: { $b.dot( $_, color(255,0,0), 3 )}

$*OUT.write: $b.P6;
#-------------------------------------------- 105 bitmap-b-zier-curves-quadratic
class Pixel { has UInt ($.R, $.G, $.B) }
class Bitmap {
    has UInt ($.width, $.height);
    has Pixel @!data;

    method fill(Pixel $p) {
        @!data = $p.clone xx ($!width*$!height)
    }
    method pixel(
	  $i where ^$!width,
	  $j where ^$!height
	  --> Pixel
    ) is rw { @!data[$i + $j * $!width] }

    method set-pixel ($i, $j, Pixel $p) {
        return if $j >= $!height;
        self.pixel($i, $j) = $p.clone;
    }
    method get-pixel ($i, $j) returns Pixel {
	    self.pixel($i, $j);
    }

    method line(($x0 is copy, $y0 is copy), ($x1 is copy, $y1 is copy), $pix) {
        my $steep = abs($y1 - $y0) > abs($x1 - $x0);
        if $steep {
            ($x0, $y0) = ($y0, $x0);
            ($x1, $y1) = ($y1, $x1);
        }
        if $x0 > $x1 {
            ($x0, $x1) = ($x1, $x0);
            ($y0, $y1) = ($y1, $y0);
        }
        my $Δx = $x1 - $x0;
        my $Δy = abs($y1 - $y0);
        my $error = 0;
        my $Δerror = $Δy / $Δx;
        my $y-step = $y0 < $y1 ?? 1 !! -1;
        my $y = $y0;
        for $x0 .. $x1 -> $x {
            if $steep {
                self.set-pixel($y, $x, $pix);
            } else {
                self.set-pixel($x, $y, $pix);
            }
            $error += $Δerror;
            if $error >= 0.5 {
                $y += $y-step;
                $error -= 1.0;
            }
        }
    }

    method dot (($px, $py), $pix, $radius = 2) {
        for $px - $radius .. $px + $radius -> $x {
            for $py - $radius .. $py + $radius -> $y {
                self.set-pixel($x, $y, $pix) if ( $px - $x + ($py - $y) * i ).abs <= $radius;
            }
        }
    }

    method quadratic ( ($x1, $y1), ($x2, $y2), ($x3, $y3), $pix, $segments = 30 ) {
        my @line-segments = map -> $t {
            my \a = (1-$t)²;
            my \b = $t * (1-$t) * 2;
            my \c = $t²;
            (a*$x1 + b*$x2 + c*$x3).round(1),(a*$y1 + b*$y2 + c*$y3).round(1)
        }, (0, 1/$segments, 2/$segments ... 1);
        for @line-segments.rotor(2=>-1) -> ($p1, $p2) { self.line( $p1, $p2, $pix) };
    }

    method data { @!data }
}

role PPM {
    method P6 returns Blob {
	"P6\n{self.width} {self.height}\n255\n".encode('ascii')
	~ Blob.new: flat map { .R, .G, .B }, self.data
    }
}

sub color( $r, $g, $b) { Pixel.new(R => $r, G => $g, B => $b) }

my Bitmap $b = Bitmap.new( width => 600, height => 400) but PPM;

$b.fill( color(2,2,2) );

my @points = (65,25), (85,380), (570,15);

my %seen;
my $c = 0;
for @points.permutations -> @this {
    %seen{@this.reverse.join.Str}++;
    next if %seen{@this.join.Str};
    $b.quadratic( |@this, color(255-$c,127,$c+=80) );
}

@points.map: { $b.dot( $_, color(255,0,0), 3 )}

$*OUT.write: $b.P6;
#------------------------------------------ 106 bitmap-midpoint-circle-algorithm
use MONKEY-TYPING;

class Pixel { has UInt ($.R, $.G, $.B) }
class Bitmap {
    has UInt ($.width, $.height);
    has Pixel @!data;

    method fill(Pixel \p) {
        @!data = p xx ($!width × $!height)
    }

    method pixel( \i where ^$!width, \j where ^$!height --> Pixel) is rw {
        @!data[i × $!width + j]
    }

    method set-pixel (\i, \j, Pixel \p) {
        self.pixel(i, j) = p;
    }

    method get-pixel (\i, \j) returns Pixel {
        self.pixel(i, j);
    }
}

augment class Pixel  { method Str { "$.R $.G $.B" } }
augment class Bitmap {
    method P3 {
        join "\n", «P3 "$.width $.height" 255»,
        do for ^($.width × $.height) { join ' ', @!data[$_] }
    }

    method raster-circle ( \x0, \y0, \r, Pixel \value ) {
        my $ddF_x   =  0;
        my $ddF_y   = -2 × r;
        my $f       =  1 - r;
        my ($x, $y) =  0,  r;
        for flat (0 X 1,-1),(1,-1 X 0) -> \i, \j {
            self.set-pixel(x0 + i×r, y0 + j×r, value)
        }

        while $x < $y {
            ($y--; $f +=     ($ddF_y += 2)) if $f ≥ 0;
             $x++; $f += 1 + ($ddF_x += 2);
            for flat (1,-1) X (1,-1) -> \i, \j {
                self.set-pixel(x0 + i×$x, y0 + j×$y, value);
                self.set-pixel(x0 + i×$y, y0 + j×$x, value);
            }
        }
    }
}

my Bitmap $b = Bitmap.new( width => 32, height => 32);
$b.fill( Pixel.new( R => 0, G => 0, B => 0) );
$b.raster-circle(16, 16, 15, Pixel.new(R=>0, G=>0, B=>100));
say $b.P3;
#--------------------------------------------------- 107 bitmap-write-a-ppm-file
class Pixel { has uint8 ($.R, $.G, $.B) }
class Bitmap {
    has UInt ($.width, $.height);
    has Pixel @!data;

    method fill(Pixel $p) {
        @!data = $p.clone xx ($!width*$!height)
    }
    method pixel(
     $i where ^$!width,
     $j where ^$!height
     --> Pixel
      ) is rw { @!data[$i*$!height + $j] }

    method data { @!data }
}

role PPM {
    method P6 returns Blob {
   "P6\n{self.width} {self.height}\n255\n".encode('ascii')
   ~ Blob.new: flat map { .R, .G, .B }, self.data
    }
}

my Bitmap $b = Bitmap.new(width => 125, height => 125) but PPM;
for flat ^$b.height X ^$b.width -> $i, $j {
    $b.pixel($i, $j) = Pixel.new: :R($i*2), :G($j*2), :B(255-$i*2);
}

$*OUT.write: $b.P6;
#-------------------------------------------------------------------- 108 bitmap
class Pixel { has UInt ($.R, $.G, $.B) }
class Bitmap {
    has UInt ($.width, $.height);
    has Pixel @!data;

    method fill(Pixel $p) {
        @!data = $p.clone xx ($!width*$!height)
    }
    method pixel(
   $i where ^$!width,
   $j where ^$!height
   --> Pixel
    ) is rw { @!data[$i + $j * $!width] }

    method set-pixel ($i, $j, Pixel $p) {
   self.pixel($i, $j) = $p.clone;
    }
    method get-pixel ($i, $j) returns Pixel {
   self.pixel($i, $j);
    }
}

my Bitmap $b = Bitmap.new( width => 10, height => 10);

$b.fill( Pixel.new( R => 0, G => 0, B => 200) );

$b.set-pixel( 7, 5, Pixel.new( R => 100, G => 200, B => 0) );

say $b.perl;
#---------------------------------------------------------------- 109 bitwise-io
sub encode-ascii(Str $s) {
    my @b = flat $s.ords».fmt("%07b")».comb;
    @b.push(0) until @b %% 8;   # padding
    Buf.new: gather while @b { take reduce * *2+*, (@b.pop for ^8) }
}

sub decode-ascii(Buf $b) {
    my @b = flat $b.list».fmt("%08b")».comb;
    @b.shift until @b %% 7;   # remove padding
    @b = gather while @b { take reduce * *2+*, (@b.pop for ^7) }
    return [~] @b».chr;
}
say my $encode = encode-ascii 'STRING';
say decode-ascii $encode;
#-------------------------------------------------------- 110 bitwise-operations
constant MAXINT = uint.Range.max;
constant BITS = MAXINT.base(2).chars;

# define rotate ops for the fun of it
multi sub infix:<⥁>(Int:D \a, Int:D \b) { :2[(a +& MAXINT).polymod(2 xx BITS-1).list.rotate(b).reverse] }
multi sub infix:<⥀>(Int:D \a, Int:D \b) { :2[(a +& MAXINT).polymod(2 xx BITS-1).reverse.list.rotate(b)] }

sub int-bits (Int $a, Int $b) {
    say '';
    say_bit "$a", $a;
    say '';
    say_bit "1's complement (not) $a", +^$a;
    say_bit "2's complement $a", +^$a + 1;
    say_bit "$a and $b", $a +& $b;
    say_bit "$a or $b",  $a +| $b;
    say_bit "$a xor $b", $a +^ $b;
    say_bit "$a unsigned shift right $b", ($a +& MAXINT) +> $b;
    say_bit "$a signed shift right $b", $a +> $b;
    say_bit "$a rotate right $b", $a ⥁ $b;
    say_bit "$a shift left $b", $a +< $b;
    say_bit "$a rotate left $b", $a ⥀ $b;
}

int-bits(7,2);
int-bits(-65432,31);

sub say_bit ($message, $value) {
    printf("%30s: %{'0' ~ BITS}b\n", $message, $value +& MAXINT);
}
#--------------------------------------------------------- 111 blossom-algorithm
# 20250512 Raku programming solution

# least common ancestor of x and y in the alternating forest
sub lca($x is copy, $y is copy, @bases, @matches, @paths, $n) {
   my @usedPath = False xx $n;
   loop {
      @usedPath[$x = @bases[$x]] = True;
      @matches[$x] < 0 ?? ( last ) !! $x = @paths[@matches[$x]]
   }
   loop {
      @usedPath[$y = @bases[$y]].Bool ?? ( last ) !! $y = @paths[@matches[$y]]
   }
   return $y;
}

# mark path from v up to base0, setting parents to x
sub markPath($v is copy, $base0, $x is copy, @bases, @matches, @paths, @blossom) {
   while @bases[$v] != $base0 {
      my $mv = @matches[$v];
      @blossom[@bases[$mv]] = @blossom[@bases[$v]] = True;
      @paths[$v] = $x;
      $v = @paths[ $x = $mv ];
   }
}

# attempt to find an augmenting path from root
sub findPath(@adj, $root, $n, @matches is copy) {
   my @paths = -1 xx $n;
   my @bases = ^$n;
   my @queue = ($root);
   my (@used, @blossom) is default( False );
   @used[$root] = True;

   while my $v = @queue.shift {
      for @adj[$v].flat -> $u {
         next unless @bases[$v] != @bases[$u] && @matches[$v] != $u;
         if $u == $root || (@matches[$u] != -1 && @paths[@matches[$u]] != -1) {
            # Found a blossom; contract it
            my $curbase = lca($v, $u, @bases, @matches, @paths, $n);
            markPath($v, $curbase, $u, @bases, @matches, @paths, @blossom);
            markPath($u, $curbase, $v, @bases, @matches, @paths, @blossom);
            @queue.push: gather for ^$n -> $i {
               if @blossom[@bases[$i]] {
                  @bases[$i] = $curbase;
                  unless @used[$i] { @used[take $i] = True }
               }
            }
         } elsif @paths[$u] == -1 { # extend tree
            @paths[$u] = $v;
            if @matches[$u] == -1 { # augmenting path found
               my $v = $u;
               while $v != -1 {
                  my $prev = @paths[$v];
                  my $next = ( $prev != -1 ) ?? @matches[$prev] !! -1;
                  @matches[$v] = $prev;
                  @matches[$prev] = $v if $prev != -1;
                  $v = $next;
               }
               return (@matches, True);
            }
            @used[@matches[$u]] = True;
            @queue.push: @matches[$u];
         }
      }
   }
   return (@matches, False);
}

# find and return the matching array and the size of the matching
sub solve(@adj) {
   my @matches = -1 xx ( my $n = @adj.elems );
   my $res = 0;

   for ^$n -> $v {
      if @matches[$v] == -1 {
         my ($new_matches, $found) = findPath(@adj, $v, $n, @matches);
         if $found {
            @matches = @$new_matches;
            $res++;
         }
      }
   }
   return (@matches, $res);
}

# Example: 5-cycle (0–1–2–3–4–0)
my $n = 5;
my @edges = (0,1), (1,2), (2,3), (3,4), (4,0);
my @adj = [ [] xx $n ];
for @edges -> ($u, $v) {
   @adj[$u].push($v);
   @adj[$v].push($u);
}

my ($matches, $msize) = solve(@adj);
say "Maximum matching size: $msize";
say "Matched pairs:";
for $matches.kv -> $u, $v { say "  $u – $v" if $v != -1 && $u < $v }
#--------------------------------------------------------- 112 bor-vka-algorithm
# 20250612 Raku programming solution

class Edge { has Int ( $.u, $.v, $.weight ) }

class Graph {
   has Int $.v;         # Number of vertices
   has Edge @.edges;    # List of Edge(s)

   method add-edge(Int $u, Int $v, Int $weight) {
      @.edges.push: Edge.new(:$u, :$v, :$weight)
   }

   method boruvka-mst {
      my @parent = ^$.v;
      my @rank = 0 xx $.v;
      my ($num-trees, $mst-weight) = $.v, 0;

      sub find($i) { # find the root of a set with path compression
         return $i == @parent[$i] ?? $i !! (@parent[$i] = find(@parent[$i]))
      }

      sub union($x, $y) { # union two sets by rank
         my ($x-root, $y-root) = (find($x), find($y));
         return if $x-root == $y-root;

         when @rank[$x-root] < @rank[$y-root] { @parent[$x-root] = $y-root }
         default {
            @parent[$y-root] = $x-root;
            @rank[$x-root]++ if @rank[$x-root] == @rank[$y-root];
         }
      }

      while $num-trees > 1 { # Boruvka's main loop
         my @cheapest;

         for @.edges -> $edge { # Find the cheapest edge for each connected
            my ($set1, $set2)  = $edge.u, $edge.v;
            ($set1, $set2) .= map(&find);
            next if $set1 == $set2;

            for $set1, $set2 -> $set {
               @cheapest[$set] //= $edge;
               @cheapest[$set] = $edge if $edge.weight < @cheapest[$set].weight
            }
         }

         for @cheapest.grep(*.defined) -> $edge {# Add the chosen cheapest edges
            my ($set1, $set2) = (find($edge.u), find($edge.v));
            next if $set1 == $set2;

            $mst-weight += $edge.weight;
            union($set1, $set2);
            say "Edge {$edge.u}→{$edge.v} with weight {$edge.weight} added to MST";
            $num-trees--
         }
      }
      say "Total MST weight: $mst-weight"
   }
}

my $graph = Graph.new(v => 4);
$graph.add-edge(|$_) for (0,1,10), (0,2,6), (0,3,5), (1,3,15), (2,3,4);
$graph.boruvka-mst;
#--------------------------------------------------- 113 boustrophedon-transform
sub boustrophedon-transform (@seq) { map *.tail, (@seq[0], {[[\+] flat @seq[++$ ], .reverse]}…*) }

sub abbr ($_) { .chars < 41 ?? $_ !! .substr(0,20) ~ '…' ~ .substr(*-20) ~ " ({.chars} digits)" }

for '1 followed by 0\'s A000111', (flat 1, 0 xx *),
    'All-1\'s           A000667', (flat 1 xx *),
    '(-1)^n             A062162', (flat 1, [\×] -1 xx *),
    'Primes             A000747', (^∞ .grep: &is-prime),
    'Fibonaccis         A000744', (1,1,*+*…*),
    'Factorials         A230960', (1,|[\×] 1..∞)
  -> $name, $seq
{ say "\n$name:\n" ~ (my $b-seq = boustrophedon-transform $seq)[^15] ~ "\n1000th term: " ~ abbr $b-seq[999] }
#----------------------------------------------------------- 114 box-the-compass
sub point (Int $index) {
    my $ix = $index % 32;
    if $ix +& 1
        { "&point(($ix + 1) +& 28) by &point(((2 - ($ix +& 2)) * 4) + $ix +& 24)" }
    elsif $ix +& 2
        { "&point(($ix + 2) +& 24)-&point(($ix +| 4) +& 28)" }
    elsif $ix +& 4
        { "&point(($ix + 8) +& 16)&point(($ix +| 8) +& 24)" }
    else
        { <north east south west>[$ix div 8]; }
}

sub test-angle ($ix) { $ix * 11.25 + (0, 5.62, -5.62)[ $ix % 3 ] }
sub angle-to-point(\𝜽) { floor 𝜽 / 360 * 32 + 0.5 }

for 0 .. 32 -> $ix {
    my \𝜽 = test-angle($ix);
    printf "  %2d %6.2f° %s\n",
              $ix % 32 + 1,
                  𝜽,
                         tc point angle-to-point 𝜽;
}
#------------------------------------------------- 115 boyer-moore-string-search
# 20220818 Raku programming solution

sub suffixes (@pat,\m) {
   loop (my ($i,$f,$g,@suff)=m-2, 0, m-1, |flat 0 xx m-1,m; $i >= 0; --$i) {
      if $i > $g and @suff[$i + m - 1 - $f] < $i - $g {
         @suff[$i] = @suff[$i + m - 1 - $f]
      } else {
	 $g = $i if $i < $g;
         $f = $i;
	 while $g >= 0 and @pat[$g] eq @pat[$g + m - 1 - $f] { $g-- }
         @suff[$i] = $f - $g
      }
   }
   return @suff;
}

sub preBmGs (@pat,\m) {
   my (@suff, @bmGs) := suffixes(@pat,m), [m xx m];

   for m-1 ... 0 -> \k {
      if @suff[k] == k + 1 {
         loop (my $j=0; $j < m-1-k; $j++) { @bmGs[k]=m-1-k if @bmGs[$j] == m }
      }
   }
   for ^(m-1) { @bmGs[m - 1 - @suff[$_]] = m - 1 - $_ }
   return @bmGs;
}

sub BM (@txt,@pat) {
   my (\m, \n, $j)    = +@pat, +@txt, 0;
   my (@bmGs, %bmBc) := preBmGs(@pat,m), hash @pat Z=> ( m-1 ... 1 );

   return gather while $j <= n - m {
      loop (my $i = m - 1; $i >= 0 and @pat[$i] eq @txt[$i + $j]; ) { $i-- }
      if $i < 0 {
	 take $j;
         $j += @bmGs[0]
      } else {
         $j += max @bmGs[$i], (%bmBc{@txt[$i + $j]} // m)-m+$i
      }
   }
}

my @texts = [
   "GCTAGCTCTACGAGTCTA",
   "GGCTATAATGCGTA",
   "there would have been a time for such a word",
   "needle need noodle needle",
   "BharôtভাৰতBharôtভারতIndiaBhāratભારતBhāratभारतBhārataಭಾರತBhāratभारतBhāratamഭാരതംBhāratभारतBhāratभारतBharôtôଭାରତBhāratਭਾਰਤBhāratamभारतम्Bārataபாரதம்BhāratamഭാരതംBhāratadēsamభారతదేశం",
   "InhisbookseriesTheArtofComputerProgrammingpublishedbyAddisonWesleyDKnuthusesanimaginarycomputertheMIXanditsassociatedmachinecodeandassemblylanguagestoillustratetheconceptsandalgorithmsastheyarepresented",
   "Nearby farms grew a half acre of alfalfa on the dairy's behalf, with bales of all that alfalfa exchanged for milk.",
];

my @pats = [ "TCTA", "TAATAAA", "word", "needle", "ഭാരതം", "put", "and", "alfalfa"];

say "text$_ = @texts[$_]" for @texts.keys ;
say();

for @pats.keys {
   my \j = $_ < 6 ?? $_ !! $_-1 ; # for searching text5 twice
   say "Found '@pats[$_]' in 'text{j}' at indices ", BM @texts[j].comb, @pats[$_].comb
}
#---------------------------------------------- 116 brace-expansion-using-ranges
my $range = rx/ '{' $<start> = <-[.]>+? '..' $<end> = <-[.]>+? ['..' $<incr> = ['-'?\d+] ]? '}' /;
my $list  = rx/ ^ $<prefix> = .*? '{' (<-[,}]>+) +%% ',' '}' $<postfix> = .* $/;

sub expand (Str $string) {
    my @return = $string;
    if $string ~~ $range {
        quietly my ($start, $end, $incr) = $/<start end incr>».Str;
        $incr ||= 1;
        ($end, $start) = $start, $end if $incr < 0;
        $incr.=abs;

        if try all( +$start, +$end ) ~~ Numeric {
            $incr = - $incr if $start > $end;

            my ($sl, $el) = 0, 0;
            $sl = $start.chars if $start.starts-with('0');
            $el = $end.chars   if   $end.starts-with('0');

            my @this = $start < $end ?? (+$start, * + $incr …^ * > +$end) !! (+$start, * + $incr …^ * < +$end);
            @return  = @this.map: { $string.subst($range, sprintf("%{'0' ~ max $sl, $el}d", $_) ) }
        }
        elsif try +$start ~~ Numeric or +$end ~~ Numeric {
            return $string #fail
        }
        else {
            my @this;
            if $start.chars + $end.chars > 2 {
                return $string if $start.succ eq $start or $end.succ eq $end; # fail
                @this = $start lt $end ?? ($start, (*.succ xx $incr).tail …^ * gt $end) !! ($start, (*.pred xx $incr).tail …^ * lt $end);
            }
            else {
                $incr = -$incr if $start gt $end;
                @this = $start lt $end ?? ($start, (*.ord + $incr).chr …^ * gt $end) !! ($start, (*.ord + $incr).chr …^ * lt $end);
            }
            @return = @this.map: { $string.subst($range, sprintf("%s", $_) ) }
        }
    }
    if $string ~~ $list {
        my $these = $/[0]».Str;
        my ($prefix, $postfix) = $/<prefix postfix>».Str;
        if ($prefix ~ $postfix).chars {
            @return = $these.map: { $string.subst($list, $prefix ~ $_ ~ $postfix) } if $these.elems > 1
        }
        else {
            @return = $these.join: ' '
        }
    }
    my $cnt = 1;
    while $cnt != +@return {
        $cnt = +@return;
        @return.=map: { |.&expand }
    }
    @return
}

for qww<
    # Required tests

    simpleNumberRising{1..3}.txt
    simpleAlphaDescending-{Z..X}.txt
    steppedDownAndPadded-{10..00..5}.txt
    minusSignFlipsSequence{030..20..-5}.txt
    combined-{Q..P}{2..1}.txt
    emoji{🌵..🌶}{🌽..🌾}etc
    li{teral
    rangeless{}empty
    rangeless{random}string

    # Test some other features

    'stop point not in sequence-{02..10..3}.txt'
    steppedAlphaRising{P..Z..2}.txt
    'simple {just,give,me,money} list'
    {thatʼs,what,I,want}
    'emoji {☃,☄}{★,🇺🇸,☆} lists'
    'alphanumeric mix{ab7..ac1}.txt'
    'alphanumeric mix{0A..0C}.txt'

    # fail by design

    'mixed terms fail {7..C}.txt'
    'multi char emoji ranges fail {🌵🌵..🌵🌶}'
  > -> $test {
     say "$test ->";
     say ('    ' xx * Z~ expand $test).join: "\n";
     say '';
}
#--------------------------------------------------------- 117 brazilian-numbers
multi is-Brazilian (Int $n where $n %% 2 && $n > 6) { True }

multi is-Brazilian (Int $n) {
    LOOP: loop (my int $base = 2; $base < $n - 1; ++$base) {
        my $digit;
        for $n.polymod( $base xx * ) {
            $digit //= $_;
            next LOOP if $digit != $_;
        }
        return True
    }
    False
}

my $upto = 20;

put "First $upto Brazilian numbers:\n", (^Inf).hyper.grep( &is-Brazilian )[^$upto];

put "\nFirst $upto odd Brazilian numbers:\n", (^Inf).hyper.map( * * 2 + 1 ).grep( &is-Brazilian )[^$upto];

put "\nFirst $upto prime Brazilian numbers:\n", (^Inf).hyper(:8degree).grep( { .is-prime && .&is-Brazilian } )[^$upto];
#---------------------------------------------------------- 118 break-oo-privacy
class Foo {
    has $!shyguy = 42;
}
my Foo $foo .= new;

say $foo.^attributes.first('$!shyguy').get_value($foo);
#--------------------------------------------------- 119 bron-kerbosch-algorithm
# Returns all maximal Cliques as sorted List of Lists.
sub BronKerbosch ( @undirected_edges ) {

    #| Adjacency list of the whole Graph, as immutable hash (Map) of immutable Sets.
    my Map $G = @undirected_edges
                .map({ |( .[0,1], .[1,0] ) })
                .classify( {.[0]}, :as{.[1]} )
                .duckmap( *.Set )
                .Map;

    #| Number of neighbors in G
    my Map $degree = $G.map({ .key => .value.elems }).Map;

    return gather BK();

    sub BK (
        Set     :$R         = Set.new,              #= Current clique
        SetHash :$P is copy = SetHash.new($G.keys), #= Potential candidates to expand the clique
        SetHash :$X is copy = SetHash.new,          #= Vertices already processed
    ) {
        if !$P and !$X {
            take $R.keys.sort.cache if $R.elems > 2;
            return;
        }

        my $Pivot = ($P ∪ $X).max({ $degree{$_} }).key;

        my @Candidates = ( $P (-) $G{$Pivot} ).keys;

        for $G{@Candidates}:kv -> $v, $Neighbors_of_v {

            &?ROUTINE.(     # Recursive call with updated sets
                R => ($R ∪ $v),
                P => ($P ∩ $Neighbors_of_v),
                X => ($X ∩ $Neighbors_of_v),
            );

            # Move vertex v from P to X
            $P{$v} = False;
            $X{$v} = True;
        }
    }
}

say .join(",") for sort BronKerbosch <a-b a-c b-c d-e d-f e-f>».split("-");
#----------------------------------------------- 120 brzozowski-algebraic-method
# 20241120 Raku programming solution

role RE1 { has $.c }
role RE2 { has ( $.e, $.f ) }

class Empty           { method Str { '0' } }
class Epsilon         { method Str { '1' } }
class Car    does RE1 { method Str { $.c } } # Caractère ?
class Star   does RE1 { method Str { "($.c)*" } }
class Union  does RE2 { method Str { "$.e+$.f" } }
class Concat does RE2 { method Str { "($.e)($.f)" } }

my ($empty, $epsilon) = (Empty, Epsilon)>>.new;

sub simple-re($e is rw) {
   sub do-simple($e) {
      given $e {
         when Union {
            my ($ee,$ef) = ($e.e, $e.f).map: { do-simple $_ };
            if    $ee ~~ $ef   { return $ee }
            elsif $ee ~~ Union { do-simple(Union.new(e => $ee.e, f => Union.new(e => $ee.f, f => $ef))) }
            elsif $ee ~~ Empty { return $ef }
            elsif $ef ~~ Empty { return $ee }
            else  { Union.new: e => $ee, f => $ef }
         }
         when Concat {
            my ($ee,$ef) = ($e.e, $e.f).map: { do-simple $_ };
            if    $ee ~~ Epsilon { return $ef }
            elsif $ef ~~ Epsilon {  return $ee }
            elsif $ee ~~ Empty || $ef ~~ Empty { return Empty }
            elsif $ee ~~ Concat { do-simple(Concat.new(e => $ee.e, f => Concat.new(e => $ee.f, f => $ef))) }
            else { Concat.new: e => $ee, f => $ef }
         }
         when Star {
            given do-simple($e.c) {
               $_ ~~ Empty | Epsilon ?? return Epsilon !! Star.new: c => $_
            }
         }
         default { $e }
      }
   }
   my $prev = '';
   until $e === $prev or $e.Str eq $prev { ($prev, $e) = $e, do-simple($e) }
   return $e;
}

sub brzozowski(@a, @b) {
   for @a.elems - 1 ... 0 -> \n {
      @b[n] = Concat.new(e => Star.new(c => @a[n;n]), f => @b[n]);
      for ^n -> \j {
         @a[n;j] = Concat.new(e => Star.new(c => @a[n;n]), f => @a[n;j]);
      }
      for ^n -> \i {
         @b[i] = Union.new(e => @b[i], f => Concat.new(e => @a[i;n], f => @b[n]));
         for ^n -> \j {
            @a[i;j] = Union.new(e => @a[i;j], f => Concat.new(e => @a[i;n], f => @a[n;j]));
         }
      }
      for ^n -> \i { @a[i;n] = $empty }
   }
   return @b[0]
}

my @a = [
    [$empty, Car.new(c => 'a'), Car.new(c => 'b')],
    [Car.new(c => 'b'), $empty, Car.new(c => 'a')],
    [Car.new(c => 'a'), Car.new(c => 'b'), $empty],
];
my @b = [$epsilon, $empty, $empty];

say ( my $re = brzozowski(@a, @b) ).Str;
say simple-re($re).Str;
#------------------------------------------------------------ 121 bulls-and-cows
my $size = 4;
my @secret = pick $size, '1' .. '9';

for 1..* -> $guesses {
    my @guess;
    loop {
        @guess = (prompt("Guess $guesses: ") // exit).comb;
        last if @guess == $size and
            all(@guess) eq one(@guess) & any('1' .. '9');
        say 'Malformed guess; try again.';
    }
    my ($bulls, $cows) = 0, 0;
    for ^$size {
        when @guess[$_] eq @secret[$_] { ++$bulls; }
        when @guess[$_] eq any @secret { ++$cows; }
    }
    last if $bulls == $size;
    say "$bulls bulls, $cows cows.";
}

say 'A winner is you!';
#------------------------------------------------- 122 burrows-wheeler-transform
# STX can be any character that doesn't appear in the text.
# Using a visible character here for ease of viewing.

constant \STX = '👍';

# Burrows-Wheeler transform
sub transform (Str $s is copy) {
    note "String can't contain STX character." and exit if $s.contains: STX;
    $s = STX ~ $s;
    (^$s.chars).map({ $s.comb.list.rotate: $_ }).sort[*;*-1].join
}

# Burrows-Wheeler inverse transform
sub ɯɹoɟsuɐɹʇ (Str $s) {
    my @t = $s.comb.sort;
    @t = ($s.comb Z~ @t).sort for 1..^$s.chars;
    @t.first( *.ends-with: STX ).chop
}

# TESTING
for |<BANANA dogwood SIX.MIXED.PIXIES.SIFT.SIXTY.PIXIE.DUST.BOXES>,
    'TO BE OR NOT TO BE OR WANT TO BE OR NOT?', "Oops{STX}"
    -> $phrase {
    say 'Original:            ', $phrase;
    say 'Transformed:         ', transform $phrase;
    say 'Inverse transformed: ', ɯɹoɟsuɐɹʇ transform $phrase;
    say '';
}
#------------------------------------------------------------- 123 caesar-cipher
my @alpha = 'A' .. 'Z';
sub encrypt ( $key where 1..25, $plaintext ) {
    $plaintext.trans( @alpha Z=> @alpha.rotate($key) );
}
sub decrypt ( $key where 1..25, $cyphertext ) {
    $cyphertext.trans( @alpha.rotate($key) Z=> @alpha );
}

my $original = 'THE FIVE BOXING WIZARDS JUMP QUICKLY';
my $en = encrypt( 13, $original );
my $de = decrypt( 13, $en );

.say for $original, $en, $de;

say 'OK' if $original eq all( map { .&decrypt(.&encrypt($original)) }, 1..25 );
#------------------------------------------------ 124 calculating-the-value-of-e
# If you need high precision: Sum of a Taylor series method.
# Adjust the terms parameter to suit. Theoretically the
# terms could be ∞. Practically, calculating an infinite
# series takes an awfully long time so limit to 500.

constant 𝑒 = [\+] flat 1, [\/] 1.FatRat..*;

.say for 𝑒[500].comb(80);

say '';

# Or, if you don't need high precision, it's a built-in.
say e;
#------------------------------------------- 125 calendar---for-real-programmers
$_="\0".."~";<
115 97 121 32 34 91 73 78 83 69 82 84 32 83 78 79 79 80 89 32 72 69 82 69 93 34
59 114 117 110 32 60 99 97 108 62 44 64 42 65 82 71 83 91 48 93 47 47 49 57 54 57
>."$_[99]$_[104]$_[114]$_[115]"()."$_[69]$_[86]$_[65]$_[76]"()
#------------------------------------------------------------------ 126 calendar
my $months-per-row = 3;
my @weekday-names  = <Mo Tu We Th Fr Sa Su>;
my @month-names    = <Jan Feb Mar Apr May Jun Jul Aug Sep Oct Nov Dec>;

my Int() $year = @*ARGS.shift || 1969;
say fmt-year($year);

sub fmt-year ($year) {
    my @month-strs;
    @month-strs[$_] = [fmt-month($year, $_).lines] for 1 .. 12;
    my @C = ' ' x 30 ~ $year, '';
    for 1, 1+$months-per-row ... 12 -> $month {
        while @month-strs[$month] {
            for ^$months-per-row -> $column {
                @C[*-1] ~= @month-strs[$month+$column].shift ~ ' ' x 3 if @month-strs[$month+$column];
            }
            @C.push: '';
        }
        @C.push: '';
    }
    @C.join: "\n";
}

sub fmt-month ($year, $month) {
    my $date = Date.new($year,$month,1);
    @month-names[$month-1].fmt("%-20s\n") ~ @weekday-names ~ "\n" ~
    (('  ' xx $date.day-of-week - 1), (1..$date.days-in-month)».fmt('%2d')).flat.rotor(7, :partial).join("\n") ~
    (' ' if $_ < 7) ~ ('  ' xx 7-$_).join(' ') given Date.new($year, $month, $date.days-in-month).day-of-week;
}
#------------------------------------------------------ 127 calkin-wilf-sequence
my @calkin-wilf = Any, 1, {1 / (.Int × 2 + 1 - $_)} … *;

# Rational to Calkin-Wilf index
sub r2cw (Rat $rat) { :2( join '', flat (flat (1,0) xx *) Zxx reverse r2cf $rat ) }

# The task

say "First twenty terms of the Calkin-Wilf sequence: ",
    @calkin-wilf[1..20]».&prat.join: ', ';

say "\n99991st through 100000th: ",
    (my @tests = @calkin-wilf[99_991 .. 100_000])».&prat.join: ', ';

say "\nCheck reversibility: ", @tests».Rat».&r2cw.join: ', ';

say "\n83116/51639 is at index: ", r2cw 83116/51639;


# Helper subs
sub r2cf (Rat $rat is copy) { # Rational to continued fraction
    gather loop {
	    $rat -= take $rat.floor;
	    last if !$rat;
	    $rat = 1 / $rat;
    }
}

sub prat ($num) { # pretty Rat
    return $num unless $num ~~ Rat|FatRat;
    return $num.numerator if $num.denominator == 1;
    $num.nude.join: '/';
}
#--------------------------------------------------- 128 call-an-object-method-1
class Thing {
  method regular-example() { say 'I haz a method' }

  multi method multi-example() { say 'No arguments given' }
  multi method multi-example(Str $foo) { say 'String given' }
  multi method multi-example(Int $foo) { say 'Integer given' }
};

# 'new' is actually a method, not a special keyword:
my $thing = Thing.new;

# No arguments: parentheses are optional
$thing.regular-example;
$thing.regular-example();
$thing.multi-example;
$thing.multi-example();

# Arguments: parentheses or colon required
$thing.multi-example("This is a string");
$thing.multi-example: "This is a string";
$thing.multi-example(42);
$thing.multi-example: 42;

# Indirect (reverse order) method call syntax: colon required
my $foo = new Thing: ;
multi-example $thing: 42;
#--------------------------------------------------- 129 call-an-object-method-2
my @array = <a z c d y>;
@array .= sort;  # short for @array = @array.sort;

say @array».uc;  # uppercase all the strings: A C D Y Z
#--------------------------------------------------- 130 call-an-object-method-3
my $object = "a string";  # Everything is an object.
my method example-method {
    return "This is { self }.";
}

say $object.&example-method;  # Outputs "This is a string."
#------------------------------------------------- 131 camel-case-and-snake-case
my @tests = qww<
  snakeCase  snake_case  variable_10_case  variable10Case  "ɛrgo rE tHis"
  hurry-up-joe!  c://my-docs/happy_Flag-Day/12.doc  "  spaces  "
>;


sub to_snake_case (Str $snake_case_string is copy) {
    $snake_case_string.=trim;
    return $snake_case_string if $snake_case_string.contains: / \s | '/' /;
    $snake_case_string.=subst: / <after <:Ll>> (<:Lu>|<:digit>+) /, {'_' ~ $0.lc}, :g;
    $snake_case_string.=subst: / <after <:digit>> (<:Lu>) /, {'_' ~ $0.lc}, :g;
}

sub toCamelCase (Str $CamelCaseString is copy) {
    $CamelCaseString.=trim;
    return $CamelCaseString if $CamelCaseString.contains: / \s | '/' /;
    $CamelCaseString.=subst: / ('_') (\w) /, {$1.uc}, :g;
}

sub to-kebab-case (Str $kebab-case-string is copy) {
    $kebab-case-string.=trim;
    return $kebab-case-string if $kebab-case-string.contains: / \s | '/' /;
    $kebab-case-string.=subst: / ('_') (\w) /, {'-' ~ $1.lc}, :g;
    $kebab-case-string.=subst: / <after <:Ll>> (<:Lu>|<:digit>+) /, {'-' ~ $0.lc}, :g;
    $kebab-case-string.=subst: / <after <:digit>> (<:Lu>) /, {'-' ~ $0.lc}, :g;
}

say   "{' ' x 30}to_snake_case";
printf "%33s ==> %s\n", $_, .&to_snake_case for @tests;
say "\n{' ' x 30}toCamelCase";
printf "%33s ==> %s\n", $_,   .&toCamelCase for @tests;
say "\n{' ' x 30}to-kabab-case";
printf "%33s ==> %s\n", $_, .&to-kebab-case for @tests;
#------------------------------------------------------- 132 canonicalize-cidr-3
# canonicalize a IP4 CIDR block
sub CIDR-IP4-canonicalize ($address) {
  constant @mask = 24, 16, 8, 0;

  # dotted-decimal / subnet size
  my ($dotted, $size) = |$address.split('/'), 32;

  # get IP as binary address
  my $binary = sum $dotted.comb(/\d+/) Z+< @mask;

  # mask off subnet
  $binary +&= (2 ** $size - 1) +< (32 - $size);

  # Return dotted-decimal notation
  (@mask.map($binary +> * +& 0xFF).join('.'), $size)
}

my @tests = <
  87.70.141.1/22
  36.18.154.103/12
  62.62.197.11/29
  67.137.119.181/4
  161.214.74.21/24
  184.232.176.184/18
  100.68.0.18/18
  10.4.30.77/30
  10.207.219.251/32
  10.207.219.251
  110.200.21/4
  10.11.12.13/8
  10.../8
>;

printf "CIDR: %18s  Routing prefix: %s/%s\n", $_, |.&CIDR-IP4-canonicalize
  for @*ARGS || @tests;
#---------------------------------------------------------------- 133 cantor-set
sub cantor ( Int $height ) {
    my $width = 3 ** ($height - 1);

    my @lines = ( "\c[FULL BLOCK]" x $width ) xx $height;

    my sub _trim_middle_third ( $len, $start, $index ) {
        my $seg = $len div 3
            or return;

        for ( $index ..^ $height ) X ( 0 ..^ $seg ) -> ( $i, $j ) {
            @lines[$i].substr-rw( $start + $seg + $j, 1 ) = ' ';
        }

        _trim_middle_third( $seg, $start + $_, $index + 1 ) for 0, $seg * 2;
    }

    _trim_middle_third( $width, 0, 1 );
    return @lines;
}

.say for cantor(5);
#------------------------------------------ 134 carmichael-3-strong-pseudoprimes
for (2..67).grep: *.is-prime -> \Prime1 {
    for 1 ^..^ Prime1 -> \h3 {
        my \g = h3 + Prime1;
        for 0 ^..^ h3 + Prime1 -> \d {
            if (h3 + Prime1) * (Prime1 - 1) %% d and -Prime1**2 % h3 == d % h3  {
                my \Prime2 = floor 1 + (Prime1 - 1) * g / d;
                next unless Prime2.is-prime;
                my \Prime3 = floor 1 + Prime1 * Prime2 / h3;
                next unless Prime3.is-prime;
                next unless (Prime2 * Prime3) % (Prime1 - 1) == 1;
                say "{Prime1} × {Prime2} × {Prime3} == {Prime1 * Prime2 * Prime3}";
            }
        }
    }
}
#------------------------------------ 135 cartesian-product-of-two-or-more-lists
# cartesian product of two lists using the X cross meta-operator
say (1, 2) X (3, 4);
say (3, 4) X (1, 2);
say (1, 2) X ( );
say ( )    X ( 1, 2 );

# cartesian product of variable number of lists using
# the [X] reduce cross meta-operator
say [X] (1776, 1789), (7, 12), (4, 14, 23), (0, 1);
say [X] (1, 2, 3), (30), (500, 100);
say [X] (1, 2, 3), (),   (500, 100);
#----------------------------------------- 136 case-sensitivity-of-identifiers-1
my $dog = 'Benjamin';
my $Dog = 'Samba';
my $DOG = 'Bernie';
say "The three dogs are named $dog, $Dog, and $DOG."
#----------------------------------------- 137 case-sensitivity-of-identifiers-2
constant dog = 'Benjamin';
sub Dog() { 'Samba' }
my &DOG = { 'Bernie' }
say "The three dogs are named {dog}, {Dog}, and {DOG}."
#--------------------------------------------------------- 138 casting-out-nines
sub cast-out(\BASE = 10, \MIN = 1, \MAX = BASE**2 - 1) {
  my \B9 = BASE - 1;
  my @ran = ($_ if $_ % B9 == $_**2 % B9 for ^B9);
  my $x = MIN div B9;
  gather loop {
    for @ran -> \n {
      my \k = B9 * $x + n;
      take k if k >= MIN;
    }
    $x++;
  } ...^ * > MAX;
}

say cast-out;
say cast-out 16;
say cast-out 17;
#--------------------------------------------------------- 139 catalan-numbers-2
constant Catalan = 1, |[\*] (2, 6 ... *) Z/ 2 .. *;


# In both cases, the sixteen first values can be seen with:
.say for Catalan[^16];
#------------------------------------------ 140 catalan-numbers-pascals-triangle
constant @pascal = [1], -> @p { [0, |@p Z+ |@p, 0] } ... *;

constant @catalan = gather for 2, 4 ... * -> $ix {
    my @row := @pascal[$ix];
    my $mid = +@row div 2;
    take [-] @row[$mid, $mid+1]
}

.say for @catalan[^20];
#------------------------------------------------------------ 141 catamorphism-1
my @list = 1..10;
say [+] @list;
say [*] @list;
say [~] @list;
say min @list;
say max @list;
say [lcm] @list;
#------------------------------------------------------------ 142 catamorphism-2
my @list = 1..10;
say reduce &infix:<+>, @list;
say reduce &infix:<*>, @list;
say reduce &infix:<~>, @list;
say reduce &infix:<min>, @list;
say reduce &infix:<max>, @list;
say reduce &infix:<lcm>, @list;
#--------- 143 centre-and-radius-of-a-circle-passing-through-3-points-in-a-plane
sub circle( (\𝒳ᵢ, \𝒴ᵢ), (\𝒳ⱼ, \𝒴ⱼ), (\𝒳ₖ, \𝒴ₖ) ) {
   my \𝒞ₓ = ((𝒳ᵢ² + 𝒴ᵢ²) × (𝒴ₖ - 𝒴ⱼ) + (𝒳ⱼ² + 𝒴ⱼ²) × (𝒴ᵢ - 𝒴ₖ) + (𝒳ₖ² + 𝒴ₖ²) × (𝒴ⱼ - 𝒴ᵢ)) /
             (𝒳ᵢ × (𝒴ₖ - 𝒴ⱼ) + 𝒳ⱼ × (𝒴ᵢ - 𝒴ₖ) + 𝒳ₖ × (𝒴ⱼ - 𝒴ᵢ)) / 2 ;
   my \𝒞ᵧ = ((𝒳ᵢ² + 𝒴ᵢ²) × (𝒳ₖ - 𝒳ⱼ) + (𝒳ⱼ² + 𝒴ⱼ²) × (𝒳ᵢ - 𝒳ₖ) + (𝒳ₖ² + 𝒴ₖ²) × (𝒳ⱼ - 𝒳ᵢ)) /
             (𝒴ᵢ × (𝒳ₖ - 𝒳ⱼ) + 𝒴ⱼ × (𝒳ᵢ - 𝒳ₖ) + 𝒴ₖ × (𝒳ⱼ - 𝒳ᵢ)) / 2 ;
   center => (𝒞ₓ,𝒞ᵧ), radius => ((𝒞ₓ - 𝒳ᵢ)² + (𝒞ᵧ - 𝒴ᵢ)²).sqrt
}

say circle (22.83,2.07), (14.39,30.24), (33.65,17.31);
#--------------------------------- 144 centroid-of-a-set-of-n-dimensional-points
sub centroid { ( [»+«] @^LoL ) »/» +@^LoL }

say .&centroid for
    ( (1,), (2,), (3,) ),
    ( (8, 2), (0, 0) ),
    ( (5, 5, 0), (10, 10, 0) ),
    ( (1, 3.1, 6.5), (-2, -5, 3.4), (-7, -4, 9), (2, 0, 3) ),
    ( (0, 0, 0, 0, 1), (0, 0, 0, 1, 0), (0, 0, 1, 0, 0), (0, 1, 0, 0, 0) ),
;
#---------------------------------------------------------------- 145 chaocipher
my @left;
my @right;

sub reset {
    @left  = <HXUCZVAMDSLKPEFJRIGTWOBNYQ>.comb;
    @right = <PTLNBQDEOYSFAVZKGJRIHWXUMC>.comb;
}

sub encode ($letter) {
    my $index = @right.first: $letter.uc, :k;
    my $enc   = @left[$index];
    $index.&permute;
    $enc
}

sub decode ($letter) {
    my $index = @left.first: $letter.uc, :k;
    my $dec   = @right[$index];
    $index.&permute;
    $dec
}

sub permute ($index) {
    @left.=rotate: $index;
    @left[1..13].=rotate;
    @right.=rotate: $index + 1;
    @right[2..13].=rotate;
}

reset;
say 'WELLDONEISBETTERTHANWELLSAID'.comb».&encode.join;
reset;
say 'OAHQHCNYNXTSZJRRHJBYHQKSOUJY'.comb».&decode.join;
#----------------------------------------------------------- 146 character-codes
for 'AΑА𪚥🇺🇸👨‍👩‍👧‍👦'.comb {
    .put for
    [ 'Character',
      'Character name',
      'Unicode property',
      'Unicode script',
      'Unicode block',
      'Added in Unicode version',
      'Ordinal(s)',
      'Hex ordinal(s)',
      'UTF-8',
      'UTF-16LE',
      'UTF-16BE',
      'Round trip by name',
      'Round trip by ordinal'
    ]».fmt('%25s:')
    Z
    [ $_,
      .uninames.join(', '),
      .uniprops.join(', '),
      .uniprops('Script').join(', '),
      .uniprops('Block').join(', '),
      .uniprops('Age').join(', '),
      .ords,
      .ords.fmt('0x%X'),
      .encode('utf8'   )».fmt('%02X'),
      .encode('utf16le')».fmt('%02X').join.comb(4),
      .encode('utf16be')».fmt('%02X').join.comb(4),
      .uninames».uniparse.join,
      .ords.chrs
    ];
    say '';
}
#---------------------------------------------------- 147 chebyshev-coefficients
sub chebft ( Code $func, Real \a, Real \b, Int \n ) {

    my \bma = ½ × (b - a);
    my \bpa = ½ × (b + a);

    my @pi-n = ( ^n »+» ½ ) »×» (π/n);
    my @f    = ( @pi-n».cos »×» bma »+» bpa )».&$func;
    my @sums = (^n).map: { [+] @f »×« ( @pi-n »×» $_ )».cos };

    @sums »×» (2/n)
}

say chebft(&cos, 0, 1, 10)».fmt: '%+13.7e';
#------------------------------ 148 check-if-a-polygon-overlaps-with-a-rectangle
# 20230810 Raku programming solution

class Vector2 { has ( $.x, $.y );
   method dot ( \other ) { self.x * other.x + self.y * other.y }
};

class Rectangle { has ( $.x, $.y, $.w, $.h ) }

class Projection { has ( $.min, $.max ) };

sub getAxes(\poly) {
   return poly.append(poly[0]).rotor(2=>-1).map: -> (\vertex1,\vertex2) {
      my \vector1 = Vector2.new: x => vertex1[0], y => vertex1[1];
      my \vector2 = Vector2.new: x => vertex2[0], y => vertex2[1];
      my \edge    = Vector2.new: x => vector1.x - vector2.x,
                                 y => vector1.y - vector2.y;
      $_ = Vector2.new: x => -edge.y, y => edge.x
   }
}

sub projectOntoAxis(\poly, \axis) {
   my \vertex0 = poly[0];
   my \vector0 = Vector2.new: x => vertex0[0], y => vertex0[1];
   my $max     = my $min = axis.dot: vector0;
   for poly -> \vertex {
      my \vector = Vector2.new: x => vertex[0], y => vertex[1];
      given axis.dot: vector { when $_ < $min { $min = $_ }
                               when $_ > $max { $max = $_ } }
   }
   return Projection.new: min => $min, max => $max
}

sub projectionsOverlap(\proj1, \proj2) {
   return ! ( proj1.max < proj2.min or proj2.max < proj1.min )
}

sub rectToPolygon( \r ) {
    return [(r.x, r.y), (r.x, r.y+r.h), (r.x+r.w, r.y+r.h), (r.x+r.w, r.y)]
}

sub polygonOverlapsRect(\poly1, \rect) {
   my \poly2 = rectToPolygon rect;
   my (\axes1,\axes2) := (poly1,poly2).map: { getAxes $_ };
   for (axes1, axes2) -> \axes {
     for axes -> \axis {
         my (\proj1,\proj2) := (poly1,poly2).map: { projectOntoAxis $_, axis }
         return False unless projectionsOverlap(proj1, proj2)
      }
   }
   return True
}

my \poly = [ <0 0>, <0 2>, <1 4>, <2 2>, <2 0> ];
my \rect1 = Rectangle.new: :4x, :0y, :2h, :2w;
my \rect2 = Rectangle.new: :1x, :0y, :8h, :2w;
say "poly  = ", poly;
say "rect1 = ", rectToPolygon(rect1);
say "rect2 = ", rectToPolygon(rect2);
say();
say "poly and rect1 overlap? ", polygonOverlapsRect(poly, rect1);
say "poly and rect2 overlap? ", polygonOverlapsRect(poly, rect2);
#--------------------------------------------- 149 check-if-two-polygons-overlap
# 20230810 Raku programming solution

class Vector2 { has ( $.x, $.y );
   method dot ( \other ) { self.x * other.x + self.y * other.y }
};

class Projection { has ( $.min, $.max ) };

sub getAxes ( \poly ) {
   return poly.append(poly[0]).rotor(2=>-1).map: -> (\vertex1,\vertex2) {
      my \vector1 = Vector2.new: x => vertex1[0], y => vertex1[1];
      my \vector2 = Vector2.new: x => vertex2[0], y => vertex2[1];
      my \edge    = Vector2.new: x => vector1.x - vector2.x,
                                 y => vector1.y - vector2.y;
      $_ = Vector2.new: x => -edge.y, y => edge.x
   }
}

sub projectOntoAxis ( \poly, \axis ) {
   my \vertex0 = poly[0];
   my \vector0 = Vector2.new: x => vertex0[0], y => vertex0[1];
   my $max     = my $min = axis.dot: vector0;
   for poly -> \vertex {
      my \vector = Vector2.new: x => vertex[0], y => vertex[1];
      given axis.dot: vector { when $_ < $min { $min = $_ }
                               when $_ > $max { $max = $_ } }
   }
   return Projection.new: min => $min, max => $max
}

sub projectionsOverlap ( \proj1, \proj2 ) {
   return ! ( proj1.max < proj2.min or proj2.max < proj1.min )
}

sub polygonsOverlap( \poly1, \poly2 ) {
   my (\axes1,\axes2) := (poly1,poly2).map: { getAxes $_ };
   for (axes1, axes2) -> \axes {
     for axes -> \axis {
         my (\proj1,\proj2) := (poly1,poly2).map: { projectOntoAxis $_, axis }
         return False unless projectionsOverlap(proj1, proj2)
      }
   }
   return True
}

my \poly1 = [ <0 0>, <0 2>, <1 4>, <2 2>, <2 0> ];
my \poly2 = [ <4 0>, <4 2>, <5 4>, <6 2>, <6 0> ];
my \poly3 = [ <1 0>, <1 2>, <5 4>, <9 2>, <9 0> ];

say "poly1 = ", poly1;
say "poly2 = ", poly2;
say "poly3 = ", poly3;
say();
say "poly1 and poly2 overlap? ", polygonsOverlap(poly1, poly2);
say "poly1 and poly3 overlap? ", polygonsOverlap(poly1, poly3);
say "poly2 and poly3 overlap? ", polygonsOverlap(poly2, poly3);
#------------------------------------------ 150 check-input-device-is-a-terminal
say $*IN.t ?? "Input comes from tty." !! "Input doesn't come from tty.";
#------------------------------------------------ 151 check-machin-like-formulas
sub taneval ($coef, $f) {
  return 0 if $coef == 0;
  return $f if $coef == 1;
  return -taneval(-$coef, $f) if $coef < 0;

  my $a = taneval($coef+>1, $f);
  my $b = taneval($coef - $coef+>1, $f);
  ($a+$b)/(1-$a*$b);
}

sub tans (@xs) {
  return taneval(@xs[0;0], @xs[0;1].FatRat) if @xs == 1;

  my $a = tans(@xs[0 .. (-1+@xs+>1)]);
  my $b = tans(@xs[(-1+@xs+>1)+1 .. -1+@xs]);
  ($a+$b)/(1-$a*$b);
}

sub verify (@eqn) {
  printf "%5s (%s)\n", (tans(@eqn) == 1) ?? "OK" !! "Error",
    (map { "[{.[0]} {.[1].nude.join('/')}]" }, @eqn).join(' ');
}

verify($_) for
   ([[1,1/2], [1,1/3]],
    [[2,1/3], [1,1/7]],
    [[4,1/5], [-1,1/239]],
    [[5,1/7], [2,3/79]],
    [[5,29/278], [7,3/79]],
    [[1,1/2], [1,1/5], [1,1/8]],
    [[4,1/5], [-1,1/70], [1,1/99]],
    [[5,1/7], [4,1/53], [2,1/4443]],
    [[6,1/8], [2,1/57], [1,1/239]],
    [[8,1/10], [-1,1/239], [-4,1/515]],
    [[12,1/18], [8,1/57], [-5,1/239]],
    [[16,1/21], [3,1/239], [4,3/1042]],
    [[22,1/28], [2,1/443], [-5,1/1393], [-10,1/11018]],
    [[22,1/38], [17,7/601], [10,7/8149]],
    [[44,1/57], [7,1/239], [-12,1/682], [24,1/12943]],
    [[88,1/172], [51,1/239], [32,1/682], [44,1/5357], [68,1/12943]],
    [[88,1/172], [51,1/239], [32,1/682], [44,1/5357], [68,1/21944]]
    );
#------------------------------------------------------- 152 chemical-calculator
my %ATOMIC_MASS =
    H  =>   1.008       , Fe =>  55.845    , Te => 127.60       , Ir => 192.217    ,
    He =>   4.002602    , Co =>  58.933194 , I  => 126.90447    , Pt => 195.084    ,
    Li =>   6.94        , Ni =>  58.6934   , Xe => 131.293      , Au => 196.966569 ,
    Be =>   9.0121831   , Cu =>  63.546    , Cs => 132.90545196 , Hg => 200.592    ,
    B  =>  10.81        , Zn =>  65.38     , Ba => 137.327      , Tl => 204.38     ,
    C  =>  12.011       , Ga =>  69.723    , La => 138.90547    , Pb => 207.2      ,
    N  =>  14.007       , Ge =>  72.630    , Ce => 140.116      , Bi => 208.98040  ,
    O  =>  15.999       , As =>  74.921595 , Pr => 140.90766    , Po => 209        ,
    F  =>  18.998403163 , Se =>  78.971    , Nd => 144.242      , At => 210        ,
    Ne =>  20.1797      , Br =>  79.904    , Pm => 145          , Rn => 222        ,
    Na =>  22.98976928  , Kr =>  83.798    , Sm => 150.36       , Fr => 223        ,
    Mg =>  24.305       , Rb =>  85.4678   , Eu => 151.964      , Ra => 226        ,
    Al =>  26.9815385   , Sr =>  87.62     , Gd => 157.25       , Ac => 227        ,
    Si =>  28.085       , Y  =>  88.90584  , Tb => 158.92535    , Th => 232.0377   ,
    P  =>  30.973761998 , Zr =>  91.224    , Dy => 162.500      , Pa => 231.03588  ,
    S  =>  32.06        , Nb =>  92.90637  , Ho => 164.93033    , U  => 238.02891  ,
    Cl =>  35.45        , Mo =>  95.95     , Er => 167.259      , Np => 237        ,
    Ar =>  39.948       , Ru => 101.07     , Tm => 168.93422    , Pu => 244        ,
    K  =>  39.0983      , Rh => 102.90550  , Yb => 173.054      , Am => 243        ,
    Ca =>  40.078       , Pd => 106.42     , Lu => 174.9668     , Cm => 247        ,
    Sc =>  44.955908    , Ag => 107.8682   , Hf => 178.49       , Bk => 247        ,
    Ti =>  47.867       , Cd => 112.414    , Ta => 180.94788    , Cf => 251        ,
    V  =>  50.9415      , In => 114.818    , W  => 183.84       , Es => 252        ,
    Cr =>  51.9961      , Sn => 118.710    , Re => 186.207      , Fm => 257        ,
    Mn =>  54.938044    , Sb => 121.760    , Os => 190.23       ,
;
grammar Chemical_formula {
    my @ATOMIC_SYMBOLS = %ATOMIC_MASS.keys.sort;

    rule  TOP      { ^ (<lparen>|<rparen>|<element>)+ $ }
    token quantity { \d+ }
    token lparen   { '(' }
    token rparen   { ')'                    <quantity>? }
    token element  { $<e>=[@ATOMIC_SYMBOLS] <quantity>? }
}
class Chemical_formula_actions {
    has @stack = 0;
    method TOP     ($/) { $/.make: @stack }
    method lparen  ($/) { push @stack, 0  }
    method rparen  ($/) { my $m = @stack.pop;
                          @stack[*-1] += ($<quantity> // 1) * $m }
    method element ($/) { @stack[*-1] += ($<quantity> // 1) * %ATOMIC_MASS{~$<e>} }
}
sub molar_mass ( Str $formula --> Real ) {
    Chemical_formula.parse( $formula, :actions(Chemical_formula_actions.new) )
        orelse die "Chemical formula not recognized: '$formula'";
    return $/.made.[0];
}
say .&molar_mass.fmt('%7.3f '), $_ for <H H2 H2O Na2SO4 C6H12 COOH(C(CH3)2)3CH3>;
#---------------------------------------------------------- 153 cheryls-birthday
my @dates =
    { :15day, :5month },
    { :16day, :5month },
    { :19day, :5month },
    { :17day, :6month },
    { :18day, :6month },
    { :14day, :7month },
    { :16day, :7month },
    { :14day, :8month },
    { :15day, :8month },
    { :17day, :8month }
;

# Month can't have a unique day
my @filtered = @dates.grep(*.<month> != one(@dates.grep(*.<day> == one(@dates».<day>))».<month>));

# Day must be unique and unambiguous in remaining months
my $birthday = @filtered.grep(*.<day> == one(@filtered».<day>)).classify({.<month>})\
    .first(*.value.elems == 1).value[0];

# convenience array
my @months = <'' January February March April May June July August September October November December>;

say "Cheryl's birthday is { @months[$birthday<month>] } {$birthday<day>}.";
#------------------------------------------------- 154 chinese-remainder-theorem
# returns x where (a * x) % b == 1
sub mul-inv($a is copy, $b is copy) {
    return 1 if $b == 1;
    my ($b0, @x) = $b, 0, 1;
    ($a, $b, @x) = (
	$b,
	$a % $b,
	@x[1] - ($a div $b)*@x[0],
	@x[0]
    ) while $a > 1;
    @x[1] += $b0 if @x[1] < 0;
    return @x[1];
}

sub chinese-remainder(*@n) {
    my \N = [*] @n;
    -> *@a {
	N R% [+] map {
	    my \p = N div @n[$_];
	    @a[$_] * mul-inv(p, @n[$_]) * p
	}, ^@n
    }
}

say chinese-remainder(3, 5, 7)(2, 3, 2);
#------------------------------------------------------------ 155 chinese-zodiac
sub Chinese-zodiac ( Int $year ) {
    my @heaven  = <甲 jiă 乙 yĭ 丙 bĭng 丁 dīng 戊 wù 己 jĭ 庚 gēng 辛 xīn 壬 rén 癸 gŭi>.pairup;
    my @earth   = <子 zĭ 丑 chŏu 寅 yín 卯 măo 辰 chén 巳 sì 午 wŭ 未 wèi 申 shēn 酉 yŏu 戌 xū 亥 hài>.pairup;
    my @animal  = <Rat Ox Tiger Rabbit Dragon Snake Horse Goat Monkey Rooster Dog Pig>;
    my @element = <Wood Fire Earth Metal Water>;
    my @aspect  = <yang yin>;

    my $cycle_year = ($year - 4) % 60;
    my $i2         = $cycle_year % 2;
    my $i10        = $cycle_year % 10;
    my $i12        = $cycle_year % 12;

    %(
        'Han'     => @heaven[$i10].key ~ @earth[$i12].key,
        'pinyin'  => @heaven[$i10].value ~ @earth[$i12].value,
        'heaven'  => @heaven[$i10],
        'earth'   => @earth[$i12],
        'element' => @element[$i10 div 2],
        'animal'  => @animal[$i12],
        'aspect'  => @aspect[$i2],
        'cycle'   => $cycle_year + 1
    )
}

# TESTING
printf "%d: %s (%s, %s %s; %s - year %d in the cycle)\n",
    $_, .&Chinese-zodiac<Han pinyin element animal aspect cycle>
    for 1935, 1938, 1968, 1972, 1976, 1984, Date.today.year;
#---------------------------------------------------- 156 cholesky-decomposition
sub cholesky(@A) {
    my @L = @A »×» 0;
    for ^@A -> \i {
        for 0..i -> \j {
            @L[i;j] = (i == j ?? &sqrt !! 1/@L[j;j] × * )\      # select function
                      (@A[i;j] - [+] (@L[i;*] Z× @L[j;*])[^j])  # provide value
        }
    }
    @L
}

.fmt('%3d').say for cholesky [
    [25],
    [15, 18],
    [-5,  0, 11],
];

say '';

.fmt('%6.3f').say for cholesky [
    [18, 22,  54,  42],
    [22, 70,  86,  62],
    [54, 86, 174, 134],
    [42, 62, 134, 106],
];
#------------------------------------------------------------ 157 chowla-numbers
sub comma { $^i.flip.comb(3).join(',').flip }

sub schnitzel (\Radda, \radDA = 0) {
    Radda.is-prime ?? !Radda !! ?radDA ?? Radda
    !! sum flat (2 .. Radda.sqrt.floor).map: -> \RAdda {
        my \RADDA = Radda div RAdda;
        next if RADDA * RAdda !== Radda;
        RAdda !== RADDA ?? (RAdda, RADDA) !! RADDA
    }
}

my \chowder = cache (1..Inf).hyper(:8degree).grep( !*.&schnitzel: 'panini' );

my \mung-daal = lazy gather for chowder -> \panini {
    my \gazpacho = 2**panini - 1;
    take gazpacho * 2**(panini - 1) unless schnitzel gazpacho, panini;
}

printf "chowla(%2d) = %2d\n", $_, .&schnitzel for 1..37;

say '';

printf "Count of primes up to %10s: %s\n", comma(10**$_),
  comma chowder.first( * > 10**$_, :k) for 2..7;

say "\nPerfect numbers less than 35,000,000";

.&comma.say for mung-daal[^5];
#---------------------------------------------------- 158 christofides-algorithm
# 20250626 Raku programming solution

# --- Helper Classes ---

class Point { has ($.x, $.y, $.id);
   method new($x, $y, $id) { self.bless(:$x, :$y, :$id) }
}

class Edge { has ($.u, $.v, $.weight);
   method new($u, $v, $weight) { self.bless(:$u, :$v, :$weight) }
   method gist() { "({$.u}, {$.v}, {$.weight.fmt('%.2f')})" }
}

# --- Helper Functions for Printing ---

sub print-container(@container,$name) { say "$name: [{@container.join(', ')}]" }

sub print-edges(@edges,$name) { say "$name: [{@edges.map(*.gist).join(', ')}]" }

# --- Euclidean Distance ---

sub get-length(Point $p1, Point $p2) { sqrt( ($p1.x-$p2.x)² + ($p1.y-$p2.y)² ) }

# --- Build Complete Graph (Adjacency Matrix) ---

sub build-graph(@data) {
   my ($n, @graph) = @data.elems;

   for ^$n -> $i { # Symmetric graph
      for $i ^..^ $n -> $j {
         (@graph[$i;$j], @graph[$j;$i]) = get-length(@data[$i], @data[$j]) xx 2
      }
   }
   return @graph
}

# --- Union-Find Data Structure ---

class UnionFind {
   has (@.parent, @.rank);

   method new($n) { self.bless: parent => ^$n, rank => 0 xx $n }

   method find($i) {
      return $i if @.parent[$i] == $i;
      return @.parent[$i] = self.find(@.parent[$i]) # Path compression
   }

   method unite($i, $j) {
      my ($root-i, $root-j) = self.find($i), self.find($j);
      if $root-i != $root-j { # Union by rank
         if @.rank[$root-i] < @.rank[$root-j] {
            @.parent[$root-i] = $root-j;
         } elsif @.rank[$root-i] > @.rank[$root-j] {
            @.parent[$root-j] = $root-i;
         } else {
            @.parent[$root-j] = $root-i;
            @.rank[$root-i]++;
         }
      }
   }
}

# --- Minimum Spanning Tree (Kruskal's Algorithm) ---

sub minimum-spanning-tree(@graph) {
   my $n = @graph.elems;
   return [] if $n == 0;

   my @edges = ( gather for ^$n -> $i {
      for $i ^..^$n -> $j {
         take Edge.new($i, $j, @graph[$i][$j])
      }
   } ).sort(*.weight);

   my ($uf, $edges-count, @mst) = UnionFind.new($n), 0;

   for @edges -> $edge {
      if $uf.find($edge.u) != $uf.find($edge.v) {
         @mst.push($edge);
         $uf.unite($edge.u, $edge.v);
         last if ++$edges-count == $n - 1;  # MST has n-1 edges
      }
   }
   return @mst
}

# --- Find Vertices with Odd Degree in MST ---

sub find-odd-vertices(@mst, $n) {
   my @degree;
   for @mst -> $edge { (@degree[$edge.u], @degree[$edge.v])>>++ }

   return gather for ^$n -> $i { unless @degree[$i] %% 2  { take $i } }
}

# --- Minimum Weight Matching (Greedy Heuristic) ---

sub minimum-weight-matching(@mst is copy, @graph, @odd-vertices is copy) {
   @odd-vertices .= pick(*); # Shuffle for randomness

   # Keep track of vertices already matched in this phase
   my @matched = False xx @graph.elems;

   for ^@odd-vertices.elems -> $i {
      my $v = @odd-vertices[$i];
      next if @matched[$v].Bool;  # Skip if already matched

      my $min-length = Inf;
      my $closest-u = -1;

      # Find the closest unmatched odd vertex
      for $i ^..^@odd-vertices.elems -> $j {
         my $u = @odd-vertices[$j];
         unless @matched[$u].Bool {  # Check if 'u' is available
            if @graph[$v][$u] < $min-length {
               ($min-length, $closest-u) = @graph[$v][$u], $u;
            }
         }
      }

      if $closest-u != -1 {
         # Add the matching edge to the MST list (now a multigraph)
         @mst.push(Edge.new($v, $closest-u, $min-length));
         @matched[$v, $closest-u] = True xx 2;  # Mark both as matched
      }
   }
   return @mst;
}

# --- Find Eulerian Tour (Hierholzer's Algorithm) ---

sub find-eulerian-tour(@matched-mst, $n) {
   return [] if @matched-mst.elems == 0;

   # Build adjacency list representation of the multigraph (MST + matching)
   # Each element will be a hash with neighbor and edge-ptr keys
   my (@adj, %edge-used) = [] xx $n - 1;

   for @matched-mst -> $edge {
      @adj[$edge.u].push({ neighbor => $edge.v, edge-ptr => $edge });
      @adj[$edge.v].push({ neighbor => $edge.u, edge-ptr => $edge });
      %edge-used{$edge} = False;
   }

   my (@tour, @current-path);

   # Start at any vertex with edges (e.g., the first vertex of the first edge)
   #my $start-node = @matched-mst[0].u;
   @current-path.push(my $start-node = @matched-mst[0].u);

   while @current-path.elems > 0 {
      my ($current-node, $found-edge) = @current-path[*-1], False;

      # Find an unused edge from the current node
      for 0..^@adj[$current-node].elems -> $idx {
         my $edge-info = @adj[$current-node][$idx];
         my ($neighbor, $edge-ptr) = $edge-info<neighbor>, $edge-info<edge-ptr>;
         unless %edge-used{$edge-ptr}.Bool {
            %edge-used{$edge-ptr} = True;  # Mark edge as used
            # Push neighbor onto stack and move to it
            @current-path.push($neighbor);
            $found-edge = True;
            last;  # Move to the neighbor
          }
      }
      # If no unused edge was found from currentNode, backtrack
      unless $found-edge.Bool { @tour.push: @current-path.pop }
   }
   return @tour.reverse # Reverse the tour
}

# --- Main TSP Function (Christofides Approximation) ---

sub tsp(@data) {
   my $n = @data.elems;
   return (0.0, [])            if $n == 0;
   return (0.0, [@data[0].id]) if $n == 1;

   my @G = build-graph(@data); # Build a graph

   # Build a minimum spanning tree
   my @MSTree = minimum-spanning-tree(@G);
   print-edges(@MSTree, "MSTree");

   # Find odd degree vertices
   my @odd-vertices = find-odd-vertices(@MSTree, $n);
   print-container(@odd-vertices, "Odd vertexes in MSTree");

   # Add minimum weight matching edges (using greedy heuristic)
   my @MSTree-with-matching = minimum-weight-matching(@MSTree, @G, @odd-vertices);
   print-edges(@MSTree-with-matching, "Minimum weight matching (MST + Matching Edges)");

   # Find an Eulerian tour in the combined graph
   my @eulerian-tour = find-eulerian-tour(@MSTree-with-matching, $n);
   print-container(@eulerian-tour, "Eulerian tour");

   # --- Create Hamiltonian Circuit by Skipping Visited Nodes ---
   if @eulerian-tour.elems == 0 {
      say "Error: Eulerian tour could not be found.";
      return (-1.0, []);
   }

   my ($length, @visited, @path) = 0.0, False xx $n;
   @path.push(my $current = @eulerian-tour[0]);
   @visited[$current] = True;

   for 1..^@eulerian-tour.elems -> $i {
      unless @visited[ my $v = @eulerian-tour[$i] ].Bool {
         @path.push($v);
         @visited[$v] = True;
         $length += @G[$current][$v];  # Add distance from previous node in path
         $current = $v;                # Update current node in path
      }
   }

   # Add the edge back to the start
   $length += @G[$current][@path[0]];
   @path.push(@path[0]);  # Complete the cycle

   print-container(@path, "Result path");
   say "Result length of the path: {$length.fmt('%.2f')}";

   return ($length, @path);
}

my @data = [ # Input data matching the Go example
   <1380 939>, <2848 96>, <3510 1671>, <457 334>, <3888 666>, <984 965>,
   <2721 1482>, <1286 525>, <2716 1432>, <738 1325>, <1251 1832>, <2728 1698>,
   <3815 169>, <3683 1533>, <1247 1945>, <123 862>, <1234 1946>, <252 1240>,
   <611 673>, <2576 1676>, <928 1700>, <53 857>, <1807 1711>, <274 1420>,
   <2574 946>, <178 24>, <2678 1825>, <1795 962>, <3384 1498>, <3520 1079>,
   <1256 61>, <1424 1728>, <3913 192>, <3085 1528>, <2573 1969>, <463 1670>,
   <3875 598>, <298 1513>, <3479 821>, <2542 236>, <3955 1743>, <1323 280>,
   <3447 1830>, <2936 337>, <1621 1830>, <3373 1646>, <1393 1368>, <3874 1318>,
   <938 955>, <3022 474>, <2482 1183>, <3854 923>, <376 825>, <2519 135>,
   <2945 1622>, <953 268>, <2628 1479>, <2097 981>, <890 1846>, <2139 1806>,
   <2421 1007>, <2290 1810>, <1115 1052>, <2588 302>, <327 265>, <241 341>,
   <1917 687>, <2991 792>, <2573 599>, <19 674>, <3911 1673>, <872 1559>,
   <2863 558>, <929 1766>, <839 620>, <3893 102>, <2178 1619>, <3822 899>,
   <378 1048>, <1178 100>, <2599 901>, <3416 143>, <2961 1605>, <611 1384>,
   <3113 885>, <2597 1830>, <2586 1286>, <161 906>, <1429 134>, <742 1025>,
   <1625 1651>, <1187 706>, <1787 1009>, <22 987>, <3640 43>, <3756 882>,
   <776 392>, <1724 1642>, <198 1810>, <3950 1558>,
];

srand 123456; # deterministic output
tsp( @data.kv.map: -> $i, @point { Point.new: @point[0], @point[1], $i } )
#------------------------------------------------------- 159 chronological-order
my $test-file1 = q:to/TEST1/;
Pi                250  BCE
Magic Squares     2200 BCE
Kwarizmi          830  CE
Dice              3000 BCE
Liber Abaci       1202 CE
Euclid's Elements 300  BCE
Euler's Number    1727 CE
The Abacus        1200 CE
TEST1

my $test-file2 = q:to/TEST2/;
Pi             250  BCE
Magic Squares  2200 BCE
Kwarizmi       830  CE
Dice           3000 BCE
Liber Abaci    1202 CE

Euler's Number 1727 CE
The Abacus     1200 CE

TEST2

for $test-file1, $test-file2 {
    .put for .lines.map( { next unless .chars; [.match(/ (.+) \s (\d+) \s (\s* 'B'?'CE') /).List] } )
    .sort: { .[2].contains('B') ?? -.[1] !! +.[1] };
    say '';
}
#--------------------------------------------------------- 160 church-numerals-1
constant $zero  = sub (Code $f) {
                  sub (     $x) { $x }}

constant $succ  = sub (Code $n) {
                  sub (Code $f) {
                  sub (     $x) { $f($n($f)($x)) }}}

constant $add   = sub (Code $n) {
                  sub (Code $m) {
                  sub (Code $f) {
                  sub (     $x) { $m($f)($n($f)($x)) }}}}

constant $mult  = sub (Code $n) {
                  sub (Code $m) {
                  sub (Code $f) {
                  sub (     $x) { $m($n($f))($x) }}}}

constant $power = sub (Code $b) {
                  sub (Code $e) { $e($b) }}

sub to_int (Code $f) {
    sub countup (Int $i) { $i + 1 }
    return $f(&countup).(0)
}

sub from_int (Int $x) {
    multi sub countdown (     0) { $zero }
    multi sub countdown (Int $i) { $succ( countdown($i - 1) ) }
    return countdown($x);
}

constant $three = $succ($succ($succ($zero)));
constant $four  = from_int(4);

say map &to_int,
    $add(   $three )( $four  ),
    $mult(  $three )( $four  ),
    $power( $four  )( $three ),
    $power( $three )( $four  ),
;
#--------------------------------------------------------- 161 church-numerals-2
my \zero  = -> \f {                 -> \x { x               }}
my \succ  = -> \n {         -> \f { -> \x { f.(n.(f)(x))    }}}
my \add   = -> \n { -> \m { -> \f { -> \x { m.(f)(n.(f)(x)) }}}}
my \mult  = -> \n { -> \m { -> \f { -> \x { m.(n.(f))(x)    }}}}
my \power = -> \b {                 -> \e { e.(b)           }}

my \to_int   = -> \f { f.( -> \i { i + 1 } ).(0) }
my \from_int = -> \i { i == 0 ?? zero !! succ.( &?BLOCK(i - 1) ) }

my \three = succ.(succ.(succ.(zero)));
my \four  = from_int.(4);

say map -> \f { to_int.(f) },
    add.(   three )( four  ),
    mult.(  three )( four  ),
    power.( four  )( three ),
    power.( three )( four  ),
;
#-------------------------------------------------------- 162 cipollas-algorithm
#  Legendre operator (𝑛│𝑝)
sub infix:<│> (Int \𝑛, Int \𝑝 where 𝑝.is-prime && (𝑝 != 2)) {
    given 𝑛.expmod( (𝑝-1) div 2, 𝑝 ) {
        when 0  {  0 }
        when 1  {  1 }
        default { -1 }
    }
}

# a coordinate in a Field of p elements
class Fp {
    has Int $.x;
    has Int $.y;
}

sub cipolla ( Int \𝑛, Int \𝑝 ) {
    note "Invalid parameters ({𝑛}, {𝑝})"
      and return Nil if (𝑛│𝑝) != 1;
    my $ω2;
    my $a = 0;
    loop {
        last if ($ω2 = ($a² - 𝑛) % 𝑝)│𝑝 < 0;
        $a++;
    }

    # define a local multiply operator for Field coordinates
    multi sub infix:<*> ( Fp $a, Fp $b ){
        Fp.new: :x(($a.x * $b.x + $a.y * $b.y * $ω2) % 𝑝),
                :y(($a.x * $b.y + $b.x * $a.y)       % 𝑝)
    }

    my $r = Fp.new: :x(1),  :y(0);
    my $s = Fp.new: :x($a), :y(1);

    for (𝑝+1) +> 1, * +> 1 ... 1 {
        $r *= $s if $_ % 2;
        $s *= $s;
    }
    return Nil if $r.y;
    $r.x;
}

my @tests = (
    (10, 13),
    (56, 101),
    (8218, 10007),
    (8219, 10007),
    (331575, 1000003),
    (665165880, 1000000007),
    (881398088036, 1000000000039),
    (34035243914635549601583369544560650254325084643201,
      100000000000000000000000000000000000000000000000151)
);

for @tests -> ($n, $p) {
   my $r = cipolla($n, $p);
   say $r ?? "Roots of $n are ($r, {$p-$r}) mod $p"
          !! "No solution for ($n, $p)"
}
#------------------------------ 163 circles-of-given-radius-through-two-points-1
multi sub circles (@A, @B where ([and] @A Z== @B), 0.0) { 'Degenerate point' }
multi sub circles (@A, @B where ([and] @A Z== @B), $)   { 'Infinitely many share a point' }
multi sub circles (@A, @B, $radius) {
    my @middle = (@A Z+ @B) X/ 2;
    my @diff = @A Z- @B;
    my $q = sqrt [+] @diff X** 2;
    return 'Too far apart' if $q > $radius * 2;

    my @orth = -@diff[0], @diff[1] X* sqrt($radius ** 2 - ($q / 2) ** 2) / $q;
    return (@middle Z+ @orth), (@middle Z- @orth);
}

my @input =
    ([0.1234, 0.9876],  [0.8765, 0.2345],   2.0),
    ([0.0000, 2.0000],  [0.0000, 0.0000],   1.0),
    ([0.1234, 0.9876],  [0.1234, 0.9876],   2.0),
    ([0.1234, 0.9876],  [0.8765, 0.2345],   0.5),
    ([0.1234, 0.9876],  [0.1234, 0.9876],   0.0),
    ;

for @input {
    say .list.raku, ': ', circles(|$_).join(' and ');
}
#------------------------------ 164 circles-of-given-radius-through-two-points-2
multi sub circles ($a, $b where $a == $b, 0.0) { 'Degenerate point' }
multi sub circles ($a, $b where $a == $b, $)   { 'Infinitely many share a point' }
multi sub circles ($a, $b, $r) {
    my $h = ($b - $a) / 2;
    my $l = sqrt($r**2 - $h.abs**2);
    return 'Too far apart' if $l.isNaN;
    return map { $a + $h + $l * $_ * $h / $h.abs }, i, -i;
}

my @input =
    (0.1234 + 0.9876i,  0.8765 + 0.2345i,   2.0),
    (0.0000 + 2.0000i,  0.0000 + 0.0000i,   1.0),
    (0.1234 + 0.9876i,  0.1234 + 0.9876i,   2.0),
    (0.1234 + 0.9876i,  0.8765 + 0.2345i,   0.5),
    (0.1234 + 0.9876i,  0.1234 + 0.9876i,   0.0),
    ;

for @input {
    say .join(', '), ': ', circles(|$_).join(' and ');
}
#----------------------------------------------------------------- 165 classes-1
class Camel { has Int $.humps = 1; }

my Camel $a .= new;
say $a.humps;  # Automatically generated accessor method.

my Camel $b .= new: humps => 2;
say $b.humps;
#----------------------------------------------------------------- 166 classes-2
class Butterfly {
    has Int $!age;   # With the ! twigil, no public accessor method is generated
    has Str $.name;
    has Str $.color;
    has Bool $.wings;

    submethod BUILD(:$!name = 'Camelia', :$!age = 2, :$!color = 'pink') {
        # BUILD is called by bless. Its primary use is to to control
        # object initialization.
        $!wings = $!age > 1;
    }

    method flap() {
        say ($.wings
          ?? 'Watch out for that hurricane!'
          !! 'No wings to flap.');
    }
}

my Butterfly $a .= new: age => 5;
say "Name: {$a.name}, Color: {$a.color}";
$a.flap;

my Butterfly $b .= new(name => 'Osgood', age => 4);
say "Name: {$b.name}, Color: {$b.color}";
$b.flap;
#---------------------------------------- 167 cocke-younger-kasami-cyk-algorithm
# 20260301 Raku programming solution

sub cyk-parse(@w, %r, $start --> Bool) {
   return False if ( my $n = @w.elems ) == 0;

   # Pre-index grammar: terminals and binary pairs
   my %term;   # Str terminal -> SetHash of LHS
   my %bin;    # Str "B␟C"    -> SetHash of LHS

   for %r.kv -> $lhs, @rules {
      for @rules -> @rhs {
         if @rhs.elems == 1 {
            (%term{@rhs[0]} //= SetHash.new).set($lhs)
         } elsif @rhs.elems == 2 {
            my $key = @rhs[0] ~ "\x1F" ~ @rhs[1];
            (%bin{$key} //= SetHash.new).set($lhs);
         } else {
            die "Not CNF: $lhs → {@rhs.raku}";
         }
      }
   }

   my @t = [ [ SetHash.new xx $n ] xx $n ]; # Chart table

   for ^$n -> $j { # Diagonal init: terminals
      if %term{@w[$j]}:exists { @t[$j][$j].set(%term{@w[$j]}.keys) }
   }

   for ^$n -> $j { # Fill spans of increasing length
      loop (my $i = $j - 1; $i >= 0; $i--) {
         for $i ..^ $j -> $k {
            # For each B in t[i,k] and C in t[k+1,j], add any A with A→BC.
            for @t[$i][$k].keys -> $B {
               for @t[$k+1][$j].keys -> $C {
                  my $key = $B ~ "\x1F" ~ $C;
                  next unless %bin{$key}:exists;
                  @t[$i][$j].set(%bin{$key}.keys)
               }
            }
         }
      }
   }
   return so @t[0][$n - 1]{$start};
}

my %r = (
   "NP"  => [ ["Det", "Nom"], ],
   "Nom" => [ ["AP", "Nom"], ["book"], ["orange"], ["man"] ],
   "AP"  => [ ["Adv", "A"], ["heavy"], ["orange"], ["tall"] ],
   "Det" => [ ["a"], ],
   "Adv" => [ ["very"], ["extremely"] ],
   "A"   => [ ["heavy"], ["orange"], ["tall"], ["muscular"] ],
);

my @tests = [
   "a very heavy orange book",
   "a very heavy orange",
   "a heavy orange",
   "a heavy",
   "orange",
   "very heavy orange"
];

for @tests -> $test { say cyk-parse($test.words, %r, "NP") }
#--------------------------------------------------------------- 168 code-golf-1
print <Code Golf>
#--------------------------------------------------------------- 169 code-golf-2
print chrs 37,9,2,3,70,33,9,10,0 X+^102 # 39 chars, 39 bytes
#--------------------------------------------------------------- 170 code-golf-3
print chrs -3,㊶,㉚,㉛,-㊳,1,㊶,㊳,㉜X+㉎ # 33 Chars, 49 bytes
#--------------------------------------------------------------- 171 code-golf-4
print <Dpef!Hpmg>.ords».pred.chrs # 33 Chars, 34 bytes. Somewhat cheaty as it _does_ contain a string literal, but not the same literal as the output
#------- 172 collect-and-sort-square-numbers-in-ascending-order-from-three-lists
my $s = cache sort ( my $l = ( cache flat

[3,4,34,25,9,12,36,56,36],
[2,8,81,169,34,55,76,49,7],
[75,121,75,144,35,16,46,35]

)).grep: * ∈ cache {$++²}…*>$l.max;

put 'Added - Sorted';
put ' ' ~ $s.sum ~ '  ' ~ $s.gist;
#------------------------------------------------ 173 color-difference-cie-e2000
# 20250609 Raku programming solution

sub hypot(\x, \y) { sqrt(x² + y²) }

# The classic CIE ΔE2000 implementation, which operates on two L*a*b* colors, and returns their difference.
sub ciede_2000(\L1, \A1, \B1, \L2, \A2, \B2) {
   # Kl, Kc, Kh are parametric factors to be adjusted according to
   # different viewing parameters such as textures, backgrounds...
   my (\Kl, \Kc, \Kh) = 1.0 xx 3;

   my $n = ((hypot(A1, B1) + hypot(A2, B2)) * 0.5)⁷;
   $n = 1.0 + 0.5 * (1.0 - sqrt($n / ($n + 6103515625.0)));

   # hypot calculates the Euclidean distance while avoiding overflow/underflow.
   my (\C1, \C2) = ( [A1 * $n, B1], [A2 * $n, B2] ).map: { hypot |$_ };

   # atan2 is preferred over atan because it accurately computes the angle of
   # a point (x, y) in all quadrants, handling the signs of both coordinates.
   my \H1 = $ = atan2(B1, A1 * $n);
   my \H2 = $ = atan2(B2, A2 * $n);

   if H1 < 0.0 { H1 += 2.0 * π }
   if H2 < 0.0 { H2 += 2.0 * π }

   $n = abs(H2 - H1);

   # Cross-implementation consistent rounding.
   $n = π if π - 1e-14 < $n < π + 1e-14;

   # When the hue angles lie in different quadrants, the straightforward
   # average can produce a mean that incorrectly suggests a hue angle in
   # the wrong quadrant, the next lines handle this issue.
   my \Hm = $ = (H1 + H2) * 0.5;
   my \Hd = $ = (H2 - H1) * 0.5;

   if π < $n {
      0.0 < Hd ?? ( Hd -= π ) !! Hd += π;
      Hm += π;
   }

   my \p = 36.0 * Hm - 55.0 * π;
   $n = ((C1 + C2) * 0.5)⁷;

   # The hue rotation correction term is designed to account for the
   # non-linear behavior of hue differences in the blue region.
   my \Rt = -2.0 * sqrt( $n/($n+6103515625.0)) * sin(π/3.0*exp(p²/(-25.0*π²)) );
   $n = ((L1 + L2) * 0.5 - 50.0)²;

   # Lightness.
   my \l = (L2 - L1) / (Kl * (1.0 + 0.015 * $n / sqrt(20.0 + $n)));

   # These coefficients adjust the impact of different harmonic
   # components on the hue difference calculation.
   my \t = 1.0 + 0.24*sin(2.0*Hm + π*0.5) + 0.32*sin(3.0*Hm + 8.0*π/15.0) -
           0.17*sin(Hm + π/3.0) - 0.20*sin(4.0 * Hm + 3.0*π/20.0);
   $n = C1 + C2;

   # Hue.
   my \h = 2.0 * sqrt(C1 * C2) * sin(Hd) / (Kh * (1.0 + 0.0075 * $n * t));

   # Chroma.
   my \c = (C2 - C1) / (Kc * (1.0 + 0.0225 * $n));

   # Returning the square root ensures that the result represents
   # the "true" geometric distance in the color space.
   return sqrt(l² + h² + c² + c * h * Rt)
}

say "   L1     a1     b1     L2     a2     b2        ΔE2000";
say "------------------------------------------------------------";

for [
   [73.0, 49.0, 39.4, 73.0, 49.0, 39.4],
   [30.0, -41.0, -119.1, 30.0, -41.0, -119.0],
   [79.0, -117.0, -100.4, 79.5, -117.0, -100.0],
   [15.0, -55.0, 6.7, 14.0, -55.0, 7.0],
   [83.0, 98.0, -59.5, 85.2, 98.0, -59.5],
   [59.0, -11.0, -95.0, 56.3, -11.0, -95.0],
   [74.0, -1.0, 68.6, 81.0, -1.0, 69.0],
   [46.4, 125.0, 6.0, 40.0, 125.0, 6.0],
   [18.0, -5.0, 68.0, 20.0, 5.0, 82.0],
   [35.5, -99.0, 109.0, 25.0, -99.0, 109.0],
   [59.0, 77.0, 41.5, 63.3, 77.0, 12.4],
   [40.0, -92.0, 7.7, 58.0, -92.0, -8.0],
   [49.0, -9.0, -74.5, 51.1, 31.0, 16.0],
   [88.0, -124.0, 56.0, 97.0, 62.0, -28.0],
   [98.0, 75.7, 11.0, 3.0, -62.0, 11.0],
] { printf "%6.1f " x 6 ~ "%14.10f\n", $_[^6], ciede_2000 |$_[^6] }
#---------------------------------------------------------- 174 colorful-numbers
sub is-colorful (Int $n) {
    return True if 0 <= $n <= 9;
    return False if $n.contains(0) || $n.contains(1) || $n < 0;
    my @digits = $n.comb;
    my %sums = @digits.Bag;
    return False if %sums.values.max > 1;
    for 2..@digits -> $group {
        @digits.rotor($group => 1 - $group).map: { %sums{ [×] $_ }++ }
        return False if %sums.values.max > 1;
    }
    True
}

put "Colorful numbers less than 100:\n" ~ (^100).hyper.grep( &is-colorful).batch(10)».fmt("%2d").join: "\n";

my ($start, $total) = 23456789, 10;

print "\nLargest magnitude colorful number: ";
.put and last if .Int.&is-colorful for $start.flip … $start;


put "\nCount of colorful numbers for each order of magnitude:\n" ~
    "1 digit colorful number count: $total - 100%";

for 2..8 {
   put "$_ digit colorful number count: ",
   my $c = +(flat $start.comb.combinations($_).map: {.permutations».join».Int}).hyper.grep( &is-colorful ),
   " - {($c / (exp($_,10) - exp($_-1,10) ) * 100).round(.001)}%";
   $total += $c;
}

say "\nTotal colorful numbers: $total";
#------------------------------------------------------------ 175 combinations-1
.say for combinations(5,3);
#------------------------------------------------------------ 176 combinations-2
sub combinations(Int $n, Int $k) {
    return ([],) unless $k;
    return if $k > $n || $n <= 0;
    my @c = ^$k;
    gather loop {
      take [@c];
      next if @c[$k-1]++ < $n-1;
      my $i = $k-2;
      $i-- while $i >= 0 && @c[$i] >= $n-($k-$i);
      last if $i < 0;
      @c[$i]++;
      while ++$i < $k { @c[$i] = @c[$i-1] + 1; }
    }
}
.say for combinations(5,3);
#--------------------------------------------- 177 combinations-and-permutations
multi P($n, $k) { [*] $n - $k + 1 .. $n }
multi C($n, $k) { P($n, $k) / [*] 1 .. $k }

sub lstirling(\n) {
    n < 10 ?? lstirling(n+1) - log(n+1) !!
    .5*log(2*pi*n)+ n*log(n/e+1/(12*e*n))
}

role Logarithm {
    method gist {
	my $e = (self/10.log).Int;
	sprintf "%.8fE%+d", exp(self - $e*10.log), $e;
    }
}
multi P($n, $k, :$float!) {
    (lstirling($n) - lstirling($n -$k))
    but Logarithm
}
multi C($n, $k, :$float!) {
    (lstirling($n) - lstirling($n -$k) - lstirling($k))
    but Logarithm
}

say "Exact results:";
for 1..12 -> $n {
    my $p = $n div 3;
    say "P($n, $p) = ", P($n, $p);
}

for 10, 20 ... 60 -> $n {
    my $p = $n div 3;
    say "C($n, $p) = ", C($n, $p);
}

say '';
say "Floating point approximations:";
for 5, 50, 500, 1000, 5000, 15000 -> $n {
    my $p = $n div 3;
    say "P($n, $p) = ", P($n, $p, :float);
}

for 100, 200 ... 1000 -> $n {
    my $p = $n div 3;
    say "C($n, $p) = ", C($n, $p, :float);
}
#------------------------------------------- 178 combinations-with-repetitions-1
my @S = <iced jam plain>;
my $k = 2;

.put for [X](@S xx $k).unique(as => *.sort.cache, with => &[eqv])
#------------------------------------------- 179 combinations-with-repetitions-2
proto combs_with_rep (UInt, @) {*}

multi combs_with_rep (0,  @)  { () }
multi combs_with_rep (1,  @a)  { map { $_, }, @a }
multi combs_with_rep ($,  []) { () }
multi combs_with_rep ($n, [$head, *@tail]) {
    |combs_with_rep($n - 1, ($head, |@tail)).map({ $head, |@_ }),
    |combs_with_rep($n, @tail);
}

.say for combs_with_rep( 2, [< iced jam plain >] );

# Extra credit:
sub postfix:<!> { [*] 1..$^n }
sub combs_with_rep_count ($k, $n) { ($n + $k - 1)! / $k! / ($n - 1)! }

say combs_with_rep_count( 3, 10 );
#-------------------------- 180 combinations-with-repetitions-square-digit-chain
use v6;

sub endsWithOne($n --> Bool) {
   my $digit;
   my $sum = 0;
   my $nn = $n;
   loop {
      while ($nn > 0) {
         $digit = $nn % 10;
         $sum += $digit²;
         $nn = $nn div 10;
      }
      ($sum == 1) and return True;
      ($sum == 89) and return False;
      $nn = $sum;
      $sum = 0;
   }
}

my @ks = (7, 8, 11, 14, 17);

for @ks -> $k {
   my @sums is default(0) = 1,0;
   my $s;
   for (1 .. $k) -> $n {
      for ($n*81 ... 1) -> $i {
         for (1 .. 9) -> $j {
            $s = $j²;
            if ($s > $i) { last };
            @sums[$i] += @sums[$i-$s];
         }
      }
   }
   my $count1 = 0;
   for (1 .. $k*81) -> $i { if (endsWithOne($i)) {$count1 += @sums[$i]} }
   my $limit = 10**$k - 1;
   say "For k = $k in the range 1 to $limit";
   say "$count1 numbers produce 1 and ",$limit-$count1," numbers produce 89";
}
#----------------------------------------------------------- 181 comma-quibbling
sub comma-quibbling(@A) {
    <{ }>.join: @A < 2 ?? @A !! "@A[0..*-2].join(', ') and @A[*-1]";
}

say comma-quibbling($_) for
    [], [<ABC>], [<ABC DEF>], [<ABC DEF G H>];
#------------------------------------------------------- 182 commatizing-numbers
for ('pi=3.14159265358979323846264338327950288419716939937510582097494459231', {:6at, :5by, :ins(' ')}),
    ('The author has two Z$100000000000000 Zimbabwe notes (100 trillion).', {:ins<.>}),
    '-in Aus$+1411.8millions',
    '===US$0017440 millions=== (in 2000 dollars)',
    '123.e8000 is pretty big.',
    'The land area of the earth is  57268900(29% of the surface)  square miles.',
    'Ain\'t no numbers in this here words, nohow, no way, Jose.',
    'James was never known as  0000000007',
    'Arthur Eddington wrote: I believe there are 15747724136275002577605653961181555468044717914527116709366231425076185631031296 protons in the universe.',
    '   $-140000±100  millions.',
    '6/9/1946 was a good year for some.'
    {
        say "Before: ", .[0];
        say " After: ", .[1] ?? .[0].&commatize( |.[1] ) !! .&commatize;
    }

sub commatize($s, :$at = 0, :$ins = ',', :$by = 3) {
    $s.subst: :continue($at), :1st, / <[1..9]> <[0..9]>* /,
        *.flip.comb(/<{ ".**1..$by" }>/).join($ins).flip;
}
#-------------------------------------------------------- 183 common-sorted-list
put sort keys [∪] [5,1,3,8,9,4,8,7], [3,5,9,8,4], [1,3,7,9];
put sort keys [∪] [5,1,3,8,9,4,8,7], [3,5,9,8,4], [1,3,7,9], [<not everything is an integer so why not avoid special cases # ~ 23 4.2>];
#--------------------------------------------- 184 compare-length-of-two-strings
say 'Strings (👨‍👩‍👧‍👦, 🤔🇺🇸, BOGUS!) sorted: "longest" first:';
say "$_: characters:{.chars},  Unicode code points:{.codes},  UTF-8 bytes:{.encode('UTF8').bytes},  UTF-16 bytes:{.encode('UTF16').bytes}" for <👨‍👩‍👧‍👦 BOGUS! 🤔🇺🇸>.sort: -*.chars;
#------------------------------------------------ 185 compile-time-calculation-1
constant $tenfact = [*] 2..10;
say $tenfact;
#------------------------------------------------ 186 compile-time-calculation-2
 say BEGIN [*] 2..10;
#---------------------------- 187 compiler-simple-file-inclusion-pre-processor-2
# Top level test script file for #include Rosettacode
# 'Compiler/Simple file inclusion pre processor' task

# some code

say .³ for ^10;

#include ./include1.file
#-------------------------------------- 188 compiler-virtual-machine-interpreter
my @CODE = q:to/END/.lines;
Datasize: 3 Strings: 2
"count is: "
"\n"
    0 push  1
    5 store [0]
   10 fetch [0]
   15 push  10
   20 lt
   21 jz     (68) 65    # jump value adjusted
   26 push  0
   31 prts
   32 fetch [0]
   37 prti
   38 push  1
   43 prts
   44 fetch [0]
   49 push  1
   54 add
   55 store [0]
   60 jmp    (-87) 10   # jump value adjusted
   65 halt
END

my (@stack, @strings, @data, $memory);
my $pc = 0;

(@CODE.shift) ~~ /'Datasize:' \s+ (\d+) \s+ 'Strings:' \s+ (\d+)/ or die "bad header";
my $w = $0; # 'wordsize' of op-codes and 'width' of data values
@strings.push: (my $s = @CODE.shift) eq '"\n"' ?? "\n" !! $s.subst(/'"'/, '', :g) for 1..$1;

sub value { substr($memory, ($pc += $w) - $w, $w).trim }

my %ops = (
  'no-op' => sub { },
  'add'   => sub { @stack[*-2]  +=   @stack.pop },
  'sub'   => sub { @stack[*-2]  -=   @stack.pop },
  'mul'   => sub { @stack[*-2]  *=   @stack.pop },
  'div'   => sub { @stack[*-2]  /=   @stack.pop },
  'mod'   => sub { @stack[*-2]  %=   @stack.pop },
  'neg'   => sub { @stack[*-1]   = - @stack[*-1] },
  'and'   => sub { @stack[*-2] &&=   @stack[*-1]; @stack.pop },
  'or'    => sub { @stack[*-2] ||=   @stack[*-1]; @stack.pop },
  'not'   => sub { @stack[*-1]   =   @stack[*-1]               ?? 0 !! 1 },
  'lt'    => sub { @stack[*-1]   =   @stack[*-2] <  @stack.pop ?? 1 !! 0 },
  'gt'    => sub { @stack[*-1]   =   @stack[*-2] >  @stack.pop ?? 1 !! 0 },
  'le'    => sub { @stack[*-1]   =   @stack[*-2] <= @stack.pop ?? 1 !! 0 },
  'ge'    => sub { @stack[*-1]   =   @stack[*-2] >= @stack.pop ?? 1 !! 0 },
  'ne'    => sub { @stack[*-1]   =   @stack[*-2] != @stack.pop ?? 1 !! 0 },
  'eq'    => sub { @stack[*-1]   =   @stack[*-2] == @stack.pop ?? 1 !! 0 },
  'store' => sub { @data[&value] =   @stack.pop },
  'fetch' => sub { @stack.push:      @data[&value] // 0 },
  'push'  => sub { @stack.push:      value() },
  'jmp'   => sub { $pc += value() - $w },
  'jz'    => sub { $pc += @stack.pop ?? $w !! value() - $w },
  'prts'  => sub { print @strings[@stack.pop] },
  'prti'  => sub { print @stack.pop },
  'prtc'  => sub { print chr @stack.pop },
  'halt'  => sub { exit }
);

my %op2n = %ops.keys.sort Z=> 0..*;
my %n2op = %op2n.invert;
%n2op{''} = 'no-op';

for @CODE -> $_ {
    next unless /\w/;
    /^ \s* \d+ \s+ (\w+)/ or die "bad line $_";
    $memory ~= %op2n{$0}.fmt("%{$w}d");
    /'(' ('-'?\d+) ')' | (\d+) ']'? $/;
    $memory ~= $0 ?? $0.fmt("%{$w}d") !! ' ' x $w;
}

loop {
    my $opcode = substr($memory, $pc, $w).trim;
    $pc += $w;
    %ops{%n2op{ $opcode }}();
}
#------------------------------------------------------ 189 compound-data-type-4
my $s1 = set <a b c d>; # order is not preserved
my $s2 = set <c d e f>;
say $s1 (&) $s2; # OUTPUT«set(c, e)»
say $s1 ∩ $s2; # we also do Unicode
#-------------------------------------- 190 concatenate-two-primes-is-also-prime
my @p = ^1e2 .grep: *.is-prime;

say display ( @p X~ @p ).grep( *.is-prime ).unique.sort( +* );

sub display ($list, :$cols = 10, :$fmt = '%6d', :$title = "{+$list} matching:\n") {
    cache $list;
    $title ~ $list.batch($cols)».fmt($fmt).join: "\n"
}
#-------------------------------------------------- 191 conditional-structures-2
given lc prompt("Done? ") {
    when 'yes' { return }
    when 'no'  { next }
    default    { say "Please answer either yes or no." }
}
#---------------------------------------------------- 192 conjugate-a-latin-verb
for <amāre dare> -> $infinitive {
    say "\nPresent active indicative conjugation of infinitive $infinitive.";
    my $verb = ($infinitive ~~ /^ (\w+) ['a'|'ā'] 're' $/)[0];
    say $verb ?? (conjugate $verb) !! "Sorry, don't know how to conjugate $infinitive"
}

sub conjugate ($verb) { ($verb X~ <ō ās at āmus ātis ant>).join: "\n" }
#------------------------------------------------------- 193 conjugate-transpose
for [ # Test Matrices
       [   1, 1+i, 2i],
       [ 1-i,   5, -3],
       [0-2i,  -3,  0]
    ],
    [
       [1, 1, 0],
       [0, 1, 1],
       [1, 0, 1]
    ],
    [
       [0.707 ,    0.707,  0],
       [0.707i, 0-0.707i,  0],
       [0     ,        0,  i]
    ]
    -> @m {
        say "\nMatrix:";
        @m.&say-it;
        my @t = @m».conj.&mat-trans;
        say "\nTranspose:";
        @t.&say-it;
        say "Is Hermitian?\t{is-Hermitian(@m, @t)}";
        say "Is Normal?\t{is-Normal(@m, @t)}";
        say "Is Unitary?\t{is-Unitary(@m, @t)}";
    }

sub is-Hermitian (@m, @t, --> Bool) {
    so @m».Complex eqv @t».Complex
 }

sub is-Normal (@m, @t, --> Bool) {
    so mat-mult(@m, @t)».Complex eqv mat-mult(@t, @m)».Complex
}

sub is-Unitary (@m, @t, --> Bool) {
    so mat-mult(@m, @t, 1e-3)».Complex eqv mat-ident(+@m)».Complex;
}

sub mat-trans (@m) { map { [ @m[*;$_] ] }, ^@m[0] }

sub mat-ident ($n) { [ map { [ flat 0 xx $_, 1, 0 xx $n - 1 - $_ ] }, ^$n ] }

sub mat-mult (@a, @b, \ε = 1e-15) {
    my @p;
    for ^@a X ^@b[0] -> ($r, $c) {
        @p[$r][$c] += @a[$r][$_] * @b[$_][$c] for ^@b;
        @p[$r][$c].=round(ε); # avoid floating point math errors
    }
    @p
}

sub say-it (@array) { $_».fmt("%9s").say for @array }
#----------------------------------------- 194 consistent-overhead-byte-stuffing
# 20231102 Raku programming solution

sub encode($data where $data.Bool, $delim = 0x00) {
   my ($ins,$code,$addLastCode,@enc) = 0,1,True,-1;
   for $data.list -> $byte {
      if $byte != 0 { @enc.push($byte) andthen $code++ }
      $addLastCode = True;
      if $byte == 0 || $code == 255 {
         $addLastCode = False if $code == 255;
         @enc[$ins] = $code;
         $code = 1;
         $ins = @enc.elems;
         @enc.push(-1);
      }
   }
   if $addLastCode {
      @enc[$ins] = $code;
      if $delim != 0 { @enc >>^=>> $delim }
      @enc.push($delim)
   } else {
      if $delim != 0 { @enc >>^=>> $delim }
      @enc[$ins] = $delim
   }
   return @enc;
}

sub decode($data where $data.Bool, $delim = 0x00) {
   my $length = ( my @enc2 = $data.list[0..*-2] ).elems;
   if $delim != 0 { @enc2 >>^=>> $delim }
   my ($block,$code,@dec) = 0,255;
   for @enc2.kv -> $i,$byte {
      if $block != 0 {
         @dec.push($byte)
      } else {
         die "marker pointing beyond the end of the packet." if $i + $byte > $length;
         @dec.push(0) if $code != 255;
         $block = $code = $byte;
         last if $code == 0
      }
      $block--;
   }
   return @dec;
}

for ( [0x00], [0x00,0x00], [0x00,0x11,0x00], [0x11,0x22,0x00,0x33],
      [0x11,0x22,0x33,0x44], [0x11,0x00,0x00,0x00], # 0x01..0xfe, 0x00..0xfe,
#      [0x02..0xff].append(0x00), [0x03..0xff].append(0x00, 0x01),
) { # https://crccalc.com/bytestuffing.php
#   say encode( $_ )>>.&{.fmt("0x%x")};
   say decode(encode( $_ ))>>.&{.fmt("0x%x")}
}
#-------------------------------------------------- 195 constrained-genericity-1
subset Eatable of Any where { .^can('eat') };

class Cake { method eat() {...} }

role FoodBox[Eatable] {
    has %.foodbox;
}

class Yummy does FoodBox[Cake] { }      # composes correctly
# class Yucky does FoodBox[Int] { }     # fails to compose

my Yummy $foodbox .= new;
say $foodbox;
#------------------------------------------------------ 196 continued-fraction-1
sub continued-fraction(:@a, :@b, Int :$n = 100)
{
    my $x = @a[$n - 1];
    $x = @a[$_ - 1] + @b[$_] / $x for reverse 1 ..^ $n;
    $x;
}

printf "√2 ≈%.9f\n", continued-fraction(:a(1, |(2 xx *)), :b(Nil, |(1 xx *)));
printf "e  ≈%.9f\n", continued-fraction(:a(2, |(1 .. *)), :b(Nil, 1, |(1 .. *)));
printf "π  ≈%.9f\n", continued-fraction(:a(3, |(6 xx *)), :b(Nil, |((1, 3, 5 ... *) X** 2)));
#------------------------------------------------------ 197 continued-fraction-2
sub continued-fraction(@a, @b) {
    map { .(Inf) }, [\o] map { @a[$_] + @b[$_] / * }, ^Inf
}

printf "√2 ≈ %.9f\n", continued-fraction((1, |(2 xx *)), (1 xx *))[10];
printf "e  ≈ %.9f\n", continued-fraction((2, |(1 .. *)), (1, |(1 .. *)))[10];
printf "π  ≈ %.9f\n", continued-fraction((3, |(6 xx *)), ((1, 3, 5 ... *) X** 2))[100];
#------------ 198 continued-fraction-arithmetic-construct-from-rational-number-1
sub r2cf(Rat $x is copy) {
    gather loop {
	$x -= take $x.floor;
	last unless $x > 0;
	$x = 1 / $x;
    }
}

say r2cf(.Rat) for <1/2 3 23/8 13/11 22/7 1.41 1.4142136>;
#----------- 199 continued-fraction-arithmetic-g-matrix-ng-continued-fraction-n-
class NG {
    has ( $!a1, $!a, $!b1, $!b );
    submethod BUILD ( :$!a1, :$!a, :$!b1, :$!b ) { }

    # Public methods
    method new( $a1, $a, $b1, $b ) { self.bless( :$a1, :$a, :$b1, :$b ) }
    method apply(@cf, :$limit = Inf) {
        (gather {
            map { take self!extract unless self!needterm; self!inject($_) }, @cf;
            take self!drain until self!done;
        })[ ^ $limit ]
    }

    # Private methods
    method !inject ($n) {
        sub xform($n, $x, $y) { $x, $n * $x + $y }
        ( $!a, $!a1 ) = xform( $n, $!a1, $!a );
        ( $!b, $!b1 ) = xform( $n, $!b1, $!b );
    }
    method !extract {
        sub xform($n, $x, $y) { $y, $x - $y * $n }
        my $n = $!a div $!b;
        ($!a,  $!b ) = xform( $n, $!a,  $!b  );
        ($!a1, $!b1) = xform( $n, $!a1, $!b1 );
        $n
    }
    method !drain { $!a = $!a1, $!b = $!b1 if self!needterm; self!extract }
    method !needterm { so [||] !$!b, !$!b1, $!a/$!b != $!a1/$!b1 }
    method !done { not [||] $!b, $!b1 }
}

sub r2cf(Rat $x is copy) { # Rational to continued fraction
    gather loop {
	$x -= take $x.floor;
	last if !$x;
	$x = 1 / $x;
    }
}

sub cf2r(@a) { # continued fraction to Rational
    my $x = @a[* - 1]; # Use FatRats for arbitrary precision
    $x = ( @a[$_- 1] + 1 / $x ).FatRat for reverse 1 ..^ @a;
    $x
}

sub ppcf(@cf) { # format continued fraction for pretty printing
    "[{ @cf.join(',').subst(',',';') }]"
}

sub pprat($a) { # format Rational for pretty printing
   # Use FatRats for arbitrary precision
   $a.FatRat.denominator == 1 ?? $a !! $a.FatRat.nude.join('/')
}

sub test_NG ($rat, @ng, $op) {
    my @cf = $rat.Rat(1e-18).&r2cf;
    my @op = NG.new( |@ng ).apply( @cf );
    say $rat.raku, ' as a cf: ', @cf.&ppcf, " $op = ",
        @op.&ppcf, "\tor ", @op.&cf2r.&pprat, "\n";
}

# Testing
test_NG(|$_) for (
    [ 13/11, [<2 1 0 2>], '+ 1/2 '    ],
    [ 22/7,  [<2 1 0 2>], '+ 1/2    ' ],
    [ 22/7,  [<1 0 0 4>], '/ 4      ' ],
    [ 22/7,  [<7 0 0 22>], '* 7/22   ' ],
    [ 2**.5, [<1 1 0 2>], "\n(1+√2)/2 (approximately)" ]
);

say '100 terms of (1+√2)/2 as a continued fraction and as a rational value:';

my @continued-fraction = NG.new( 1,1,0,2 ).apply( (lazy flat 1, 2 xx * ), limit => 100 );
say @continued-fraction.&ppcf.comb(/ . ** 1..80/).join("\n");
say @continued-fraction.&cf2r.&pprat;
#- 200 continued-fraction-arithmetic-g-matrix-ng-continued-fraction-n1-continued-fraction-n2-
class NG2 {
    has ( $!a12, $!a1, $!a2, $!a, $!b12, $!b1, $!b2, $!b );

    # Public methods
    method operator($!a12, $!a1, $!a2, $!a, $!b12, $!b1, $!b2, $!b ) { self }

    method apply(@cf1, @cf2, :$limit = 30) {
        my @cfs = [@cf1], [@cf2];
        gather {
            while @cfs[0] or @cfs[1] {
                my $term;
                (take $term if $term = self!extract) unless self!needterm;
                my $from = self!from;
                $from = @cfs[$from] ?? $from !! $from +^ 1;
                self!inject($from, @cfs[$from].shift);
            }
            take self!drain while $!b;
        }[ ^$limit ].grep: *.defined;
    }

    # Private methods
    method !inject ($n, $t) {
        multi sub xform(0, $t, $x12, $x1, $x2, $x) { $x2 + $x12 * $t, $x + $x1 * $t, $x12, $x1 }
        multi sub xform(1, $t, $x12, $x1, $x2, $x) { $x1 + $x12 * $t, $x12, $x + $x2 * $t, $x2 }
        ( $!a12, $!a1, $!a2, $!a ) = xform($n, $t, $!a12, $!a1, $!a2, $!a );
        ( $!b12, $!b1, $!b2, $!b ) = xform($n, $t, $!b12, $!b1, $!b2, $!b );
    }
    method !extract {
        my $t = $!a div $!b;
        ( $!a12, $!a1, $!a2, $!a, $!b12, $!b1, $!b2, $!b ) =
          $!b12, $!b1, $!b2, $!b,
                                  $!a12 - $!b12 * $t,
                                         $!a1 - $!b1 * $t,
                                               $!a2 - $!b2 * $t,
                                                     $!a - $!b * $t;
        $t;
    }
    method !from {
        return $!b == $!b2 == 0 ?? 0 !!
           $!b == 0 || $!b2 == 0 ?? 1 !!
           abs($!a1*$!b*$!b2 - $!a*$!b1*$!b2) > abs($!a2*$!b*$!b1 - $!a*$!b1*$!b2) ?? 0 !! 1;
    }
    method !needterm {
        so !([&&] $!b12, $!b1, $!b2, $!b) or $!a/$!b != $!a1/$!b1 != $!a2/$!b2 != $!a12/$!b1;
    }
    method !noterms($which) {
        $which ?? (($!a1, $!a, $!b1, $!b ) = $!a12, $!a2, $!b12, $!b2)
               !! (($!a2, $!a, $!b2, $!b ) = $!a12, $!a1, $!b12, $!b1);
    }
    method !drain {
    self!noterms(self!from) if self!needterm;
    self!extract;
    }
}

sub r2cf(Rat $x is copy) { # Rational to continued fraction
    gather loop {
    $x -= take $x.floor;
    last unless $x;
    $x = 1 / $x;
    }
}

sub cf2r(@a) { # continued fraction to Rational
    my $x = @a[* - 1].FatRat; # Use FatRats for arbitrary precision
    $x = @a[$_- 1] + 1 / $x for reverse 1 ..^ @a;
    $x
}

# format continued fraction for pretty printing
sub ppcf(@cf) { "[{ @cf.join(',').subst(',',';') }]" }

# format Rational for pretty printing. Use FatRats for arbitrary precision
sub pprat($a) { $a.FatRat.denominator == 1 ?? $a !! $a.FatRat.nude.join('/') }

my %ops = ( # convenience hash of NG matrix operators
    '+' => (0,1,1,0,0,0,0,1),
    '-' => (0,1,-1,0,0,0,0,1),
    '*' => (1,0,0,0,0,0,0,1),
    '/' => (0,1,0,0,0,0,1,0)
);

sub test_NG2 ($rat1, $op, $rat2) {
    my @cf1 = $rat1.&r2cf;
    my @cf2 = $rat2.&r2cf;
    my @result = NG2.new.operator(|%ops{$op}).apply( @cf1, @cf2 );
    say "{$rat1.&pprat} $op {$rat2.&pprat} => {@cf1.&ppcf} $op ",
        "{@cf2.&ppcf} = {@result.&ppcf} => {@result.&cf2r.&pprat}\n";
}

# Testing
test_NG2(|$_) for
   [   22/7, '+',  1/2 ],
   [  23/11, '*', 22/7 ],
   [  13/11, '-', 22/7 ],
   [ 484/49, '/', 22/7 ];


# Sometimes you may want to limit the terms in the continued fraction to something other than default.
# Here a lazy infinite continued fraction for  √2, then multiply it by itself. We'll limit the result
# to 6 terms for brevity’s' sake. We'll then convert that continued fraction back to an arbitrary precision
# FatRat Rational number. (Raku stores FatRats internally as a ratio of two arbitrarily long integers.
# We need to exercise a little caution because they can eat up all of your memory if allowed to grow unchecked,
# hence the limit of 6 terms in continued fraction.) We'll then convert that number to a normal precision
# Rat, which is accurate to the nearest 1 / 2^64,

say "√2 expressed as a continued fraction, then squared: ";
my @root2 = lazy flat 1, 2 xx *;
my @result = NG2.new.operator(|%ops{'*'}).apply( @root2, @root2, limit => 6 );
say @root2.&ppcf, "² = \n";
say @result.&ppcf;
say "\nConverted back to an arbitrary (ludicrous) precision Rational: ";
say @result.&cf2r.nude.join(" /\n");
say "\nCoerced to a standard precision Rational: ", @result.&cf2r.Num.Rat;
#-------------------------------------------- 201 continued-fraction-convergents
# 20240210 Raku programming solution

sub convergents(Real $x is copy, Int $maxcount) {
   my @components = gather for ^$maxcount {
      my $fpart = $x - take $x.Int;
      $fpart == 0 ?? ( last ) !! ( $x = 1 / $fpart )
   }
   my ($numa, $denoma, $numb, $denomb) = 1, 0, @components[0], 1;
   return [ Rat.new($numb, $denomb) ].append: gather for @components[1..*] -> $comp {
      ( $numa, $denoma, $numb                , $denomb                  )
      = $numb, $denomb, $numa + $comp * $numb, $denoma + $comp * $denomb;
      take Rat.new($numb, $denomb);
   }
}

my @tests = [ "415/93", 415/93, "649/200", 649/200, "sqrt(2)", sqrt(2),
              "sqrt(5)", sqrt(5), "golden ratio", (sqrt(5) + 1) / 2     ];

say "The continued fraction convergents for the following (maximum 8 terms) are:";
for @tests -> $s, $x {
   say $s.fmt('%15s') ~ " = { convergents($x, 8).map: *.nude.join('/') } ";
}
#------------------------------------------------ 202 convert-csv-records-to-tsv
# 20250715 Raku programming solution

grammar CSV2TSV {
   token TOP            { <field>* % [ <ws> ',' <ws> ] <ws> <nonsense>? \n? }
   token field          { [ <ws> <quoted-field> <ws> ] || <unquoted-field> }
   token quoted-field   { '"' <quoted-content>? '"' }
   token quoted-content { [ '""' || <-["]> ]+ }
   token unquoted-field { <-[,\n"]>* }
   token nonsense       { <-[\n]>* }
   token ws             { ' '* }
}

class CSV2TSV-Actions {
   method TOP($/) {
      my @fields = $<field>>>.made;
      my $csv = $/.Str.trans( < \\ \0 \n \r \b > Z=> < \\\\ \\0 \\n \\r \\b > );
      my $tsv = @fields.Bool ?? @fields.join("\t") !! "";
      make [$csv, $tsv];
   }

   method field($/) {
      make $<quoted-field> ?? $<quoted-field>.made !! $<unquoted-field>.Str
   }

   method quoted-field($/) {
      my $content = $<quoted-content>
                    ?? $<quoted-content>.subst('""', '"', :g).trim
                    !! '';
      my $str = $content.subst("\t", '\t', :g);
      make $str.trans( < \\ \0 \n \r \b > Z=> < \\\\ \\0 \\n \\r \\b > );
   }

   method unquoted-field($/) {
      my $str = $/.Str.subst("\t", '\\\\t', :g);
      make $str.trans( < \\ \0 \n \r \b > Z=> < \\\\ \\0 \\n \\r \\b > );
   }
}

my @inputs = ( # as codepoints
   <97 44 34 98 34>,                         # a,"b"
   <34 97 34 44 34 98 34 34 99 34>,          # "a","b""c"
   < >,                                      # empty line
   <44 97>,                                  # ,a
   <97 44 34>,                               # a,"
   <32 97 32 44 32 34 98 34>,                #  a , "b"
   <34 49 50 34 44 51 52>,                   # "12",34
   <97 92 116 98 44>,                        # a\tb, — escaped t, comma
   <97 92 92 116 98>,                        # a\\tb — double backslash
   <97 92 92 110 92 114 98>,                 # a\\n\\rb — multiple escaped
   <97 0 98>,                                # a\0b — NUL
   <97 92 110 98>,                           # a\nb — escaped newline
   <97 92 92 98>,                            # a\\b — escaped backslash
);

for @inputs.values -> @ord-line {
   my $input-str = @ord-line.join(' ');

   my $parse     = CSV2TSV.parse(@ord-line.chrs, :actions(CSV2TSV-Actions));
   unless $parse { say "IN : $input-str\nParse failed\n" and next }

   my ($csv, $tsv) = $parse.made;
   say "IN : $input-str\nOUT: {$tsv.ords.Str}\n";
   #say "TSV: «$tsv»\n"; # 🙈
}
#----------------------------------------- 203 convert-day-count-to-ordinal-date
# 20251201 Raku programming solution

given my $dt = DateTime.new: "0000-01-01" {
   $dt.later( days => .[0]+146097*.[1] ).Date.say for < 0 109573 146096 > X ^6
}
#-------------------------------------- 204 convert-decimal-number-to-rational-1
say .nude.join('/') for 0.9054054, 0.518518, 0.75;
#-------------------------------------- 205 convert-decimal-number-to-rational-2
sub decimal_to_fraction ( Str $n, Int $rep_digits = 0 ) returns Str {
    my ( $int, $dec ) = ( $n ~~ /^ (\d+) \. (\d+) $/ )».Str or die;

    my ( $numer, $denom ) = ( $dec, 10 ** $dec.chars );
    if $rep_digits {
        my $to_move = $dec.chars - $rep_digits;
        $numer -= $dec.substr(0, $to_move);
        $denom -= 10 ** $to_move;
    }

    my $rat = Rat.new( $numer.Int, $denom.Int ).nude.join('/');
    return $int > 0 ?? "$int $rat" !! $rat;
}

my @a = ['0.9054', 3], ['0.518', 3], ['0.75', 0], | (^4).map({['12.34567', $_]});
for @a -> [ $n, $d ] {
    say "$n with $d repeating digits = ", decimal_to_fraction( $n, $d );
}
#-------------------------------------- 206 convert-seconds-to-compound-duration
sub compound-duration ($seconds) {
    ($seconds.polymod(60, 60, 24, 7) Z <sec min hr d wk>)
    .grep(*[0]).reverse.join(", ")
}

# Demonstration:

for 7259, 86400, 6000000 {
    say "{.fmt: '%7d'} sec  =  {compound-duration $_}";
}
#--------------------------------------------------------------- 207 convex-hull
class Point {
    has Real $.x is rw;
    has Real $.y is rw;
    method gist { [~] '(', self.x,', ', self.y, ')' };
}

sub ccw (Point $a, Point $b, Point $c) {
    ($b.x - $a.x)*($c.y - $a.y) - ($b.y - $a.y)*($c.x - $a.x);
}

sub tangent (Point $a, Point $b) {
    my $opp = $b.x - $a.x;
    my $adj = $b.y - $a.y;
    $adj != 0 ?? $opp / $adj !! Inf
}

sub graham-scan (**@coords) {
    # sort points by y, secondary sort on x
    my @sp = @coords.map( { Point.new( :x($_[0]), :y($_[1]) ) } )
                    .sort: {.y, .x};

    # need at least 3 points to make a hull
    return @sp if +@sp < 3;

    # first point on hull is minimum y point
    my @h  = @sp.shift;

    # re-sort the points by angle, secondary on x
    @sp    = @sp.map( { $++ => [tangent(@h[0], $_), $_.x] } )
                .sort( {-$_.value[0], $_.value[1] } )
                .map: { @sp[$_.key] };

    # first point of re-sorted list is guaranteed to be on hull
    @h.push:  @sp.shift;

    # check through the remaining list making sure that
    # there is always a positive angle
    for @sp -> $point {
        if ccw( |@h.tail(2), $point ) > 0 {
            @h.push: $point;
        } else {
            @h.pop;
            @h.push: $point and next if +@h < 2;
            redo;
        }
    }
    @h
}

my @hull = graham-scan(
    (16, 3), (12,17), ( 0, 6), (-4,-6), (16, 6), (16,-7), (16,-3),
    (17,-4), ( 5,19), (19,-8), ( 3,16), (12,13), ( 3,-4), (17, 5),
    (-3,15), (-3,-9), ( 0,11), (-9,-3), (-4,-2), (12,10)
  );

say "Convex Hull ({+@hull} points): ", @hull;

@hull = graham-scan(
    (16, 3), (12,17), ( 0, 6), (-4,-6), (16, 6), (16,-7), (16,-3),
    (17,-4), ( 5,19), (19,-8), ( 3,16), (12,13), ( 3,-4), (17, 5),
    (-3,15), (-3,-9), ( 0,11), (-9,-3), (-4,-2), (12,10), (20,-9), (1,-9)
  );

say "Convex Hull ({+@hull} points): ", @hull;
#------------------------------------------------------ 208 conways-game-of-life
class Automaton {
    subset World of Str where {
        .lines>>.chars.unique == 1 and m/^^<[.#\n]>+$$/
    }
    has Int ($.width, $.height);
    has @.a;

    multi method new (World $s) {
        self.new:
            :width(.pick.chars), :height(.elems),
            :a( .map: { [ .comb ] } )
                given $s.lines.cache;
    }

    method gist { join "\n", map { .join }, @!a }

    method C (Int $r, Int $c --> Bool) {
        @!a[$r % $!height][$c % $!width] eq '#';
    }
    method N (Int $r, Int $c --> Int) {
        +grep ?*, map { self.C: |@$_ },
            [ $r - 1, $c - 1], [ $r - 1, $c ], [ $r - 1, $c + 1],
            [ $r    , $c - 1],                 [ $r    , $c + 1],
            [ $r + 1, $c - 1], [ $r + 1, $c ], [ $r + 1, $c + 1];
    }

    method succ {
        self.new: :$!width, :$!height,
            :a(
                gather for ^$.height -> $r {
                    take [
                        gather for ^$.width -> $c {
                            take
                            (self.C($r, $c) == 1 && self.N($r, $c) == 2|3)
                                || (self.C($r, $c) == 0 && self.N($r, $c) == 3)
                            ?? '#' !! '.'
                        }
                    ]
                }
            )
    }
}

my Automaton $glider .= new: q:to/EOF/;
    ............
    ............
    ............
    .......###..
    .###...#....
    ........#...
    ............
    EOF


for ^10 {
    say $glider++;
    say '--';
}
#---------------------------------------------------------- 209 coprime-triplets
my @coprime-triplets = 1, 2, {
   state %seen = 1, True, 2, True;
   state $min = 3;
   my $g = $^a * $^b;
   my $n = ($min .. *).first: { !%seen{$_} && ($_ gcd $g == 1) }
   %seen{$n} = True;
   if %seen.elems %% 100 { $min = ($min .. *).first: { !%seen{$_} } }
   $n
} … *;

put "Coprime triplets before first > 50:\n",
@coprime-triplets[^(@coprime-triplets.first: * > 50, :k)].batch(10)».fmt("%4d").join: "\n";

put "\nOr maybe, minimum Coprime triplets that encompass 1 through 50:\n",
@coprime-triplets[0..(@coprime-triplets.first: * == 42, :k)].batch(10)».fmt("%4d").join: "\n";

put "\nAnd for the heck of it: 1001st through 1050th Coprime triplet:\n",
@coprime-triplets[1000..1049].batch(10)».fmt("%4d").join: "\n";
#------------------------------------------------------------------ 210 coprimes
say .raku, ( [gcd] |$_ ) == 1 ?? ' Coprime' !! '' for [21,15],[17,23],[36,12],[18,29],[60,15],[21,22,25,31,143]
#----------------------------------------------------------- 211 copy-a-string-1
my $original = 'Hello.';
my $copy = $original;
say $copy;            # prints "Hello."
$copy = 'Goodbye.';
say $copy;            # prints "Goodbye."
say $original;        # prints "Hello."
#----------------------------------------------------------- 212 copy-a-string-2
my $original = 'Hello.';
my $bound := $original;
say $bound;           # prints "Hello."
$bound = 'Goodbye.';
say $bound;           # prints "Goodbye."
say $original;        # prints "Goodbye."
#-------------------------------------------------------------------- 213 cordic
# 2023082 Raku programming solution

sub CORDIC ($A is copy) {

   my (\Ten, $K, $X, $Y) = ( 1, * * 1/10 ... * )[^6], 0, 1, 0;

   my \Tbl = < 7.853981633974480e-1 9.966865249116200e-2 9.999666686665240e-3
               9.999996666668670e-4 9.999999966666670e-5 9.999999999666670e-6 0.0>;

   while $A > 1e-5 {
      $K++ while $A < Tbl[$K];
      $A -= Tbl[$K];
      ($X,$Y) = $X - Ten[$K]*$Y, $Y + Ten[$K]*$X;
   }
   return $X, sqrt($X*$X + $Y*$Y)
}

say "Angle    CORDIC       Cosine       Error";
for <-9 0 1.5 6> {
   my \result = [/] CORDIC .abs;
   printf "% 2.1f  "~"% 2.8f  " x 3~"\n", $_, result, .cos, .cos - result
}
#-------------------- 214 count-how-many-vowels-and-consonants-occur-in-a-string
my @vowels     = <a e i o u>;
my @consonants = <b c d f g h j k l m n p q r s t v w x y z>;

sub letter-check ($string) {
    my $letters = $string.lc.comb.Set;
    "{sum $letters{@vowels}} vowels and {sum $letters{@consonants}} consonants occur in the string \"$string\"";
}

say letter-check "Forever Ring Programming Language";
#-------------------------------------------------------- 215 count-in-factors-2
sub factor($n is copy) {
    $n == 1 ?? 1 !!
    gather {
	$n /= take 2 while $n %% 2;
	$n /= take 3 while $n %% 3;
	loop (my $p = 5; $p*$p <= $n; $p+=2) {
	    $n /= take $p while $n %% $p;
	}
	take $n unless $n == 1;
    }
}

say "$_ == ", join " \x00d7 ", factor $_ for 1 .. 20;
#------------------------------------------ 216 count-occurrences-of-a-substring
sub count-substring($big, $little) { +$big.comb: / :r $little / }

say count-substring("the three truths", "th"); # 3
say count-substring("ababababab", "abab");     # 2

say count-substring(123123123, 12);            # 3
#----------------------------------------------------------- 217 count-the-coins
# Recursive (cached)
sub change-r($amount, @coins) {
    my @cache = [1 xx @coins], |([] xx $amount);

    multi ways($n where $n >= 0, @now [$coin,*@later]) {
        @cache[$n;+@later] //= ways($n - $coin, @now) + ways($n, @later);
    }
    multi ways($,@) { 0 }

    # more efficient to start with coins sorted in descending order
    ways($amount, @coins.sort(-*).list);
}

# Iterative
sub change-i(\n, @coins) {
    my @table = [1 xx @coins], [0 xx @coins] xx n;
    (1..n).map: -> \i {
        for ^@coins -> \j {
        my \c = @coins[j];
        @table[i;j] = [+]
            @table[i - c;j] // 0,
            @table[i;j - 1] // 0;
        }
    }
    @table[*-1][*-1];
}

say "Iterative:";
say change-i    1_00, [1,5,10,25];
say change-i 1000_00, [1,5,10,25,50,100];

say "\nRecursive:";
say change-r    1_00, [1,5,10,25];
say change-r 1000_00, [1,5,10,25,50,100];
#----------------------------------- 218 count-the-occurrence-of-each-digit-in-e
constant 𝑒 = [\+] flat 1, [\/] 1.FatRat..*;

sub e-count ($n) {
    my @digits = 𝑒[$n / 2.7].substr(0,$n+1).comb.classify(*).sort.skip(1).map: {.key => .value.elems};
   .say for @digits;
   say 'Total digits: ', @digits».value.sum;
   say '';
}

.&e-count for 4000, 6000;
#----------------------------------------------------------- 219 cousin-primes-1
say grep *.all.is-prime, map { $_, $_+4 }, 2..999;
#----------------------------------------------------------- 220 cousin-primes-2
constant @cousins = (3, 7, *+6 … *).map: -> \n { (n, n+4) if (n & n+4).is-prime };

my $count = @cousins.first: :k, *.[0] > 1000;

.say for @cousins.head($count).batch(9);
#-------------------------------------------------------------- 221 cramers-rule
sub det(@matrix) {
    my @a     = @matrix.map: { [|$_] };
    my $sign  = 1;
    my $pivot = 1;
    for ^@a -> \k {
      my @r = (k+1 ..^ @a);
      my $previous-pivot = $pivot;
      if 0 == ($pivot = @a[k;k]) {
        (my \s = @r.first: { @a[$_;k] != 0 }) // return 0;
        (@a[s], @a[k]) = (@a[k], @a[s]);
        my $pivot = @a[k;k];
        $sign = -$sign;
      }
      for @r X @r -> (\i,\j) {
        ((@a[i;j] ×= $pivot) -= @a[i;k]×@a[k;j]) /= $previous-pivot;
      }
    }
    $sign × $pivot
}

sub cramers_rule(@A, @terms) {
    gather for ^@A -> \i {
        my @Ai = @A.map: { [|$_] };
        for ^@terms -> \j {
            @Ai[j;i] = @terms[j];
        }
        take det(@Ai);
    } »/» det(@A);
}

my @matrix = (
    [2, -1,  5,  1],
    [3,  2,  2, -6],
    [1,  3,  3, -1],
    [5, -2, -3,  3],
);

my @free_terms = <-3 -32 -47 49>;
my ($w, $x, $y, $z) = cramers_rule(@matrix, @free_terms);
("w = $w", "x = $x", "y = $y", "z = $z").join("\n").say;
#------------------------------------------------------------------ 222 crc-32-2
sub crc(
    Blob $buf,
             # polynomial including leading term, default: ISO 3309/PNG/gzip
    :@poly = (1,0,0,0,0,0,1,0,0,1,1,0,0,0,0,0,1,0,0,0,1,1,1,0,1,1,0,1,1,0,1,1,1),
    :$n = @poly.end,      # degree of polynomial
    :@init = 1 xx $n,     # initial XOR bits
    :@fini = 1 xx $n,     # final XOR bits
    :@bitorder = 0..7,    # default: eat bytes LSB-first
    :@crcorder = 0..$n-1, # default: MSB of checksum is coefficient of x⁰
) {
    my @bit = flat ($buf.list X+& (1 X+< @bitorder))».so».Int, 0 xx $n;

    @bit[0   .. $n-1] «+^=» @init;
    @bit[$_  ..$_+$n] «+^=» @poly if @bit[$_] for 0..@bit.end-$n;
    @bit[*-$n..  *-1] «+^=» @fini;

    :2[@bit[@bit.end X- @crcorder]];
}

say crc('The quick brown fox jumps over the lazy dog'.encode('ascii')).base(16);
#------------------------------- 223 create-a-two-dimensional-array-at-runtime-1
my ($major,$minor) = prompt("Dimensions? ").comb(/\d+/);
my @array = [ '@' xx $minor ] xx $major;
@array[ *.rand ][ *.rand ] = ' ';
.say for @array;
#------------------------------- 224 create-a-two-dimensional-array-at-runtime-3
my ($major,$minor) = +«prompt("Dimensions? ").comb(/\d+/);
my Int @array[$major;$minor] = (7 xx $minor ) xx $major;
@array[$major div 2;$minor div 2] = 42;
say @array;
#----------------------------------- 225 create-an-object-native-demonstration-1
class FixedHash {
        has $.hash handles *;
        method new(*@args) { self.bless: hash => Hash.new: @args }
        method AT-KEY(FixedHash:D: $key is copy) is rw {
                $!hash.EXISTS-KEY($key) ?? $!hash.AT-KEY($key) !! Failure.new(q{can't store value for unknown key});
        }
        method DELETE-KEY($key) { $!hash.{$key} = Nil }
}

# Testing
my $fh = FixedHash.new: "a" => 1, "b" => 2;
say $fh<a b>;   # 1 2
$fh<b>:delete;
say $fh<a b>;   # 1 Nil
$fh<b> = 42;
say $fh<a b>;   # 1 42
say $fh<c>;     # Nil
$fh<c> = 43;    # error
#----------------------------------- 226 create-an-object-native-demonstration-2
class Magic {
        has %.hash;
        multi method FALLBACK($name, |c) is rw { # this will eat any extra parameters
                %.hash{$name}
        }

        multi method FALLBACK($name) is rw {
                %.hash{$name}
        }
}

my $magic = Magic.new;
$magic.foo = 10;
say $magic.foo;
$magic.defined = False; # error
#------------------------------------------------- 227 csv-to-html-translation-1
my $str = "Character,Speech
The multitude,The messiah! Show us the messiah!
Brians mother,<angry>Now you listen here! He's not the messiah; he's a very naughty boy! Now go away!</angry>
The multitude,Who are you?
Brians mother,I'm his mother; that's who!
The multitude,Behold his mother! Behold his mother!";

# comment the next line out, if you want to read from standard input instead of the hard-coded $str above
# my $str = $*IN.slurp;

my &escape = *.trans(« & < > » => « &amp; &lt; &gt; »); # a function with one argument that escapes the entities
my &tag    = {"<$^tag>"~$^what~"</$^tag>"};

printf
'<!DOCTYPE html>
<html>
<head><title>Some Text</title></head>
<body><table>
%s
</table></body></html>
', [~]                                # concatenation reduction ('a', 'b', 'c') → 'abc'
(escape($str).split(/\n/)             # escape the string and split at newline
  ==> map -> $line {tag 'tr',         # feed that into a map, that map function will tag as 'tr, and has an argument called $line
    ([~] $line.split(/','/)\          # split $line at ',',
                                      # that / at the end is just an unspace, you can omit it, but then you have to delete
                                      # all whitespace  and comments between split(…) and .map
      .map({tag 'td', $^cell}))})\    # map those cells as td
             .join("\n");   # append a newline for nicer output
#------------------------------------------------------------ 228 cuban-primes-2
sub comma { $^i.flip.comb(3).join(',').flip }

for 2..10 -> \k {
    next if k %% 3;
    my @cubans = lazy (1..Inf).map({ (($_+k)³ - .³)/k }).grep: *.is-prime;
    put "First 20 cuban primes where k = {k}:";
    put @cubans[^20]».&comma».fmt("%7s").rotor(10).join: "\n";
    put '';
}
#------------------------------------------------------------ 229 cuban-primes-3
sub comma { $^i.flip.comb(3).join(',').flip }

my \k = 2**128;
put "First 10 cuban primes where k = {k}:";
.&comma.put for (lazy (0..Inf).map({ (($_+k)³ - .³)/k }).grep: *.is-prime)[^10];
#------------------------------------------------------ 230 cubic-special-primes
my @sqp = 2, -> $previous {
    my $next;
    for (1..∞).map: *³ {
        $next = $previous + $_;
        last if $next.is-prime;
    }
    $next
} … *;

say "{+$_} matching numbers:\n", $_».fmt('%5d').batch(7).join: "\n" given
    @sqp[^(@sqp.first: * > 15000, :k)];
#------------------------------------------- 231 cumulative-standard-deviation-1
sub sd (@a) {
    my $mean = @a R/ [+] @a;
    sqrt @a R/ [+] map (* - $mean)², @a;
}

sub sdaccum {
    my @a;
    return { push @a, $^x; sd @a; };
}

my &f = sdaccum;
say f $_ for 2, 4, 4, 4, 5, 5, 7, 9;
#------------------------------------------- 232 cumulative-standard-deviation-2
sub stddev($x) {
    sqrt
        ( .[2] += $x²) / ++.[0]
      - ((.[1] += $x ) /   .[0])²
    given state @;
}

say .&stddev for <2 4 4 4 5 5 7 9>;
#------------------------------------------------------------------ 233 currency
my @check = q:to/END/.lines.map: { [.split(/\s+/)] };
    Hamburger   5.50    4000000000000000
    Milkshake   2.86    2
    END

my $tax-rate = 0.0765;

my $fmt = "%-10s %8s %18s %22s\n";

printf $fmt, <Item Price Quantity Extension>;

my $subtotal = [+] @check.map: -> [$item,$price,$quant] {
    my $extension = $price * $quant;
    printf $fmt, $item, $price, $quant, fix2($extension);
    $extension;
}

printf $fmt, '', '', '', '-----------------';
printf $fmt, '', '', 'Subtotal ', $subtotal;

my $tax = ($subtotal * $tax-rate).round(0.01);
printf $fmt, '', '', 'Tax ', $tax;

my $total = $subtotal + $tax;
printf $fmt, '', '', 'Total ', $total;

# make up for lack of a Rat fixed-point printf format
sub fix2($x) { ($x + 0.001).subst(/ <?after \.\d\d> .* $ /, '') }
#------------------------------------------------------------------ 234 currying
my &negative = &infix:<->.assuming(0);
say negative 1;
#------------------------------------------------------------ 235 curzon-numbers
sub curzon ($base) { lazy (1..∞).hyper.map: { $_ if (exp($_, $base) + 1) %% ($base × $_ + 1) } };

for <2 4 6 8 10> {
    my $curzon = .&curzon;
    say "\nFirst 50 Curzon numbers using a base of $_:\n" ~
      $curzon[^50].batch(10)».fmt("%4s").join("\n") ~
      "\nOne thousandth: " ~ $curzon[999]
}
#--------------------------------------------------------------------- 236 cusip
sub divmod ($v, $r) { $v div $r, $v mod $r }
my %chr = (flat 0..9, 'A'..'Z', <* @ #>) Z=> 0..*;

sub cuisp-check ($cuisp where *.chars == 9) {
    my ($code, $chk) = $cuisp.comb(8);
    my $sum = [+] $code.comb.kv.map: { [+] (($^k % 2 + 1) * %chr{$^v}).&divmod(10) };
    so (10 - $sum mod 10) mod 10 eq $chk;
}

# TESTING
say "$_: ", $_.&cuisp-check for <
037833100
17275R102
38259P508
594918104
68389X106
68389X105
>
#----------------------------------------------------------- 237 cut-a-rectangle
sub solve($hh, $ww, $recurse) {
    my ($h, $w, $t, @grid) = $hh, $ww, 0;
    state $cnt;
    $cnt = 0 if $recurse;

    ($t, $w, $h) = ($w, $h, $w) if $h +& 1;
    return 0  if $h == 1;
    return 1  if $w == 1;
    return $h if $w == 2;
    return $w if $h == 2;

    my ($cy, $cx) = ($h, $w) «div» 2;
    my $len = ($h + 1) × ($w + 1);
    @grid[$len--] = 0;
    my @next = -1, -$w-1, 1, $w+1;

    for $cx+1 ..^ $w -> $x {
        $t = $cy × ($w + 1) + $x;
        @grid[$_] = 1 for $t, $len-$t;
        walk($cy - 1, $x);
    }

    sub walk($y, $x) {
        constant @dir = <0 -1 0 1> Z <-1 0 1 0>;
        $cnt += 2 and return if not $y or $y == $h or not $x or $x == $w;
        my $t = $y × ($w+1) + $x;
        @grid[$_]++ for $t, $len-$t;
        walk($y + @dir[$_;0], $x + @dir[$_;1]) if not @grid[$t + @next[$_]] for 0..3;
        @grid[$_]-- for $t, $len-$t;
    }

    $cnt++;
    if    $h == $w                 { $cnt ×= 2            }
    elsif $recurse and not $w +& 1 { solve($w, $h, False) }
    $cnt
}

((1..9 X 1..9).grep:{ .[0] ≥ .[1] }).flat.map: -> $y, $x {
   say "$y × $x: " ~ solve $y, $x, True unless $x +& 1 and $y +& 1;
}
#----------------------------------------------------------- 238 cycle-detection
sub cyclical-function (\x) { (x * x + 1) % 255 };

my ( $l, $s ) = brent( &cyclical-function, 3 );

put join ', ', (3, -> \x { cyclical-function(x) } ... *)[^20], '...';
say "Cycle length $l.";
say "Cycle start index $s.";
say (3, -> \x { cyclical-function(x) } ... *)[$s .. $s + $l - 1];

sub brent (&f, $x0) {
    my $power = my $λ = 1;
    my $tortoise = $x0;
    my $hare = f($x0);
    while ($tortoise != $hare) {
        if $power == $λ {
            $tortoise = $hare;
            $power *= 2;
            $λ = 0;
        }
        $hare = f($hare);
        $λ += 1;
    }

    my $μ = 0;
    $tortoise = $hare = $x0;
    $hare = f($hare) for ^$λ;

    while ($tortoise != $hare) {
        $tortoise = f($tortoise);
        $hare = f($hare);
        $μ += 1;
    }
    return $λ, $μ;
}
#--------------------------------------------------- 239 cycles-of-a-permutation
# one-line
sub infix:<➜> ($start, $end) {$start.fc.comb(/\w/).antipairs.hash{ $end.fc.comb(/\w/) } »+» 1}

# cycle
sub infix:<➰> ($start, $end) {
    my @one-line = flat ($end ➜ $start);
    my @index = flat 1..+@one-line;
    my ($index, @cycles) = 0;
    for @index {
        my $this = $_ - 1;
        while @one-line[$this] {
            my $next = @one-line[$this];
            @cycles[$index].push: @index[$this];
            @one-line[$this] = Nil;
            $this = $next - 1;
        }
        ++$index;
    }
    @cycles.grep: *.elems > 1
}

# order of a cycle
sub order (@cycles) { [lcm] @cycles }

# signature of a cycle
sub signature (@cycles) {
    (@cycles.elems %% 2 and all @@cycles».elems %% 2) ?? 1 !! -1
}

# apply a one-line transform
sub apply-o ($string, @oneline) { $string.comb[@oneline].join }

# apply a cyclical transform
sub apply-c ($string, @cycle) {
    my @string = flat '', $string.comb;
    @cycle.map: { @string[|$_].=rotate(-1) }
    @string.join
}

# Alf & Bettys letter arrangements
my %arrangment =
    :Mon<HANDYCOILSERUPT>,
    :Tue<SPOILUNDERYACHT>,
    :Wed<DRAINSTYLEPOUCH>,
    :Thu<DITCHSYRUPALONE>,
    :Fri<SOAPYTHIRDUNCLE>,
    :Sat<SHINEPARTYCLOUD>,
    :Sun<RADIOLUNCHTYPES>;

# some convenience variables
my @days = <Sun Mon Tue Wed Thu Fri Sat Sun>;
my @o = @days.rotor(2 => -1).map: { (%arrangment{.[0]} ➜ %arrangment{.[1]}) »-» 1 }
my @c = @days.rotor(2 => -1).map: { (%arrangment{.[0]} ➰ %arrangment{.[1]}) }

my $today;

# The task
say qq:to/ALF&BETTY/;
On Thursdays Alf and Betty should rearrange
their letters using these cycles:  {gist %arrangment<Wed> ➰ %arrangment<Thu>}

So that {%arrangment<Wed>} becomes {%arrangment<Wed>.&apply-o: (%arrangment<Wed> ➜ %arrangment<Thu>) »-» 1}

or they could use the one-line notation:  {gist %arrangment<Wed> ➜ %arrangment<Thu>}


To revert to the Wednesday arrangement they
should use these cycles:  {gist %arrangment<Thu> ➰ %arrangment<Wed>}

or with the one-line notation:  {gist %arrangment<Thu> ➜ %arrangment<Wed>}

So that {%arrangment<Thu>} becomes {%arrangment<Thu>.&apply-o: (%arrangment<Thu> ➜ %arrangment<Wed>) »-» 1}


Starting with the Sunday arrangement and applying each of the daily
permutations consecutively, the arrangements will be:

      {$today = %arrangment<Sun>}

{join "\n", @days[1..*].map: { sprintf "%s:  %s", $_, $today = $today.&apply-o: @o[$++] } }


To go from Wednesday to Friday in a single step they should use these cycles:
{gist %arrangment<Wed> ➰ %arrangment<Fri>}

So that {%arrangment<Wed>} becomes {%arrangment<Fri>}


These are the signatures of the permutations:

  Mon Tue Wed Thu Fri Sat Sun
  {@c.map(&signature)».fmt("%2d").join: '  '}

These are the orders of the permutations:

  Mon Tue Wed Thu Fri Sat Sun
  {@c.map(&order)».fmt("%2d").join: '  '}

Applying the Friday cycle to a string 10 times:

   {$today = 'STOREDAILYPUNCH'}

{join "\n", (1..10).map: {sprintf "%2d %s", $_, $today = $today.&apply-c: @c[4]} }
ALF&BETTY

say 'and one last transform:';
say 'STOREDAILYPUNCH'.&apply-c: [[<1 6 12 2 3 4 13 15 9 11 5 14 8 10 7>],];
#------------------------------------------------------------ 240 damm-algorithm
sub damm ( *@digits ) {
    my @tbl = [0, 3, 1, 7, 5, 9, 8, 6, 4, 2],
              [7, 0, 9, 2, 1, 5, 4, 8, 6, 3],
              [4, 2, 0, 6, 8, 7, 1, 3, 5, 9],
              [1, 7, 5, 0, 9, 8, 3, 4, 2, 6],
              [6, 1, 2, 3, 0, 4, 5, 9, 7, 8],
              [3, 6, 7, 4, 2, 0, 9, 5, 8, 1],
              [5, 8, 6, 9, 7, 2, 0, 1, 3, 4],
              [8, 9, 4, 5, 3, 6, 2, 0, 1, 7],
              [9, 4, 3, 8, 6, 1, 7, 2, 0, 5],
              [2, 5, 8, 1, 4, 3, 6, 7, 9, 0];
    my $row = 0;
    for @digits -> $col { $row = @tbl[$row][$col] }
    not $row
}

# Testing
for 5724, 5727, 112946 {
    say "$_:\tChecksum digit { damm( $_.comb ) ?? '' !! 'in' }correct."
}
#-------------------------------------------------- 241 data-encryption-standard
# 20220222 Updated Raku programming solution

my \PC1 = <
   56 48 40 32 24 16  8         0 57 49 41 33 25 17
    9  1 58 50 42 34 26        18 10  2 59 51 43 35
   62 54 46 38 30 22 14         6 61 53 45 37 29 21
   13  5 60 52 44 36 28        20 12  4 27 19 11  3
>; # Permuted choice 1 (PC-1) - Parity Drop Table, https://w.wiki/4yKS

my \PC2 = <
   13 16 10 23  0  4  2 27     14  5 20  9 22 18 11  3
   25  7 15  6 26 19 12  1     40 51 30 36 46 54 29 39
   50 44 32 47 43 48 38 55     33 52 45 41 49 35 28 31
>; # Permuted choice 2 (PC-2) - Key Compression Table, https://w.wiki/4yKR

my \IP = <
   57 49 41 33 25 17  9  1     59 51 43 35 27 19 11  3
   61 53 45 37 29 21 13  5     63 55 47 39 31 23 15  7
   56 48 40 32 24 16  8  0     58 50 42 34 26 18 10  2
   60 52 44 36 28 20 12  4     62 54 46 38 30 22 14  6
>; # Initial permutation (IP), https://w.wiki/4yKN

my \IP2 = <
   39  7 47 15 55 23 63 31     38  6 46 14 54 22 62 30
   37  5 45 13 53 21 61 29     36  4 44 12 52 20 60 28
   35  3 43 11 51 19 59 27     34  2 42 10 50 18 58 26
   33  1 41  9 49 17 57 25     32  0 40  8 48 16 56 24
>; # Final permutation (IP⁻¹), https://w.wiki/4yKP

my \S = ( <
   14 4 13 1 2 15 11 8 3 10 6 12 5 9 0 7   0 15 7 4 14 2 13 1 10 6 12 11 9 5 3 8
   4 1 14 8 13 6 2 11 15 12 9 7 3 10 5 0   15 12 8 2 4 9 1 7 5 11 3 14 10 0 6 13
> , <
   15 1 8 14 6 11 3 4 9 7 2 13 12 0 5 10   3 13 4 7 15 2 8 14 12 0 1 10 6 9 11 5
   0 14 7 11 10 4 13 1 5 8 12 6 9 3 2 15   13 8 10 1 3 15 4 2 11 6 7 12 0 5 14 9
> , <
   10 0 9 14 6 3 15 5 1 13 12 7 11 4 2 8   13 7 0 9 3 4 6 10 2 8 5 14 12 11 15 1
   13 6 4 9 8 15 3 0 11 1 2 12 5 10 14 7   1 10 13 0 6 9 8 7 4 15 14 3 11 5 2 12
> , <
   7 13 14 3 0 6 9 10 1 2 8 5 11 12 4 15   13 8 11 5 6 15 0 3 4 7 2 12 1 10 14 9
   10 6 9 0 12 11 7 13 15 1 3 14 5 2 8 4   3 15 0 6 10 1 13 8 9 4 5 11 12 7 2 14
> , <
   2 12 4 1 7 10 11 6 8 5 3 15 13 0 14 9   14 11 2 12 4 7 13 1 5 0 15 10 3 9 8 6
   4 2 1 11 10 13 7 8 15 9 12 5 6 3 0 14   11 8 12 7 1 14 2 13 6 15 0 9 10 4 5 3
> , <
   12 1 10 15 9 2 6 8 0 13 3 4 14 7 5 11   10 15 4 2 7 12 9 5 6 1 13 14 0 11 3 8
   9 14 15 5 2 8 12 3 7 0 4 10 1 13 11 6   4 3 2 12 9 5 15 10 11 14 1 7 6 0 8 13
> , <
   4 11 2 14 15 0 8 13 3 12 9 7 5 10 6 1   13 0 11 7 4 9 1 10 14 3 5 12 2 15 8 6
   1 4 11 13 12 3 7 14 10 15 6 8 0 5 9 2   6 11 13 8 1 4 10 7 9 5 0 15 14 2 3 12
> , <
   13 2 8 4 6 15 11 1 10 9 3 14 5 0 12 7   1 15 13 8 10 3 7 4 12 5 6 11 0 14 9 2
   7 11 4 1 9 12 14 2 0 6 10 13 15 3 5 8   2 1 14 7 4 10 8 13 15 12 9 0 3 5 6 11
> ); # S-Boxes, each replaces a 6-bit input with a 4-bit output, w.wiki/4yG8

my \P = <
   15 6 19 20   28 11 27 16     0 14 22 25     4 17 30  9
    1 7 23 13   31 26  2  8    18 12 29  5    21 10  3 24
>; # Permutation (P), shuffles the bits of a 32-bit half-block, w.wiki/4yKT

# Expansion function (E), expand 32-bit half-block to 48 bits, w.wiki/4yGC
my \E = flat 31,0..4,3..8,7..12,11..16,15..20,19..24,23..28,27..31,0;

my \SHIFTS = flat 1, 1, 2 xx 6, 1, 2 xx 6, 1 ; # left shifts, w.wiki/4yKV

## Helper subs

# convert iso-8859-1 to hexadecimals(%02X)
sub b2h (\b) { b.ords.fmt('%02X','') }

# convert UTF8s to bytes
sub u2b (\u) { u.encode.list.chrs }

# convert hexadecimals(%02X) to UTF-8
sub h2u (\h) { Blob.new( h.comb(2)».&{ :16($_) } ).decode }

# convert quadbits to hex
sub q2h (\q) { [~] q.comb(4)».&{ :2($_).fmt('%X') } }

# convert every two quadbits to bytes
sub q2b (\q) { q.comb(8)».&{ :2($_) } }

# turn a 16 digit hexadecimal str to a 64 bits list
sub h2b (\h) { flat h.comb».&{ :16($_).base(2).fmt('%04s').comb } }

# convert hexadecimals to bytes
sub h2B (\h) { [~] h.comb(2)».&{ chr "0x$_" } }

# s is 16 digit hexadecimal str, M is a permuation matrix/vector
sub map64(\s,\M) { (h2b s)[M] }

## Core subs

sub get_subkeys(Str \key --> Seq) { # return a Seq with 16 bit vectors
   my (@C,@D) := { .rotor(.elems div 2)».Array }(map64 key, PC1); #w.wiki/4yKV
   my \CD = (^16)».&{ [ |@C.=rotate(SHIFTS[$_]), |@D.=rotate(SHIFTS[$_]) ] }
   # key compression rounds, https://w.wiki/4yKb
   return (^16).map: -> \row { (^48).map: -> \col { CD[row][ PC2[col] ] } }
}

sub ƒ (List \R, Seq \Kₙ --> List) {
   my @er = map { Kₙ[$_] +^ R[E[$_]] }, ^48;

   return ( flat (^8)».&{ # Sₙ(Bₙ) loop, process @er six bits at a time
      S[$_][ ([~] @er[$_*6   ,  $_*6+5]).parse-base(2)*16 +   # 2 bits
             ([~] @er[$_*6+1 .. $_*6+4]).parse-base(2)      ] # 4 bits
      .fmt('%04b').comb } # ((S[][] to binary).split)*8.flat
   )[P]
}

sub process_block(Str \message, Seq \K --> Str) { # return 8 quadbits
   my (@L,@R) := { .rotor(.elems div 2)».Array }(map64 (b2h message), IP);
   { my @Lₙ = @R; my @Rₙ = @L Z+^ ƒ @R, K[$_]; @L = @Lₙ; @R = @Rₙ } for ^16;

   return [~] (|@R, |@L)[IP2] # inverse of the initial permutation
}

sub des(Str \key, Str $msg is copy, Bool \DECODE --> Str) { # return hexdecimal

   my \length = $msg.encode('iso-8859-1').bytes;

   die "Message must be in multiples of 8 bytes" if ( DECODE and length % 8 );

   my \K = { DECODE ?? reverse $_ !! $_ }(get_subkeys key);

   # CMS style padding as per RFC 1423 & RFC 5652
   { $msg ~= (my \Pad = 8 - length % 8).chr x Pad } unless DECODE;

   my $quad = [~] ( 0, 8 … $msg.encode('iso-8859-1').bytes-8 ).map:
                 { process_block substr($msg,$_,8), K }

   DECODE ?? do { my @decrypt = q2b $quad; # quadbits to a byte code point list
                  @decrypt.pop xx @decrypt.tail; # remove padding
                  return b2h [~] @decrypt.chrs }
          !! do { return q2h $quad }
}

say "Encryption examples: ";
say des "133457799BBCDFF1", h2B("0123456789ABCDEF"), False;
say des "0E329232EA6D0D73", h2B("8787878787878787"), False;
say des "0E329232EA6D0D73", "Your lips are smoother than vaseline", False;
say des "0E329232EA6D0D73", "Your lips are smoother than vaseline\r\n", False;
say des "0E329232EA6D0D73", u2b("BMP: こんにちは ; Astral plane: 𝒳𝒴𝒵"), False;

say "\nDecryption examples: ";
say des "133457799BBCDFF1", h2B("85E813540F0AB405FDF2E174492922F8"), True;
say des "0E329232EA6D0D73", h2B("0000000000000000A913F4CB0BD30F97"), True;
say h2B des "0E329232EA6D0D73", h2B("C0999FDDE378D7ED727DA00BCA5A84EE47F269A4D6438190D9D52F78F535849980A2E7453703513E"), True;
say h2B des "0E329232EA6D0D73", h2B("C0999FDDE378D7ED727DA00BCA5A84EE47F269A4D6438190D9D52F78F53584997F922CCB5B068D99"), True;
say h2u des "0E329232EA6D0D73", h2B("C040FB6A6E72D7C36D60CA9B9A35EB38D3194468AD808103C28E33AEF0B268D0E0366C160B028DDACF340003DCA8969343EBBD289DB94774"), True;
#------------------------------------------------------------- 242 date-format-2
my $d = Date.today;

say $d.yyyy-mm-dd;
#------------------------------------------------------------- 243 date-format-3
my @months = <January February March April May June July
              August September October November December>;
my @days = <Monday Tuesday Wednesday Thursday Friday Saturday Sunday>;
my $us-long = sub ($self) { "{@days[$self.day-of-week - 1]}, {@months[$self.month - 1]} {$self.day}, {$self.year}" };
my $d = Date.today :formatter($us-long);

say $d.yyyy-mm-dd; # still works
say $d; # uses our formatter sub
#--------------------------------------------------------- 244 date-manipulation
my @month = <January February March April May June July August September October November December>;
my %month = flat (@month Z=> 1..12), (@month».substr(0,3) Z=> 1..12), 'Sept' => 9;

grammar US-DateTime {
    rule TOP { <month> <day>','? <year>','? <time> <tz> }

    token month {
	(\w+)'.'?  { make %month{$0} // die "Bad month name: $0" }
    }

    token day { (\d ** 1..2) { make +$0 } }

    token year { (\d ** 1..4) { make +$0 } }

    token time {
	(\d ** 1..2) ':' (\d ** 2) \h* ( :i <[ap]> \.? m | '' )
	{
	    my $h = $0 % 12;
	    my $m = $1;
	    $h += 12 if $2 and $2.substr(0,1).lc eq 'p';
	    make $h * 60 + $m;
	}
    }

    token tz {  # quick and dirty for this task
        [
        |        EDT  { make -4 }
        | [ EST| CDT] { make -5 }
        | [ CST| MDT] { make -6 }
        | [ MST| PDT] { make -7 }
        | [ PST|AKDT] { make -8 }
        | [AKST|HADT] { make -9 }
        |  HAST
        ]
    }
}

$/ = US-DateTime.parse('March 7 2009 7:30pm EST') or die "Can't parse date";

my $year     = $<year>.ast;
my $month    = $<month>.ast;
my $day      = $<day>.ast;
my $hour     = $<time>.ast div 60;
my $minute   = $<time>.ast mod 60;
my $timezone = $<tz>.ast * 3600;

my $dt = DateTime.new(:$year, :$month, :$day, :$hour, :$minute, :$timezone).in-timezone(0);

$dt = $dt.later(hours => 12);

say "12 hours later, UTC: $dt";
say "12 hours later, PDT: $dt.in-timezone(-7 * 3600)";
#----------------------------------------------------------- 245 day-of-the-week
say join ' ', grep { Date.new($_, 12, 25).day-of-week == 7 }, 2008 .. 2121;
#-------------------------------------------------------- 246 days-between-dates
say Date.new('2019-09-30') - Date.new('2019-01-01');

say Date.new('2019-03-01') - Date.new('2019-02-01');

say Date.new('2020-03-01') - Date.new('2020-02-01');

say Date.new('2029-03-29') - Date.new('2019-03-29');

say Date.new('2019-01-01') + 90;

say Date.new('2020-01-01') + 90;

say Date.new('2019-02-29') + 30;

CATCH { default { .message.say; exit; } };
#--------------------------------------------------- 247 deal-cards-for-freecell
sub dealgame ($game-number = 1) {
    sub ms-lcg-method($seed = $game-number) { ( 214013 * $seed + 2531011 ) % 2**31 }

    # lazy list of the random sequence
    my @ms-lcg = |(&ms-lcg-method ... *).map: * +> 16;

    constant CardBlock = '🂠'.ord;
    my @deck = gather for flat(1..11,13,14) X+ (48,32...0) -> $off {
        take chr CardBlock + $off;
    }

    my @game = gather while @deck {
        @deck[@ms-lcg.shift % @deck, @deck-1] .= reverse;
        take @deck.pop;
    }

    say "Game #$game-number";
    say @game.splice(0, 8 min +@game) while @game;
}

dealgame;
dealgame 617;
#---------------------------------------------------------------- 248 death-star
class sphere {
   has $.cx; # center x coordinate
   has $.cy; # center y coordinate
   has $.cz; # center z coordinate
   has $.r;  # radius
}

my $depth = 255;     # image color depth

my $width = my $height = 255; # dimensions of generated .pgm; must be odd

my $s = ($width - 1)/2;  # scaled dimension to build geometry

my @light = normalize([ 4, -1, -3 ]);

# positive sphere at origin
my $pos = sphere.new(
    cx => 0,
    cy => 0,
    cz => 0,
    r  => $s.Int
);

# negative sphere offset to upper left
my $neg = sphere.new(
    cx => (-$s*.90).Int,
    cy => (-$s*.90).Int,
    cz => (-$s*.3).Int,
    r  => ($s*.7).Int
);

sub MAIN ($outfile = 'deathstar-perl6.pgm') {
    spurt $outfile, ("P5\n$width $height\n$depth\n"); # .pgm header
    my $out = open( $outfile, :a, :bin ) orelse .die;
    say 'Working...';
    $out.write( Blob.new( |draw_ds(3, .15) ) );
    say 'File written.';
    $out.close;
}

sub draw_ds ( $k, $ambient ) {
    my @pixels[$height];

    (($pos.cy - $pos.r) .. ($pos.cy + $pos.r)).race.map: -> $y {
        my @row[$width];
        (($pos.cx - $pos.r) .. ($pos.cx + $pos.r)).map: -> $x {
            # black if we don't hit positive sphere, ignore negative sphere
            if not hit($pos, $x, $y, my $posz) {
                @row[$x + $s] = 0;
                next;
            }
            my @vec;
            # is front of positive sphere inside negative sphere?
            if hit($neg, $x, $y, my $negz) and $negz.min < $posz.min < $negz.max {
                # make black if whole positive sphere eaten here
                if $negz.min < $posz.max < $negz.max { @row[$x + $s] = 0; next; }
                # render inside of negative sphere
                @vec = normalize([$neg.cx - $x, $neg.cy - $y, -$negz.max - $neg.cz]);
            }
            else {
                # render outside of positive sphere
                @vec = normalize([$x - $pos.cx, $y - $pos.cy,  $posz.max - $pos.cz]);
            }
            my $intensity = dot(@light, @vec) ** $k + $ambient;
            @row[$x + $s] = ($intensity * $depth).Int min $depth;
        }
         @pixels[$y + $s] = @row;
    }
    flat |@pixels.map: *.list;
}

# normalize a vector
sub normalize (@vec) { @vec »/» ([+] @vec »*« @vec).sqrt }

# dot product of two vectors
sub dot (@x, @y) { -([+] @x »*« @y) max 0 }

# are the coordinates within the radius of the sphere?
sub hit ($sphere, $x is copy, $y is copy, $z is rw) {
    $x -= $sphere.cx;
    $y -= $sphere.cy;
    my $z2 = $sphere.r * $sphere.r - $x * $x - $y * $y;
    return False if $z2 < 0;
    $z2 = $z2.sqrt;
    $z = $sphere.cz - $z2 .. $sphere.cz + $z2;
    True;
}
#--------------------------------------------------------- 249 deceptive-numbers
my \R = [\+] 1, 10, 100 … *;
put (2..∞).grep( {$_ % 2 && $_ % 3 && $_ % 5 && !.is-prime} ).grep( { R[$_-2] %% $_ } )[^25];
#----------------------------------- 250 decimal-floating-point-number-to-binary
given "23.34375"   { say "$_ => ", :10($_).base(2) }
given "1011.11101" { say "$_ => ", :2($_).base(10) }
#---------------------------------------------------------- 251 deconvolution-1d
sub deconvolve (@g, @f) {
    my \h = 1 + @g - @f;
    my @m;
    @m[^@g;^h] »+=» 0;
    @m[^@g; h] »=«  @g;
    for ^h -> \j { for @f.kv -> \k, \v { @m[j+k;j] = v } }
    (rref @m)[^h;h]
}

sub convolve (@f, @h) {
    my @g = 0 xx + @f + @h - 1;
    @g[^@f X+ ^@h] »+=« (@f X× @h);
    @g
}

# Reduced Row Echelon Form simultaneous equation solver
# Can handle over-specified systems of equations (N unknowns in N + M equations)
sub rref (@m) {
    @m = trim-system @m;
    my ($lead, $rows, $cols) = 0, @m, @m[0];
    for ^$rows -> $r {
        return @m unless $lead < $cols;
        my $i = $r;
        until @m[$i;$lead] {
            next unless ++$i == $rows;
            $i = $r;
            return @m if ++$lead == $cols;
        }
        @m[$i, $r] = @m[$r, $i] if $r != $i;
        @m[$r] »/=» $ = @m[$r;$lead];
        for ^$rows -> $n {
            next if $n == $r;
            @m[$n] »-=» @m[$r] »×» (@m[$n;$lead] // 0);
        }
        ++$lead;
    }
    @m
 }

# Reduce to N equations in N unknowns; a no-op unless rows > cols
sub trim-system (@m) {
    return @m unless @m ≥ @m[0];
    my (\vars, @t) = @m[0] - 1;
    for ^vars -> \lead {
        for ^@m -> \row {
            @t.append: @m.splice(row, 1) and last if @m[row;lead];
        }
    }
    while @t < vars and @m { @t.push: shift @m }
    @t
}

my @h = (-8,-9,-3,-1,-6,7);
my @f = (-3,-6,-1,8,-6,3,-1,-9,-9,3,-2,5,2,-2,-7,-1);
my @g = (24,75,71,-34,3,22,-45,23,245,25,52,25,-67,-96,96,31,55,36,29,-43,-7);

.say for ~@g,   ~convolve(@f, @h),'';
.say for ~@h, ~deconvolve(@g, @f),'';
.say for ~@f, ~deconvolve(@g, @h),'';
#--------------------------------------------------------- 252 deconvolution-2d+
# Deconvolution of N dimensional matrices.
sub deconvolve-N ( @g, @f ) {
    my @hsize = @g.shape »-« @f.shape »+» 1;

    my @toSolve = coords(@g.shape).map:
      { [row(@g, @f, $^coords, @hsize)] };

    my @solved = rref( @toSolve );

    my @h;
    for flat coords(@hsize) Z @solved[*;*-1] -> $_, $v {
        @h.AT-POS(|$_) = $v;
    }
    @h
}

# Construct a row for each value in @g to be sent to the simultaneous equation solver
sub row ( @g, @f, @gcoord, $hsize ) {
    my @row;
    @gcoord = @gcoord[(^@f.shape)]; # clip extraneous values
    for coords( $hsize ) -> @hc {
        my @fcoord;
        for ^@hc -> $i {
            my $window = @gcoord[$i] - @hc[$i];
            @fcoord.push($window) and next if 0 ≤ $window < @f.shape[$i];
            last;
        }
        @row.push: @fcoord == @hc ?? @f.AT-POS(|@fcoord) !! 0;
    }
    @row.push: @g.AT-POS(|@gcoord);
    @row
}

# Constructs an AoA of coordinates to all elements of N dimensional array
sub coords ( @dim ) {
    @[reverse $_ for [X] ([^$_] for reverse @dim)]
}

# Reduced Row Echelon Form simultaneous equation solver
# Can handle over-specified systems (N unknowns in N + M equations)
sub rref (@m) {
    @m = trim-system @m;
    my ($lead, $rows, $cols) = 0, @m, @m[0];
    for ^$rows -> $r {
        return @m unless $lead < $cols;
        my $i = $r;
        until @m[$i;$lead] {
            next unless ++$i == $rows;
            $i = $r;
            return @m if ++$lead == $cols;
        }
        @m[$i, $r] = @m[$r, $i] if $r != $i;
        @m[$r] »/=» $ = @m[$r;$lead];
        for ^$rows -> $n {
            next if $n == $r;
            @m[$n] »-=» @m[$r] »×» (@m[$n;$lead] // 0);
        }
        ++$lead;
    }
    @m
 }

# Reduce to N equations in N unknowns; a no-op unless rows > cols
sub trim-system (@m) {
    return @m unless @m ≥ @m[0];
    my (\vars, @t) = @m[0] - 1;
    for ^vars -> \lead {
        for ^@m -> \row {
            @t.append: @m.splice(row, 1) and last if @m[row;lead];
        }
    }
    while @t < vars and @m { @t.push: shift @m }
    @t
}

# Pretty printer for N dimensional arrays
# Assumes if first element in level is an array, then all are
sub pretty-print ( @array, $indent = 0 ) {
    if @array[0] ~~ Array {
        say ' ' x $indent,"[";
        pretty-print( $_, $indent + 2 ) for @array;
        say ' ' x $indent, "]{$indent??','!!''}";
    } else {
        say ' ' x $indent, "[{say_it(@array)} ]{$indent??','!!''}";
    }

    sub say_it ( @array ) { return join ",", @array».fmt("%4s"); }
}

my @f[3;2;3] = (
  [
    [ -9,  5, -8 ],
    [  3,  5,  1 ],
  ],
  [
    [ -1, -7,  2 ],
    [ -5, -6,  6 ],
  ],
  [
    [  8,  5,  8 ],
    [ -2, -6, -4 ],
  ]
);

my @g[4;4;6] = (
  [
    [  54,  42,  53, -42,  85, -72 ],
    [  45,-170,  94, -36,  48,  73 ],
    [ -39,  65,-112, -16, -78, -72 ],
    [   6, -11,  -6,  62,  49,   8 ],
  ],
  [
    [ -57,  49, -23,  52,-135,  66 ],
    [ -23, 127, -58,  -5,-118,  64 ],
    [  87, -16, 121,  23, -41, -12 ],
    [ -19,  29,  35,-148, -11,  45 ],
  ],
  [
    [ -55,-147,-146, -31,  55,  60 ],
    [ -88, -45, -28,  46, -26,-144 ],
    [ -12,-107, -34, 150, 249,  66 ],
    [  11, -15, -34,  27, -78, -50 ],
  ],
  [
    [  56,  67, 108,   4,   2, -48 ],
    [  58,  67,  89,  32,  32,  -8 ],
    [ -42, -31,-103, -30, -23,  -8 ],
    [   6,   4, -26, -10,  26,  12 ],
  ]
);

say "# {+@f.shape}D array:";
my @h = deconvolve-N( @g, @f );
say "h =";
pretty-print( @h );
my @h-shaped[2;3;4] = @(deconvolve-N( @g, @f ));
my @ff = deconvolve-N( @g, @h-shaped );
say "\nff =";
pretty-print( @ff );
#---------------------------------------- 253 decreasing-contiguous-subsequences
my @values =
90, 90, 90, 91, 91, 92, 92, 92, 91, 91, 91, 90, 90, 90, 89, 89, 88, 87, 87, 87, 86, 86, 86, 85, 85,
86, 86, 87, 87, 88, 89, 89, 89, 90, 90, 91, 91, 91, 92, 92, 92, 92, 92, 92, 92, 92, 92, 91, 91, 90,
90, 90, 90, 90, 89, 89, 89, 89, 88, 88, 88, 88, 88, 88, 88, 88, 88, 88, 88, 88, 89, 89, 89, 89, 89,
89, 90, 90, 90, 89, 89, 89, 89, 89, 89, 88, 88, 88, 88, 88, 88, 87, 88, 88, 88, 88, 88, 88, 88, 88,
88, 88, 88, 88, 88, 88, 88, 88, 88, 88, 88, 88, 88, 89, 89, 89, 89, 89, 88, 88, 88, 88, 88, 88, 89,
89, 89, 89, 89, 89, 89, 89, 88, 88, 88, 88, 88, 88, 88, 88, 87, 87, 87, 87, 87, 87, 87, 87, 87, 87,
87, 87, 88, 88, 88, 88, 88, 88, 88, 88, 88, 89, 89, 89, 89, 89, 89, 89, 88, 88, 88, 88, 88, 88, 88,
88, 88, 88, 88, 89, 89, 89, 89, 89, 89, 89, 89, 89, 89, 88, 88, 88, 87, 87, 87, 87, 86, 86, 86, 86,
86, 86, 87, 87, 87, 87, 87, 87, 87, 88, 88, 88, 88, 88, 88, 88, 88, 88, 89, 89, 89, 89, 89, 89, 89,
88, 88, 88, 88, 88, 87, 87, 87, 87, 87, 87, 87, 87, 87, 87, 87, 87, 87, 87, 87, 87, 87, 89, 89, 91,
94, 94, 95, 96, 96, 96, 97, 97, 96, 96, 96, 96, 95, 95, 94, 93, 93, 92, 92, 91, 91, 90, 89, 89, 88,
86, 86, 85, 83, 83, 81, 80, 80, 80, 79, 79, 79, 78, 78, 79, 81, 82, 82, 85, 89, 89, 91, 93, 93, 94,
95, 95, 95, 95, 95, 95, 95, 95, 95, 94, 94, 94, 94, 93, 93, 93, 92, 92, 91, 91, 91, 90, 90, 90, 88,
87, 87, 86, 85, 85, 84, 84, 84, 83, 84, 84, 84, 85, 86, 86, 87, 87, 87, 88, 88, 88, 89, 90, 90, 90,
91, 91, 92, 92, 92, 93, 94, 94, 94, 95, 95, 95, 95, 94, 94, 94, 93, 93, 93, 92, 92, 92, 91, 91, 90,
89, 89, 87, 86, 85, 85, 84, 83, 83, 82, 82, 82, 81, 81, 81, 81, 81, 81, 82, 85, 85, 86, 89, 89, 91,
92, 93, 93, 93, 94, 94, 94, 94, 94, 94, 94, 94, 94, 93, 93, 93, 92, 92, 92, 91, 91, 91, 90, 89, 89,
88, 88, 88, 87, 87, 87, 86, 86, 86, 85, 85, 85, 85, 85, 85, 86, 87, 87, 87, 88, 88, 88, 88, 88, 88,
89, 89, 89, 89, 89, 89, 90, 90, 90, 90, 91, 91, 92, 93, 93, 94, 94, 95, 95, 95, 96, 96, 96, 95, 95,
95, 94, 94, 93, 93, 93, 92, 90, 90, 89, 87, 87, 87, 85, 83, 83, 82, 81, 81, 81, 80, 80, 81, 81, 81,
81, 81, 81, 81, 81, 81, 81, 81, 81, 83, 86, 88, 88, 90, 91, 91, 91, 92, 92, 93, 93, 93, 94, 95, 95,
95, 96, 96, 96, 96, 96, 96, 96, 95, 95, 95, 95, 95, 94, 93, 93, 92, 92, 92, 91, 90, 90, 90, 90, 90,
91, 93, 93, 94, 94, 94, 94, 95, 94, 94, 94, 94, 94, 94, 93, 93, 93, 93, 93, 93, 92, 92, 92, 92, 92,
91, 91, 91, 91, 91, 91, 91, 91, 90, 90, 90, 90, 90, 90, 90, 90, 89, 89, 89, 89, 89, 89, 89, 89, 89,
89, 90, 90, 90, 90, 91, 91, 92, 93, 93, 93, 94, 94, 94, 94, 94, 94, 94, 94, 94, 95, 95, 95, 95, 95,
95, 95, 95, 95, 94, 93, 93, 93, 93, 93, 92, 92, 92, 91, 91, 91, 91, 90, 90, 90, 89, 89, 89, 88, 88,
88, 88, 88, 88, 88, 88, 88, 89, 89, 89, 89, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 91, 91, 91, 91,
91, 91, 91, 91, 91, 91, 91, 91, 91, 91, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 91, 92,
92, 93, 93, 93, 93, 94, 94, 94, 93, 93, 93, 93, 93, 93, 92, 92, 92, 91, 91, 91, 90, 90, 90, 89, 88,
88, 87, 87, 87, 86, 86, 85, 85, 85, 86, 86, 86, 87, 87, 88, 88, 88, 89, 90, 90, 90, 91, 91, 91, 91,
91, 91, 91, 91, 91, 92, 92, 92, 93, 93, 93, 93, 93, 93, 93, 92, 92, 92, 91, 91, 90, 90, 90, 89, 88,
87, 87, 87, 86, 86, 86, 85, 85, 85, 85, 85, 85, 85, 85, 85, 85, 85, 86, 86, 86, 86, 87, 88, 88, 88,
89, 89, 90, 91, 91, 92, 93, 93, 93, 94, 94, 94, 94, 94, 94, 94, 94, 94, 93, 93, 93, 92, 92, 92, 91,
90, 90, 90, 89, 89, 88, 88, 88, 87, 87, 87, 87, 87, 87, 87, 87, 87, 87, 87, 87, 87, 87, 88, 88, 88,
90, 90, 91, 93, 93, 93, 93, 93, 94, 93, 93, 93, 93, 93, 93, 92, 92, 92, 91, 91, 91, 90, 90, 90, 89,
89, 89, 88, 87, 87, 87, 87, 87, 86, 87, 87, 87, 87, 87, 87, 87, 87, 87, 88, 88, 88, 88, 88, 88, 88,
89;

my @bins = 0^..^4, 4..^8, 8..^12, 12..^16, 16..^25, 25..100;

my @subseqs;

@values.map: {
    state $last = $_;
    state $incr = 0;
    ++$incr if $_ > $last;
    @subseqs[$incr].push: $_;
    $last = $_;
};

sub bin (@items, @bins, :&as) {
    my @classified;
    for @items {
        my $value = .&as;
        for @bins {
            state $index = 0;
            @classified[$index]++ if $value ∈ $_;
            ++$index;
        }
    }
    @classified
}

say "{.[0].gist}% : {.[1]}" for @bins Z flat @subseqs.&bin(@bins, :as{[R-] .minmax.bounds}), 0 xx *;
#---------------------------------------------------------------- 254 deepcopy-1
my %x = foo => 0, bar => [0, 1];
my %y = %x.deepmap(*.clone);

%x<bar>[1]++;
say %x;
say %y;
#---------------------------------------------------------------- 255 deepcopy-2
my %x = foo => 0, bar => [0, 1];
my %y = %x.raku.EVAL;

%x<bar>[1]++;
say %x;
say %y;
#----------------------------------------------------------------- 256 delegates
class Non-Delegate  { }

class Delegate {
	method thing {
		return "delegate implementation"
	}
}

class Delegator {
	has $.delegate is rw;

	method operation {
		$.delegate.^can( 'thing' ) ?? $.delegate.thing
		!! "default implementation"
	}
}

my Delegator $d .= new;

say "empty: "~$d.operation;

$d.delegate = Non-Delegate.new;

say "Non-Delegate: "~$d.operation;

$d.delegate = Delegate.new;

say "Delegate: "~$d.operation;
#------------------------------------------------------------ 257 demings-funnel
sub mean { @_ R/ [+] @_ }
sub stddev {
    # <(x - <x>)²> = <x²> - <x>²
    sqrt( mean(@_ »**» 2) - mean(@_)**2 )
}

constant @dz = <
    -0.533  0.270  0.859 -0.043 -0.205 -0.127 -0.071  0.275
     1.251 -0.231 -0.401  0.269  0.491  0.951  1.150  0.001
    -0.382  0.161  0.915  2.080 -2.337  0.034 -0.126  0.014
     0.709  0.129 -1.093 -0.483 -1.193  0.020 -0.051  0.047
    -0.095  0.695  0.340 -0.182  0.287  0.213 -0.423 -0.021
    -0.134  1.798  0.021 -1.099 -0.361  1.636 -1.134  1.315
     0.201  0.034  0.097 -0.170  0.054 -0.553 -0.024 -0.181
    -0.700 -0.361 -0.789  0.279 -0.174 -0.009 -0.323 -0.658
     0.348 -0.528  0.881  0.021 -0.853  0.157  0.648  1.774
    -1.043  0.051  0.021  0.247 -0.310  0.171  0.000  0.106
     0.024 -0.386  0.962  0.765 -0.125 -0.289  0.521  0.017
     0.281 -0.749 -0.149 -2.436 -0.909  0.394 -0.113 -0.598
     0.443 -0.521 -0.799  0.087
> Z+ (1i X* <
     0.136  0.717  0.459 -0.225  1.392  0.385  0.121 -0.395
     0.490 -0.682 -0.065  0.242 -0.288  0.658  0.459  0.000
     0.426  0.205 -0.765 -2.188 -0.742 -0.010  0.089  0.208
     0.585  0.633 -0.444 -0.351 -1.087  0.199  0.701  0.096
    -0.025 -0.868  1.051  0.157  0.216  0.162  0.249 -0.007
     0.009  0.508 -0.790  0.723  0.881 -0.508  0.393 -0.226
     0.710  0.038 -0.217  0.831  0.480  0.407  0.447 -0.295
     1.126  0.380  0.549 -0.445 -0.046  0.428 -0.074  0.217
    -0.822  0.491  1.347 -0.141  1.230 -0.044  0.079  0.219
     0.698  0.275  0.056  0.031  0.421  0.064  0.721  0.104
    -0.729  0.650 -1.103  0.154 -1.720  0.051 -0.385  0.477
     1.537 -0.901  0.939 -0.411  0.341 -0.411  0.106  0.224
    -0.947 -1.424 -0.542 -1.032
>);

constant @rule =
-> \z, \dz { 0 },
-> \z, \dz { -dz },
-> \z, \dz { -z - dz },
-> \z, \dz {  z + dz },
;

for @rule {
    say "Rule $(++$):";
    my $target = 0i;
    my @z = gather for @dz -> $dz {
	take $target + $dz;
	$target = .($target, $dz)
    }
    printf "Mean    x, y   : %7.4f %7.4f\n",   mean(@z».re),   mean(@z».im);
    printf "Std dev x, y   : %7.4f %7.4f\n", stddev(@z».re), stddev(@z».im);
}
#-------------------------------------------------------- 258 department-numbers
for (1..7).combinations(3).grep(*.sum == 12) {
    for   .permutations\  .grep(*.[0] %%  2) {
        say <police fire sanitation> Z=> .list;
    }
}
#--------------------------------------------------------- 259 descending-primes
put (flat 2, 3, 5, 7, sort +*, gather (3..9).map: &recurse ).batch(10)».fmt("%8d").join: "\n";

sub recurse ($str) {
    .take for ($str X~ (1, 3, 7)).grep: { .is-prime && [>] .comb };
    recurse $str × 10 + $_ for 2 ..^ $str % 10;
}
#------------------------------------------------- 260 detect-division-by-zero-1
sub div($a, $b) {
    my $r;
    try {
        $r = $a / $b;
        CATCH {
            default { note "Unexpected exception, $_" }
        }
    }
    return $r // Nil;
}
say div(10,2);
say div(1, sin(0));
#------------------------------------------------- 261 detect-division-by-zero-2
multi div($a, $b) { return $a / $b }
multi div($a, $b where { $b == 0 }) { note 'Attempt to divide by zero.'; return Nil }

say div(10, 2);
say div(1, sin(0));
#------------------------------------------------- 262 determinant-and-permanent
sub insert ($x, @xs) { ([flat @xs[0 ..^ $_], $x, @xs[$_ .. *]] for 0 .. @xs) }
sub order ($sg, @xs) { $sg > 0 ?? @xs !! @xs.reverse }

multi σ_permutations ([]) { [] => 1 }

multi σ_permutations ([$x, *@xs]) {
    σ_permutations(@xs).map({ |order($_.value, insert($x, $_.key)) }) Z=> |(1,-1) xx *
}

sub m_arith ( @a, $op ) {
    note "Not a square matrix" and return
      if [||] map { @a.elems cmp @a[$_].elems }, ^@a;
    sum σ_permutations([^@a]).race.map: {
        my $permutation = .key;
        my $term = $op eq 'perm' ?? 1 !! .value;
        for $permutation.kv -> $i, $j { $term *= @a[$i][$j] };
        $term
    }
}

######### helper subs #########
sub hilbert-matrix (\h) {[(1..h).map(-> \n {[(n..^n+h).map: {(1/$_).FatRat}]})]}

sub rat-or-int ($num) {
    return $num unless $num ~~ Rat|FatRat;
    return $num.narrow if $num.narrow.WHAT ~~ Int;
    $num.nude.join: '/';
}

sub say-it ($message, @array) {
    my $max;
    @array.map: {$max max= max $_».&rat-or-int.comb(/\S+/)».chars};
    say "\n$message";
    $_».&rat-or-int.fmt(" %{$max}s").put for @array;
}

########### Testing ###########
my @tests = (
    [
        [ 1, 2 ],
        [ 3, 4 ]
    ],
    [
        [  1,  2,  3,  4 ],
        [  4,  5,  6,  7 ],
        [  7,  8,  9, 10 ],
        [ 10, 11, 12, 13 ]
    ],
    hilbert-matrix 7
);

for @tests -> @matrix {
    say-it 'Matrix:', @matrix;
    say "Determinant:\t", rat-or-int @matrix.&m_arith: <det>;
    say "Permanent:  \t", rat-or-int @matrix.&m_arith: <perm>;
    say '-' x 40;
}
#------------------------- 263 determine-if-a-string-has-all-the-same-characters
  -> $str {
    my $i = 0;
    print "\n{$str.raku} (length: {$str.chars}), has ";
    my %m;
    %m{$_}.push: ++$i for $str.comb;

    if %m > 1 {
        say "different characters:";
        say "'{.key}' ({.key.uninames}; hex ordinal: {(.key.ords).fmt: "0x%X"})" ~
        " in positions: {.value.join: ', '}" for %m.sort( *.value[0] );
    } else {
        say "the same character in all positions."
    }
} for
    '',
    '   ',
    '2',
    '333',
    '.55',
    'tttTTT',
    '4444 444k',
    '🇬🇧🇬🇧🇬🇧🇬🇧',
    "\c[LATIN CAPITAL LETTER A]\c[COMBINING DIAERESIS]\c[COMBINING MACRON]" ~
    "\c[LATIN CAPITAL LETTER A WITH DIAERESIS]\c[COMBINING MACRON]" ~
    "\c[LATIN CAPITAL LETTER A WITH DIAERESIS AND MACRON]",
    'AАΑꓮ𐌀𐊠Ꭺ'
#-------------------------------------- 264 determine-if-a-string-is-collapsible
map {
    my $squish = .comb.squish.join;
    printf "\nLength: %2d <<<%s>>>\nCollapsible: %s\nLength: %2d <<<%s>>>\n",
      .chars, $_, .chars != $squish.chars, $squish.chars, $squish
}, lines

q:to/STRINGS/;

    "If I were two-faced, would I be wearing this one?" --- Abraham Lincoln
    ..1111111111111111111111111111111111111111111111111111111111111117777888
    I never give 'em hell, I just tell the truth, and they think it's hell.
                                                        --- Harry S Truman
    The American people have a right to know if their president is a crook.
                                                        --- Richard Nixon
    AАΑAАΑAАΑAАΑAАΑAАΑAАΑAАΑAАΑAАΑAАΑAАΑAАΑAАΑAАΑAАΑAАΑAАΑAАΑAАΑAАΑAАΑAАΑAАΑ
    AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
    STRINGS
#------------------------------------------ 265 determine-if-a-string-is-numeric
sub is-number-w-ws( Str $term --> Bool ) { # treat Falsey strings as numeric
    $term.Numeric !~~ Failure;
}

sub is-number-wo-ws( Str $term --> Bool ) { # treat Falsey strings as non-numeric
    ?($term ~~ / \S /) && $term.Numeric !~~ Failure;
}

say "               Coerce     Don't coerce";
say '    String   whitespace    whitespace';
printf "%10s  %8s  %11s\n",
"<$_>", .&is-number-w-ws, .&is-number-wo-ws for
(|<1 1.2 1.2.3 -6 1/2 12e B17 1.3e+12 1.3e12 -2.6e-3 zero 0x 0xA10 0b1001 0o16
0o18 2+5i True False Inf NaN 0x10.50 0b102 0o_5_3 ௫௯>, '  12  ', '1 1 1', '', ' ' ).map: *.Str;
#--------------------------------------- 266 determine-if-a-string-is-squeezable
map {
    my $squeeze = $^phrase;
    sink $^reg;
    $squeeze ~~ s:g/($reg)$0+/$0/;
    printf "\nOriginal length: %d <<<%s>>>\nSqueezable on \"%s\": %s\nSqueezed length: %d <<<%s>>>\n",
      $phrase.chars, $phrase, $reg.uniname, $phrase ne $squeeze, $squeeze.chars, $squeeze
},
  '', ' ',
  '"If I were two-faced, would I be wearing this one?" --- Abraham Lincoln ', '-',
  '..1111111111111111111111111111111111111111111111111111111111111117777888', '7',
  "I never give 'em hell, I just tell the truth, and they think it's hell. ", '.',
  '                                                    --- Harry S Truman  ', ' ',
  '                                                    --- Harry S Truman  ', '-',
  '                                                    --- Harry S Truman  ', 'r'
#---------------------------------------- 267 determine-if-two-triangles-overlap
# Reference:
# https://stackoverflow.com/questions/2049582/how-to-determine-if-a-point-is-in-a-2d-triangle
# https://www.geeksforgeeks.org/check-if-two-given-line-segments-intersect/

sub if-overlap ($triangle-pair) {
   my (\A,\B) = $triangle-pair;
   my Bool $result = False;

   sub sign (\T) {
      return (T[0;0] - T[2;0]) × (T[1;1] - T[2;1]) -
             (T[1;0] - T[2;0]) × (T[0;1] - T[2;1]);
   }

   sub point-in-triangle (\pt, \Y --> Bool) {
      my $d1 = sign (pt, Y[0], Y[1]);
      my $d2 = sign (pt, Y[1], Y[2]);
      my $d3 = sign (pt, Y[2], Y[0]);

      my $has_neg = [or] $d1 < 0, $d2 < 0, $d3 < 0;
      my $has_pos = [or] $d1 > 0, $d2 > 0, $d3 > 0;

      return not ($has_neg and $has_pos);
   }

   sub orientation(\P, \Q, \R --> Int) {
      my \val = (Q[1] - P[1]) × (R[0] - Q[0]) -
                (Q[0] - P[0]) × (R[1] - Q[1]);

      return 0 if val == 0;     # colinear
      return val > 0 ?? 1 !! 2; # clock or counterclock wise
   }

   sub onSegment(\P, \Q, \R --> Bool) {
      Q[0] ≤ max(P[0], R[0]) and Q[0] ≥ min(P[0], R[0]) and
      Q[1] ≤ max(P[1], R[1]) and Q[1] ≥ min(P[0], R[1])
         ?? True !! False
   }

   sub intersect(\A,\B,\C,\D --> Bool) {
      my \o1 = orientation A, C, D;
      my \o2 = orientation B, C, D;
      my \o3 = orientation A, B, C;
      my \o4 = orientation A, B, D;

         o1 != o2 and o3 != o4
      or o1 ==  0 and onSegment A, C, D
      or o2 ==  0 and onSegment B, C, D
      or o3 ==  0 and onSegment A, B, C
      or o4 ==  0 and onSegment A, B, D
         ?? True !! False
   }

   for ^3 {
      { $result = True; last } if
          point-in-triangle A.[$^i], B or
          point-in-triangle B.[$^i], A ;
   }

   unless $result {
      $result = True if
          intersect A.[0], A.[1], B.[0], B.[1] or
          intersect A.[0], A.[1], B.[0], B.[2]
   }

   say "{A.gist} and {B.gist} do{' NOT' unless $result} overlap.";
}

my \DATA = [
   [ [(0,0),(5,0),(0,5)]   ,  [(0,0),(5,0),(0,6)]     ],
   [ [(0,0),(0,5),(5,0)]   ,  [(0,0),(0,5),(5,0)]     ],
   [ [(0,0),(5,0),(0,5)]   ,  [(-10,0),(-5,0),(-1,6)] ],
   [ [(0,0),(5,0),(2.5,5)] ,  [ (0,4),(2.5,-1),(5,4)] ],
   [ [(0,0),(1,1),(0,2)]   ,  [(2,1),(3,0),(3,2)]     ],
   [ [(0,0),(1,1),(0,2)]   ,  [(2,1),(3,-2),(3,4)]    ],
   [ [(0,0),(1,0),(0,1)]   ,  [(1,0),(2,0),(1,1)]     ]
];

if-overlap $_ for DATA ;
#--------------------------------------------------- 268 dice-game-probabilities
sub likelihoods ($roll) {
    my ($dice, $faces) = $roll.comb(/\d+/);
    my @counts;
    @counts[$_]++ for [X+] |(1..$faces,) xx $dice;
    return [@counts[]:p], $faces ** $dice;
}

sub beating-probability ([$roll1, $roll2]) {
    my (@c1, $p1) := likelihoods $roll1;
    my (@c2, $p2) := likelihoods $roll2;
    my $p12 = $p1 * $p2;

    [+] gather for flat @c1 X @c2 -> $p, $q {
	take $p.value * $q.value / $p12 if $p.key > $q.key;
    }
}

# We're using standard DnD notation for dice rolls here.
say .gist, "\t", .raku given beating-probability < 9d4 6d6 >;
say .gist, "\t", .raku given beating-probability < 5d10 6d7 >;
#------------------------------------------------------------ 269 digital-root-1
sub digital-root ($r, :$base = 10) {
    my $root = $r.base($base);
    my $persistence = 0;
    while $root.chars > 1 {
        $root = $root.comb.map({:36($_)}).sum.base($base);
        $persistence++;
    }
    $root, $persistence;
}

my @testnums =
    627615,
    39390,
    588225,
    393900588225,
    58142718981673030403681039458302204471300738980834668522257090844071443085937;

for 10, 8, 16, 36 -> $b {
    for @testnums -> $n {
        printf ":$b\<%s>\ndigital root %s, persistence %s\n\n",
            $n.base($b), digital-root $n, :base($b);
    }
}
#---------------------------------- 270 digital-root-multiplicative-digital-root
sub multiplicative-digital-root(Int $n) {
    return .elems - 1, .[.end]
        given cache($n, {[*] .comb} ... *.chars == 1)
}

for 123321, 7739, 893, 899998 {
    say "$_: ", .&multiplicative-digital-root;
}

for ^10 -> $d {
    say "$d : ", .[^5]
        given (1..*).grep: *.&multiplicative-digital-root[1] == $d;
}
#------------------------------------------------------- 271 dijkstras-algorithm
class Graph {
  has (%.edges, %.nodes);

  method new(*@args){
    my (%edges, %nodes);
    for @args {
      %edges{.[0] ~ .[1]} = $_;
      %nodes{.[0]}.push( .[0] ~ .[1] );
      %nodes{.[1]}.push( .[0] ~ .[1] );
    }
    self.bless(edges => %edges, nodes => %nodes);
  }

  method neighbours ($source) {
    my (%neighbours, $edges);
    $edges = self.nodes{$source};
    for @$edges -> $x {
      for self.edges{$x}[0..1] -> $y {
        if $y ne $source {
          %neighbours{$y} = self.edges{$x}
        }
      }
    }
    return %neighbours
  }

  method dijkstra ($source, $dest) {
    my (%node_data, $v, $u);
    my @q = self.nodes.keys;

    for self.nodes.keys {
      %node_data{$_}{'dist'} = Inf;
      %node_data{$_}{'prev'} = '';
    }
    %node_data{$source}{'dist'} = 0;

    while @q {
      # %node_data.perl.say;
      my ($mindist, $idx) =
        @((map {[%node_data{@q[$_]}{'dist'},$_]},^@q).min(*[0]));
      $u = @q[$idx];

      if $mindist eq Inf {
        return ()
      }
      elsif $u eq $dest {
        my @s;
        while %node_data{$u}{'prev'} {
          @s.unshift($u);
          $u = %node_data{$u}{'prev'}
        }
        @s.unshift($source);
        return @s;
      }
      else {
        @q.splice($idx,1);
      }

      for self.neighbours($u).kv -> $v, $edge {
        my $alt = %node_data{$u}{'dist'} + $edge[2];
        if $alt < %node_data{$v}{'dist'} {
          %node_data{$v}{'dist'} = $alt;
          %node_data{$v}{'prev'} = $u
        }
      }
    }
  }
}

my $a = Graph.new([
  ["a", "b",  7],
  ["a", "c",  9],
  ["a", "f", 14],
  ["b", "c", 10],
  ["b", "d", 15],
  ["c", "d", 11],
  ["c", "f",  2],
  ["d", "e",  6],
  ["e", "f",  9]
]).dijkstra('a', 'e').say;
#------------------------------------- 272 dinesmans-multiple-dwelling-problem-1
use MONKEY-SEE-NO-EVAL;

sub parse_and_solve ($text) {
    my %ids;
    my $expr = (grammar {
        state $c = 0;
        rule TOP { <fact>+ { make join ' && ', $<fact>>>.made } }

        rule fact { <name> (not)? <position>
                    { make sprintf $<position>.made.fmt($0 ??  "!(%s)" !! "%s"),
                                   $<name>.made }
        }
        rule position {
            || on bottom             { make "\@f[%s] == 1"                            }
            || on top                { make "\@f[%s] == +\@f"                         }
            || lower than <name>     { make "\@f[%s] < \@f[{$<name>.made}]"           }
            || higher than <name>    { make "\@f[%s] > \@f[{$<name>.made}]"           }
            || directly below <name> { make "\@f[%s] == \@f[{$<name>.made}] - 1"      }
            || directly above <name> { make "\@f[%s] == \@f[{$<name>.made}] + 1"      }
            || adjacent to <name>    { make "\@f[%s] == \@f[{$<name>.made}] + (-1|1)" }
            || on <ordinal>          { make "\@f[%s] == {$<ordinal>.made}"            }
            || { note "Failed to parse line " ~ +$/.prematch.comb(/^^/); exit 1; }
        }

        token name    { :i <[a..z]>+              { make %ids{~$/} //= $c++ } }
        token ordinal { [1st | 2nd | 3rd | \d+th] { make +$/.match(/(\d+)/)[0]     } }
    }).parse($text).made;

    EVAL 'for [1..%ids.elems].permutations -> @f {
              say %ids.kv.map({ "$^a=@f[$^b]" }) if (' ~ $expr ~ ');
          }'
}

parse_and_solve Q:to/END/;
    Baker not on top
    Cooper not on bottom
    Fletcher not on top
    Fletcher not on bottom
    Miller higher than Cooper
    Smith not adjacent to Fletcher
    Fletcher not adjacent to Cooper
    END
#------------------------------------- 273 dinesmans-multiple-dwelling-problem-2
# Contains only five floors. 5! = 120 permutations.
for (flat (1..5).permutations) -> $b, $c, $f, $m, $s {
    say "Baker=$b Cooper=$c Fletcher=$f Miller=$m Smith=$s"
        if  $b != 5         # Baker    !live  on top floor.
        and $c != 1         # Cooper   !live  on bottom floor.
        and $f != 1|5       # Fletcher !live  on top or the bottom floor.
        and $m  > $c        # Miller    lives on a higher floor than Cooper.
        and $s != $f-1|$f+1 # Smith    !live  adjacent to Fletcher
        and $f != $c-1|$c+1 # Fletcher !live  adjacent to Cooper
    ;
}
#---------------------------------------------------------- 274 disarium-numbers
my $disarium = (^∞).hyper.map: { $_ if $_ == sum .polymod(10 xx *).reverse Z** 1..* };

put $disarium[^18];
put $disarium[18];
#----------------------------------------------------------- 275 discordian-date
my @seasons = << Chaos Discord Confusion Bureaucracy 'The Aftermath' >>;
my @days = << Sweetmorn Boomtime Pungenday Prickle-Prickle 'Setting Orange' >>;
sub ordinal ( Int $n ) { $n ~ ( $n % 100 == 11|12|13
    ?? 'th' !! < th st nd rd th th th th th th >[$n % 10] ) }

sub ddate ( Str $ymd ) {
    my $d = DateTime.new: "{$ymd}T00:00:00Z" or die;

    my $yold = 'in the YOLD ' ~ $d.year + 1166;

    my $day_of_year0 = $d.day-of-year - 1;

    if $d.is-leap-year {
        return "St. Tib's Day, $yold" if $d.month == 2 and $d.day == 29;
        $day_of_year0-- if $day_of_year0 >= 60; # Compensate for St. Tib's Day
    }

    my $weekday    = @days[    $day_of_year0 mod  5     ];
    my $season     = @seasons[ $day_of_year0 div 73     ];
    my $season_day = ordinal(  $day_of_year0 mod 73 + 1 );

    return "$weekday, the $season_day day of $season $yold";
}

say "$_ is {.&ddate}" for < 2010-07-22 2012-02-28 2012-02-29 2012-03-01 >;
#------------------------------------------------ 276 discrete-fourier-transform
sub ft_inner ( @x, $k, $pos_neg_i where * == i|-i ) {
    my @exp := ( $pos_neg_i * tau / +@x * $k ) «*« @x.keys;
    return sum @x »*« 𝑒 «**« @exp;
}
sub dft   ( @x ) { return @x.keys.map: { ft_inner( @x, $_, -i )       } }
sub idft  ( @x ) { return @x.keys.map: { ft_inner( @x, $_,  i ) / +@x } }
sub clean ( @x ) { @x».round(1e-12)».narrow }

my @tests = ( 1, 2-i, -i, -1+2i     ),
            ( 2,   3,  5,     7, 11 ),
;
for @tests -> @x {
    my @x_dft  =  dft(@x);
    my @x_idft = idft(@x_dft);

    say .key.fmt('%6s:'), .value.&clean.fmt('%5s', ', ') for :@x, :@x_dft, :@x_idft;
    say '';
    warn "Round-trip failed" unless ( clean(@x) Z== clean(@x_idft) ).all;
}
#---------------------------------------------- 277 display-a-linear-combination
sub linear-combination(@coeff) {
    (@coeff Z=> map { "e($_)" }, 1 .. *)
    .grep(+*.key)
    .map({ .key ~ '*' ~ .value })
    .join(' + ')
    .subst('+ -', '- ', :g)
    .subst(/<|w>1\*/, '', :g)
        || '0'
}

say linear-combination($_) for
[1, 2, 3],
[0, 1, 2, 3],
[1, 0, 3, 4],
[1, 2, 0],
[0, 0, 0],
[0],
[1, 1, 1],
[-1, -1, -1],
[-1, -2, 0, -3],
[-1 ]
;
#-------------------------------------- 278 display-an-outline-as-a-nested-table
my $outline = q:to/END/;
    Display an outline as a nested table.
        Parse the outline to a tree,
            measuring the indent of each line,
            translating the indentation to a nested structure,
            and padding the tree to even depth.
        count the leaves descending from each node,
            defining the width of a leaf as 1,
            and the width of a parent node as a sum.
                (The sum of the widths of its children)
                Propagating the sums upward as necessary.
        and write out a table with 'colspan' values
            either as a wiki table,
            or as HTML.
        Optionally add color to the nodes.
    END

# Import outline paragraph into native data structure
sub import (Str $trees, $level = '  ') {
    my $forest;
    my $last = -Inf;

    for $trees.lines -> $branch {
        $branch ~~ / ($($level))* /;
        my $this = +$0;
        $forest ~= do {
            given $this cmp $last {
                when More { "\['{esc $branch.trim}', " }
                when Same { "'{esc $branch.trim}', " }
                when Less { "{']' x $last - $this}, '{esc $branch.trim}', " }
            }
        }
        $last = $this;
    }

    sub esc { $^s.subst( /(<['\\]>)/, -> $/ { "\\$0" }, :g) }

    $forest ~= ']' x 1 + $last;
    use MONKEY-SEE-NO-EVAL;
    $forest.EVAL;
}

my @AoA = import $outline, '    ';
my @layout;

# Collect information about node depth, position and children
{
    my @width = 0;
    my $depth = -1;
    @AoA.&insert;

    multi insert ($item) {
        @width[*-1]++;
        @layout.push: { :depth($depth.clone), :id(@width[*-1].clone), :text($item) };
    }

    multi insert (@array) {
        @width.push: @width[*-1] * 10;
        ++$depth;
        @array.map: &insert;
        --$depth;
        @width.pop;
    }
}

my $max-depth = @layout.max( *.<depth> )<depth>;

# Pad ragged nodes
for (^$max-depth) -> $d {
    my @nodes = @layout.grep( *.<depth> == $d );
    for @nodes.sort( +*.<id> ) -> $n {
        unless @layout.first( *.<id> == $n<id> ~ 1 ) {
            @layout.push: { :depth($n<depth> + 1), :id($n<id> *10 + 1), :text('') };
        }
    }
}

# Calculate spans (child nodes)
for (0..$max-depth).reverse -> $d {
    my @nodes = @layout.grep( *.<depth> == $d );
    for @nodes.sort( +*.<id> ) -> $n {
        my @span = @layout.grep: {.<depth> == $d + 1 && .<id>.starts-with: $n<id> };
        $n<span> = ( sum @span.map( { .<span> // 0} )) || +@span || 1;
    }
}

# Programatically assign colors
for (0..$max-depth) -> $d {
    my @nodes = @layout.grep( *.<depth> == $d );
    my $incr = 1 / (1 + @nodes);
    for @nodes.sort( +*.<id> ) -> $n {
        my $color = $d > 1 ??
        @layout.first( *.<id> eq $n<id>.chop )<color> !!
        "style=\"background: #" ~ hsv2rgb( ++$ * $incr, .1, 1) ~ '" ';
        $n<color> = $n<text> ?? $color !! '';
    }
}

# Generate wikitable
say '{| class="wikitable" style="text-align: center;"' ~ "\n" ~
(join "\n|-\n", (0..$max-depth).map: -> $d {
    my @nodes = @layout.grep( *.<depth> == $d );
    (join "\n", @nodes.sort( +*.<id> ).map( -> $node {
        '| ' ~
        ($node<color> // '' ) ~
        ($node<span> > 1 ?? "colspan=$node<span>" !! '' ) ~
        ' | ' ~ $node<text> }
    ))
}) ~ "\n|}";

say "\n\nSometimes it makes more sense to display an outline as...
well... as an outline, rather than as a table." ~ Q|¯\_(ツ)_/¯| ~ "\n";

{ ## Outline - Ordered List #######
    my @type = <upper-roman upper-latin decimal lower-latin lower-roman>;
    my $depth = 0;

    multi ol ($item) { "\<li>$item\n" }

    multi ol (@array) {
        my $li = $depth ?? "</li>" !! '';
        $depth++;
        my $list = "<ol style=\"list-style: {@type[$depth - 1]};\">\n" ~
        ( @array.map( &ol ).join ) ~ "</ol>$li\n";
        $depth--;
        $list
    }

    say "<div style=\"background: #fee;\">\n" ~ @AoA.&ol ~ "</div>";
}

sub hsv2rgb ( $h, $s, $v ){
    my $c = $v * $s;
    my $x = $c * (1 - abs( (($h*6) % 2) - 1 ) );
    my $m = $v - $c;
    my ($r, $g, $b) = do given $h {
        when   0..^(1/6) { $c, $x, 0 }
        when 1/6..^(1/3) { $x, $c, 0 }
        when 1/3..^(1/2) { 0, $c, $x }
        when 1/2..^(2/3) { 0, $x, $c }
        when 2/3..^(5/6) { $x, 0, $c }
        when 5/6..1      { $c, 0, $x }
    }
    ( $r, $g, $b ).map( ((*+$m) * 255).Int)».base(16).join
}
#---------------------------------------------------- 279 distinct-power-numbers
put squish sort [X**] (2..5) xx 2;
#---------------------------------------------- 280 diversity-prediction-theorem
sub diversity-calc($truth, @pred) {
    my $ae = avg-error($truth, @pred); # average individual error
    my $cp = ([+] @pred)/+@pred;       # collective prediction
    my $ce = ($cp - $truth)**2;        # collective error
    my $pd = avg-error($cp, @pred);    # prediction diversity
    return $ae, $ce, $pd;
}

sub avg-error ($m, @v) { ([+] (@v X- $m) X**2) / +@v }

sub diversity-format (@stats) {
    gather {
        for <average-error crowd-error diversity> Z @stats -> ($label,$value) {
            take $label.fmt("%13s") ~ ':' ~ $value.fmt("%7.3f");
        }
    }
}

.say for diversity-format diversity-calc(49, <48 47 51>);
.say for diversity-format diversity-calc(49, <48 47 51 42>);
#--------------------- 281 divide-a-rectangle-into-a-number-of-unequal-triangles
# 20220123 Raku programming solution

# Proof :
#
#    H-----------A---------B-------C-----D---E
#    |                                       |
#    |                                       |
#    |                                       |
#    O---------------------------------------L
#
#    ▲OEL is unique as its area is the sum of the rest.
#
#    and also in terms of area ▲OHA > ▲OAB > ... > ▲ODE


sub UnequalDivider (\L,\H,\N where N > 2) {

   my \sum = $ = 0 ; my \part = $ = 0 ; my @sequence = (N^...1) ;

   loop {                                               #   if  ▲OHA ~ ▲OEL
      sum  = @sequence.sum;                             #   increase 1st term
      @sequence[0]*L*L/sum == H*H ?? (@sequence[0] +=1) !! last
   }

   (  [ (0,0), (L,H), (L,0) ],  ).Array.append: @sequence.map: -> \chunk {
      [ (0,0), (L*part/sum,H), (L*(part+=chunk)/sum,H) ] ;
   }
}

.say for UnequalDivider(1000,500,5);
#------------------------------------------------------------- 282 documentation
#= it's yellow
sub marine { ... }
say &marine.WHY; # "it's yellow"

#= a shaggy little thing
class Sheep {
    #= not too scary
    method roar { 'roar!' }
}
say Sheep.WHY; # "a shaggy little thing"
say Sheep.^find_method('roar').WHY; # "not too scary"
#------------------------------------------------------------------ 283 dominoes
sub domino (Str $s) { $s.comb.sort.join }

sub solve ( UInt $rows, UInt $cols, @tab ) {
    die unless @tab.elems == $rows*$cols;
    die unless @tab.elems %% 2;

    my @orientations = 'A' xx @tab.elems; # [A]vailable,[R]ight,[D]own,[L]eft,[U]p

    my SetHash $hand .= new: map &domino, [X~] @tab.unique xx 2;

    return gather {
        my sub place_domino_at_first_available_after ( UInt $pos_last = 0 ) {
            my $p1 = $pos_last + @orientations.skip($pos_last).first(:k, 'A');

            for (False, $p1+1    , <L R>),
                (True , $p1+$cols, <D U>) -> ($is_down, $p2, @two_letters) {

                next if $p2 > @tab.end or (!$is_down && $p2 %% $cols); # Board boundaries.

                my @two_cells := @orientations[$p1, $p2]; # Bind to candidate location

                next if @two_cells !eqv <A A>; # Both cells must be available for placement.

                my $dom = domino( @tab[$p1, $p2].join );

                $hand{$dom}-- or next;          # Take domino from hand, iff present
                @two_cells = @two_letters;      # Assign placement

                # Either the solution is complete, or we must recurse.
                if !$hand { take @orientations.clone }
                else      { place_domino_at_first_available_after($p1) }

                @two_cells = <A A>;             # Unassign placement
                $hand{$dom}++;                  # Restore domino into hand
            }
        }
        place_domino_at_first_available_after();
    }
}
sub bonus ( UInt $rows, UInt $cols ) {
    die "Both are odd, so no tiling possible" if $rows !%% 2 and $cols !%% 2;

    my $half = $rows * $cols div 2;

    my sub T ($N) { map { ( pi * $_/($N+1) ).cos² * 4 }, 1..($N/2).ceiling }

    my $arrangements = [*] T($rows) X+ T($cols);
    my $flips        =     2 ** $half;
    my $permutations = [*] 1 .. $half;
    my $product      = [*] ($arrangements, $flips, $permutations);
    return :$arrangements, :$flips, :$permutations, :$product;
}
my @tests =
    (7, 8, '05132231055052464303662006235126113002452143346664515414'),
    (7, 8, '64220650162341432102355113505610426040114420536366525334'),
    (3, 4, '001102221201'),
;
sub solution_works ( UInt $rows, UInt $cols, @tab, @sol --> Bool ) {
    die unless @sol.all eq <L R U D>.any;
    my BagHash $b .= new;
    for @sol.keys -> $p1 {
        given @sol[$p1] {
            when 'L' { my $p2 = $p1+1;     die unless @sol[$p2] eq 'R'; $b{ domino( @tab[$p1,$p2].join ) }++; }
            when 'D' { my $p2 = $p1+$cols; die unless @sol[$p2] eq 'U'; $b{ domino( @tab[$p1,$p2].join ) }++; }
        }
    }
    die unless $b.values.max == 1 and $b.elems == $rows * $cols / 2;
    return True;
}
for @tests -> ( $rows, $cols, $flat_table ) {
    my @solutions = solve($rows, $cols, $flat_table.comb);
    say 'Solutions found: ', +@solutions;

    # Confirm that every solution is valid.
    solution_works($rows, $cols, $flat_table.comb, $_) or die for @solutions;

    # Print first solution
    say .join.trans( [<L R D U>] => [<╼ ╾ ╽ ╿>]) for @solutions[0].batch($cols);

    if ++$ == 1 {
        say 'Bonus:';
        say .value.fmt("%45d "), .key.tclc for bonus($rows, $cols);
        say '';
    }
}
#------------------------------------------------------------- 284 doomsday-rule
my @dow = < Sunday Monday Tuesday Wednesday Thursday Friday Saturday >;

my %doomsday = False => [3,7,7,4,2,6,4,1,5,3,7,5], True => [4,1,7,4,2,6,4,1,5,3,7,5];

sub conway ($date) {
    my ($year, $month, $day) = $date.comb(/\d+/)».Int;
    my $is-leap = ($year %% 4) && (($year % 100) || ($year %% 400));

    my $c = $year div 100;
    my $s = ($year % 100) div 12;
    my $t = ($year % 100)   % 12;
    my $a = ( 5 * ($c % 4) + 2 ) % 7;
    my $b = ( $s + $t + ($t div 4) + $a ) % 7;

    ($b + $day - %doomsday{$is-leap}[$month - 1] + 7) % 7
}


for < 1800-01-06 1875-03-29 1915-12-07 1970-12-23 2043-05-14 2077-02-12 2101-04-02 >
{
    say "Conway  - $_ is a: ", @dow[.&conway];
    # Or, we could use the method built into the compiler...
    say "Builtin - $_ is a: ", @dow[Date.new($_).day-of-week];
    say '';
}
#--------------------------------------------------------------- 285 dot-product
sub infix:<·> { [+] @^a »*« @^b }

say (1, 3, 5)·(4, -2, 1);
#-------------------------------------------------------- 286 double-twin-primes
sub dt { $^p, $p+2, $p+6, $p+8 }
.&dt.say for (^1000).grep: { all .&dt».is-prime };
#--------------------------------------------- 287 doubly-linked-list-definition
role DLElem[::T] {
    has DLElem[T] $.prev is rw;
    has DLElem[T] $.next is rw;
    has T $.payload = T;

    method pre-insert(T $payload) {
        die "Can't insert before beginning" unless $!prev;
        my $elem = ::?CLASS.new(:$payload);
        $!prev.next = $elem;
        $elem.prev = $!prev;
        $elem.next = self;
        $!prev = $elem;
        $elem;
    }

    method post-insert(T $payload) {
        die "Can't insert after end" unless $!next;
        my $elem = ::?CLASS.new(:$payload);
        $!next.prev = $elem;
        $elem.next = $!next;
        $elem.prev = self;
        $!next = $elem;
        $elem;
    }

    method delete {
        die "Can't delete a sentinel" unless $!prev and $!next;
        $!next.prev = $!prev;
        $!prev.next = $!next;	# conveniently returns next element
    }
}

role DLList[::DLE] {
    has DLE $.first;
    has DLE $.last;

    submethod BUILD {
        $!first = DLE.new;
        $!last = DLE.new;
        $!first.next = $!last;
        $!last.prev = $!first;
    }

    method list { ($!first.next, *.next ...^ !*.next).map: *.payload }
    method reverse { ($!last.prev, *.prev ...^ !*.prev).map: *.payload }
}

class DLElem_Int does DLElem[Int] {}
class DLList_Int does DLList[DLElem_Int] {}

my $dll = DLList_Int.new;

$dll.first.post-insert(1).post-insert(2).post-insert(3);
$dll.first.post-insert(0);

$dll.last.pre-insert(41).pre-insert(40).prev.delete;  # (deletes 3)
$dll.last.pre-insert(42);

say $dll.list;     # 0 1 2 40 41 42
say $dll.reverse;  # 42 41 40 2 1 0

#-------------------------------------- 288 doubly-linked-list-element-insertion
role DLElem[::T] {
    has DLElem[T] $.prev is rw;
    has DLElem[T] $.next is rw;
    has T $.payload = T;

    method pre-insert(T $payload) {
        die "Can't insert before beginning" unless $!prev;
        my $elem = ::?CLASS.new(:$payload);
        $!prev.next = $elem;
        $elem.prev = $!prev;
        $elem.next = self;
        $!prev = $elem;
        $elem;
    }

    method post-insert(T $payload) {
        die "Can't insert after end" unless $!next;
        my $elem = ::?CLASS.new(:$payload);
        $!next.prev = $elem;
        $elem.next = $!next;
        $elem.prev = self;
        $!next = $elem;
        $elem;
    }

    method delete {
        die "Can't delete a sentinel" unless $!prev and $!next;
        $!next.prev = $!prev;
        $!prev.next = $!next;   # conveniently returns next element
    }
}

role DLList[::DLE] {
    has DLE $.first;
    has DLE $.last;

    submethod BUILD {
	$!first = DLE.new;
	$!last = DLE.new;
	$!first.next = $!last;
	$!last.prev = $!first;
    }

    method list { ($!first.next, *.next ...^ !*.next).map: *.payload }
    method reverse { ($!last.prev, *.prev ...^ !*.prev).map: *.payload }
}

class DLElem_Str does DLElem[Str] {}
class DLList_Str does DLList[DLElem_Str] {}

my $sdll = DLList_Str.new;
my $b = $sdll.first.post-insert('A').post-insert('B');
$b.pre-insert('C');
say $sdll.list;  # A C B
#------------------------------------------------------------- 289 draw-a-cuboid
sub braille-graphics (%a) {
    my ($ylo, $yhi, $xlo, $xhi);
    for %a.keys -> $y {
   $ylo min= +$y; $yhi max= +$y;
   for %a{$y}.keys -> $x {
       $xlo min= +$x; $xhi max= +$x;
   }
    }

    for $ylo, $ylo + 4 ...^ * > $yhi -> \y {
   for $xlo, $xlo + 2 ...^ * > $xhi -> \x {
       my $cell = 0x2800;
       $cell += 1   if %a{y + 0}{x + 0};
       $cell += 2   if %a{y + 1}{x + 0};
       $cell += 4   if %a{y + 2}{x + 0};
       $cell += 8   if %a{y + 0}{x + 1};
       $cell += 16  if %a{y + 1}{x + 1};
       $cell += 32  if %a{y + 2}{x + 1};
       $cell += 64  if %a{y + 3}{x + 0};
       $cell += 128 if %a{y + 3}{x + 1};
       print chr($cell);
   }
   print "\n";
    }
}

sub cuboid ( [$x, $y, $z] ) {
    my \x = $x * 4;
    my \y = $y * 4;
    my \z = $z * 2;
    my %t;
    sub horz ($X, $Y) { %t{$Y     }{$X + $_} = True for 0 .. x }
    sub vert ($X, $Y) { %t{$Y + $_}{$X     } = True for 0 .. y }
    sub diag ($X, $Y) { %t{$Y - $_}{$X + $_} = True for 0 .. z }

    horz(0, z); horz(z, 0); horz(  0, z+y);
    vert(0, z); vert(x, z); vert(z+x,   0);
    diag(0, z); diag(x, z); diag(  x, z+y);

    say "[$x, $y, $z]";
    braille-graphics %t;
}

cuboid $_ for [2,3,4], [3,4,2], [4,2,3], [1,1,1], [8,1,1], [1,8,1], [1,1,8];
#---------------------------------------------------- 290 dynamic-variable-names
our $our-var = 'The our var';
my  $my-var  = 'The my var';

my $name  = prompt 'Variable name: ';
my $value = $::('name'); # use the right sigil, etc

put qq/Var ($name) starts with value ｢$value｣/;

$::('name') = 137;

put qq/Var ($name) ends with value ｢{$::('name')}｣/;
#------------------------------------------------------------------- 291 eertree
my $str = "eertree";
my @pal = ();
my ($strrev,$strpal);

for (1 .. $str.chars) -> $n {
   for (1 .. $str.chars) -> $m {
      $strrev = "";
      $strpal = $str.substr($n-1, $m);
      if ($strpal ne "") {
         for ($strpal.chars ... 1) -> $p {
            $strrev ~= $strpal.substr($p-1,1);
         }
         ($strpal eq $strrev) and @pal.push($strpal);
      }
   }
}

say @pal.unique;
#------------------------------------------------------- 292 egyptian-division-1
sub egyptian-divmod (Real $dividend is copy where * >= 0, Real $divisor where * > 0) {
    my $accumulator = 0;
    ([1, $divisor], { [.[0] + .[0], .[1] + .[1]] } … ^ *.[1] > $dividend)
      .reverse.map: { $dividend -= .[1], $accumulator += .[0] if $dividend >= .[1] }
    $accumulator, $dividend;
}

#TESTING
for 580,34, 578,34, 7532795332300578,235117 -> $n, $d {
    printf "%s divmod %s = %s remainder %s\n",
        $n, $d, |egyptian-divmod( $n, $d )
}
#------------------------------------------------------- 293 egyptian-division-2
my (\𓄤, \𓄊, \𓎆, \𓄰) = (0, 1, 10, 10e7);
sub infix:<𓂽> { $^𓃠 + $^𓃟 }
sub infix:<𓂻> { $^𓃲 - $^𓆊 }
sub infix:<𓈝> { $^𓃕 < $^𓃢 }
sub 𓁶 (Int \𓆉) {
    my \𓁢 = [«'' 𓏺 𓏻 𓏼 𓏽 𓏾 𓏿 𓐀 𓐁 𓐂»], [«'' 𓎆 𓎏 𓎐 𓎑 𓎊 𓎋 𓎌 𓎍 𓎎»],
      [«'' 𓍢 𓍣 𓍤 𓍥 𓍦 𓍧 𓍨 𓍩 𓍪»], [«'' 𓆼 𓆽 𓆾 𓆿 𓇀 𓇁 𓇂 𓇃 𓇄»],
      [«'' 𓂭 𓂮 𓂯 𓂰 𓂱 𓂲 𓂳 𓂴 𓂵»], ['𓆐' Xx ^𓎆], ['𓁨' Xx ^𓎆];
    ([~] 𓆉.polymod( 𓎆 xx * ).map( { 𓁢[$++;$_] } ).reverse) || '𓄤'
}

sub infix:<𓅓> (Int $𓂀 is copy where 𓄤 𓂻 𓄊 𓈝 * 𓈝 𓄰, Int \𓌳 where 𓄤 𓈝 * 𓈝 𓄰) {
    my $𓎦 = 𓄤;
    ([𓄊,𓌳], { [.[𓄤] 𓂽 .[𓄤], .[𓄊] 𓂽 .[𓄊]] } … ^$𓂀 𓈝 *.[𓄊])
      .reverse.map: { $𓂀 𓂻= .[𓄊], $𓎦 𓂽= .[𓄤] if .[𓄊] 𓈝 ($𓂀 𓂽 𓄊) }
    $𓎦, $𓂀;
}

#TESTING
for 580,34, 578,34, 2300578,23517 -> \𓃾, \𓆙 {
    printf "%s divmod %s = %s remainder %s =OR= %s 𓅓 %s = %s remainder %s\n",
        𓃾, 𓆙, |(𓃾 𓅓 𓆙), (𓃾, 𓆙, |(𓃾 𓅓 𓆙))».&𓁶;
}
#--------------------------------------------------------- 294 eisenstein-primes
my \ω = exp 2i × π/3;

sub norm    (@p) { @p[0]² - @p[0]×@p[1] + @p[1]² }
sub display (@p) { (@p[0] + ω×@p[1]).reals».fmt('%+8.4f').join ~ 'i' }

my @E = gather (-10..10 X -10..10).map: -> (\a,\b) {
    take (a,b) if 0 == a|b || a == b ?? (.is-prime and 2 == $_ mod 3 given (a,b)».abs.max) !! norm((a,b)).is-prime
}

(@E.sort: *.&norm).head(100).map(*.&display).batch(4).join("\n").say;
#-------------------------------------------------- 295 ekg-sequence-convergence
sub infix:<shares-divisors-with> { ($^a gcd $^b) > 1 }

sub next-EKG ( *@s ) {
    return first {
        @s ∌ $_  and  @s.tail shares-divisors-with $_
    }, 2..*;
}

sub EKG ( Int $start ) {  1, $start, &next-EKG … *  }

sub converge-at ( @ints ) {
    my @ekgs = @ints.map: &EKG;

    return (2 .. *).first: -> $i {
        [==]  @ekgs.map(     *.[$i]     ) and
        [===] @ekgs.map( *.head($i).Set )
    }
}

say "EKG($_): ", .&EKG.head(10) for 2, 5, 7, 9, 10;

for [5, 7], [2, 5, 7, 9, 10] -> @ints {
    say "EKGs of (@ints[]) converge at term {$_+1}" with converge-at(@ints);
}
#--------------------------------------------------- 296 element-wise-operations
my @a =
    [1,2,3],
    [4,5,6],
    [7,8,9];

sub msay(@x) {
    say .map( { ($_%1) ?? $_.nude.join('/') !! $_ } ).join(' ') for @x;
    say '';
}

msay @a «+» @a;
msay @a «-» @a;
msay @a «*» @a;
msay @a «/» @a;
msay @a «+» [1,2,3];
msay @a «-» [1,2,3];
msay @a «*» [1,2,3];
msay @a «/» [1,2,3];
msay @a «+» 2;
msay @a «-» 2;
msay @a «*» 2;
msay @a «/» 2;

# In addition to calling the underlying higher-order functions directly, it's possible to name a function.

sub infix:<M+> (\l,\r) { l <<+>> r }

msay @a M+ @a;
msay @a M+ [1,2,3];
msay @a M+ 2;
#--------------------- 297 elementary-cellular-automaton-random-number-generator
class Automaton {
    has $.rule;
    has @.cells handles <AT-POS>;
    has @.code = $!rule.fmt('%08b').flip.comb».Int;

    method gist { "|{ @!cells.map({+$_ ?? '#' !! ' '}).join }|" }

    method succ {
        self.new: :$!rule, :@!code, :cells(
            @!code[
                    4 «*« @!cells.rotate(-1)
                »+« 2 «*« @!cells
                »+«       @!cells.rotate(1)
            ]
        )
    }
}

my Automaton $a .= new: :rule(30), :cells( flat 1, 0 xx 100 );

say :2[$a++[0] xx 8] xx 10;
#--------------------------------------------- 298 elementary-cellular-automaton
class Automaton {
    has $.rule;
    has @.cells;
    has @.code = $!rule.fmt('%08b').flip.comb».Int;

    method gist { "|{ @!cells.map({+$_ ?? '#' !! ' '}).join }|" }

    method succ {
        self.new: :$!rule, :@!code, :cells(
            @!code[
                    4 «*« @!cells.rotate(-1)
                »+« 2 «*« @!cells
                »+«       @!cells.rotate(1)
            ]
        )
    }
}

my @padding = 0 xx 10;

my Automaton $a .= new:
    :rule(30),
    :cells(flat @padding, 1, @padding);

say $a++ for ^10;
#------------------------------------------------- 299 elliptic-curve-arithmetic
module EC {
  our ($A, $B) = (0, 7);

  our class Point {
    has ($.x, $.y);
    multi method new(
        $x, $y where $y**2 == $x**3 + $A*$x + $B
        ) { samewith :$x, :$y }
    multi method gist { "EC Point at x=$.x, y=$.y" }
    multi method gist(::?CLASS:U:) { 'Point at horizon' }
  }

  multi prefix:<->(Point $p) is export { Point.new: x => $p.x, y => -$p.y }
  multi prefix:<->(Point:U) is export { Point }
  multi infix:<->(Point $a, Point $b) is export { $a + -$b }

  multi infix:<+>(Point:U $, Point $p) is export { $p }
  multi infix:<+>(Point $p, Point:U) is export { $p }

  multi infix:<*>(Point $u, Int $n) is export { $n * $u }
  multi infix:<*>(Int $n, Point:U) is export { Point }
  multi infix:<*>(0, Point) is export { Point }
  multi infix:<*>(1, Point $p) is export { $p }
  multi infix:<*>(2, Point $p) is export {
    my $l = (3*$p.x**2 + $A) / (2 *$p.y);
    my $y = $l*($p.x - my $x = $l**2 - 2*$p.x) - $p.y;
    $p.new(:$x, :$y);
  }
  multi infix:<*>(Int $n where $n > 2, Point $p) is export {
    2 * ($n div 2 * $p) + $n % 2 * $p;
  }

  multi infix:<+>(Point $p, Point $q) is export {
    if $p.x ~~ $q.x {
      return $p.y ~~ $q.y ?? 2 * $p !! Point;
    }
    else {
      my $slope = ($q.y - $p.y) / ($q.x - $p.x);
      my $y = $slope*($p.x - my $x = $slope**2 - $p.x - $q.x) - $p.y;
      return $p.new(:$x, :$y);
    }
  }

}

import EC;

say my $p = EC::Point.new: x => $_, y => sqrt(abs($_**3 + $EC::A*$_ + $EC::B)) given 1;
say my $q = EC::Point.new: x => $_, y => sqrt(abs($_**3 + $EC::A*$_ + $EC::B)) given 2;
say my $s = $p + $q;

use Test;
is abs(($p.x - $q.x)*(-$s.y - $q.y) - ($p.y - $q.y)*($s.x - $q.x)), 0, "S, P and Q are aligned";
#-------------------------------------------------------------- 300 empty-string
my $s = '';
say 'String is empty' unless $s;
say 'String is not empty' if $s;
#----------------------------------------------------------- 301 engel-expansion
sub to-engel ($rat is copy) { do while $rat { my $a = ceiling 1 / $rat; $rat = $rat × $a - 1; $a } }

sub from-engel (@expanded) { sum [\×] @expanded.map: { FatRat.new: 1, $_ } }

for #  low precision 𝜋, 𝑒, √2 and 1.5 to a power
    3.14159265358979, 2.71828182845904, 1.414213562373095, 1.5 ** 5,

    # high precision 𝜋, 𝑒, and √2 and 1.5 to a power
    3.1415926535897932384626433832795028841971693993751058209749445923078164062862089986280348253421170679821480865132823066470938446095505822317253594081284811174502841027019385211.FatRat,

    2.71828182845904523536028747135266249775724709369995957496696762772407663035354759457138217852516642743.FatRat,

    1.4142135623730950488016887242096980785696718753769480731766797379907324784621070388503875343276415727350138462309122970249248360558507372126441214970999358314132226659275055927558.FatRat,

    1.5 ** 8
  -> $rat {
    say "Rational number: $rat";
    my @expanded = $rat.&to-engel;
    put "Engel expansion: " ~ @expanded.head(30);
    say " Converted back: " ~ @expanded.&from-engel;
    put '';
}
#----------------------------------------------------------------- 302 entropy-2
use MONKEY-TYPING;
augment class Bag {
    method entropy {
	[+] map -> \p { - p * log p },
	self.values »/» +self;
    }
}

say '1223334444'.comb.Bag.entropy / log 2;
#-------------------------------------------------------- 303 entropy-narcissist
say log(2) R/ [+] map -> \p { p * -log p }, $_.comb.Bag.values >>/>> +$_
    given slurp($*PROGRAM-NAME).comb
#------------------------------------------------------- 304 equilibrium-index-1
sub equilibrium_index(@list) {
    my ($left,$right) = 0, [+] @list;

    gather for @list.kv -> $i, $x {
        $right -= $x;
        take $i if $left == $right;
        $left += $x;
    }
}

my @list = -7, 1, 5, 2, -4, 3, 0;
.say for equilibrium_index(@list).grep(/\d/);
#------------------------------------------------------- 305 equilibrium-index-5
sub eq_index ( *@list ) {
    my $sum = 0;

    my %h = @list.keys.classify: {
        $sum += @list[$_];
        $sum * 2 - @list[$_];
    };

    return %h{$sum} // [];
}

say eq_index < -7  1  5  2 -4  3  0 >; # 3 6
say eq_index <  2  4  6             >; # (no eq point)
say eq_index <  2  9  2             >; # 1
say eq_index <  1 -1  1 -1  1 -1  1 >; # 0 1 2 3 4 5 6
#------------------------------------------------------- 306 erd-s-woods-numbers
# 20220308 Raku programming solution

sub ew (\n) {

   my @primes = (^n).grep: *.is-prime;

   # rosettacode.org/wiki/Horner%27s_rule_for_polynomial_evaluation#Raku
   my @divs = (^n).map: -> \p { ([o] map { p%%$_.Int + 2 * * }, @primes)(0) }

   my @partitions = [ 0, 0, 2**@primes.elems - 1 ] , ;

   sub ort(\x) { (@divs[x] +| @divs[n -x]).base(2).flip.index(1) }

   for ((n^...1).sort: *.&ort).reverse {
      my \newPartitions = @ = ();
      my (\factors,\otherFactors) = @divs[$_, n-$_];

      for @partitions -> \p {
         my (\setA, \setB, \rPrimes) = p[0..2];

         if (factors +& setA) or (otherFactors +& setB) {
            newPartitions.push: p and next
         }
         for (factors +& rPrimes).base(2).flip.comb.kv -> \k,\v {
            if (v == 1) {
               my \w = 1 +< k;
               newPartitions.push: [ setA +^ w, setB, rPrimes +^ w ]
            }
         }
         for (otherFactors +& rPrimes).base(2).flip.comb.kv -> \k,\v {
            if (v == 1) {
               my \w = 1 +< k;
               newPartitions.push: [ setA, setB +^ w, rPrimes +^ w ]
            }
         }
      }
      @partitions = newPartitions
   }

   my \result = $ = -1;
   for @partitions -> \p {
      my ($px,$py,$x,$y) = p[0],p[1],1,1;
      for @primes -> $p {
         $px % 2 and $x *= $p;
         $py % 2 and $y *= $p;
         ($px,$py) >>div=>> 2
      }
      my \newresult = ((n * expmod($x, -1, $y)) % $y) * $x - n;
      result = result == -1 ?? newresult !! min(result, newresult)
   }
   return result
}

say "The first 20 Erdős–Woods numbers and their minimum interval start values are:";
for (16..116) { if (my $ew = ew $_) > 0 { printf "%3d -> %d\n",$_,$ew } } ;
#------------------------------------------------ 307 ethiopian-multiplication-1
sub halve  (Int $n is rw)    { $n div= 2 }
sub double (Int $n is rw)    { $n *= 2 }
sub even   (Int $n --> Bool) { $n %% 2 }

sub ethiopic-mult (Int $a is copy, Int $b is copy --> Int) {
    my Int $r = 0;
    while $a {
    even $a or $r += $b;
    halve $a;
    double $b;
    }
    return $r;
}

say ethiopic-mult(17,34);
#------------------------------------------------ 308 ethiopian-multiplication-2
sub ethiopic-mult {
    my &halve  = * div= 2;
    my &double = * *= 2;
    my &even   = * %% 2;

    my ($a,$b) = @_;
    my $r;
    loop {
        even  $a or $r += $b;
        halve $a or return $r;
        double $b;
    }
}

say ethiopic-mult(17,34);
#------------------------------------------------ 309 ethiopian-multiplication-3
sub halve  { $^n div 2 }
sub double { $^n * 2   }
sub even   { $^n %% 2  }

sub ethiopic-mult ($a, $b) {
    [+] ($b, &double ... *)
        Z*
        ($a, &halve ... 0).map: { not even $^n }
}

say ethiopic-mult(17,34);
#---------------------------------------------------------- 310 euclidean-rhythm
# 20240208 Raku programming solution

say sub ($k is copy, $n is copy) {
   my @s = [ [1] xx $k ].append: [0] xx ($n - $k);
   my $z = my $d = $n - $k;
   ($k, $n) = ($d, $k).minmax.bounds;

   while $z > 0 || $k > 1 {
      ^$k .map: { @s[$_].append: @s.splice(*-1) }
      ($z, $d) = ($z, $n) X- $k;
      ($k, $n) = ($d, $k).minmax.bounds;
   }
   return [~] @s>>.List.flat;
}(5, 13);
#-------------------------------------------------------------- 311 euler-method
sub euler ( &f, $y0, $a, $b, $h ) {
    my $y = $y0;
    my @t_y;
    for $a, * + $h ... * > $b -> $t {
        @t_y[$t] = $y;
        $y += $h × f( $t, $y );
    }
    @t_y
}

constant COOLING_RATE = 0.07;
constant AMBIENT_TEMP =   20;
constant INITIAL_TEMP =  100;
constant INITIAL_TIME =    0;
constant FINAL_TIME   =  100;

sub f ( $time, $temp ) {
    -COOLING_RATE × ( $temp - AMBIENT_TEMP )
}

my @e;
@e[$_] = euler( &f, INITIAL_TEMP, INITIAL_TIME, FINAL_TIME, $_ ) for 2, 5, 10;

say 'Time Analytic   Step2   Step5  Step10     Err2     Err5    Err10';

for INITIAL_TIME, * + 10 ... * >= FINAL_TIME -> $t {

    my $exact = AMBIENT_TEMP + (INITIAL_TEMP - AMBIENT_TEMP)
                              × (-COOLING_RATE × $t).exp;

    my $err = sub { @^a.map: { 100 × ($_ - $exact).abs / $exact } }

    my ( $a, $b, $c ) = map { @e[$_][$t] }, 2, 5, 10;

    say $t.fmt('%4d '), ( $exact, $a, $b, $c )».fmt(' %7.3f'),
                            $err([$a, $b, $c])».fmt(' %7.3f%%');
}
#------------------------------------------------- 312 eulers-constant-0.5772...
# 20211124 Raku programming solution

sub gamma (\N where N > 1) { # Vacca series https://w.wiki/4ybp
                             # convert terms to FatRat for arbitrary precision
   return  (1/2 - 1/3) + [+] (2..N).race.map: -> \n {

      my ($power, $sign, $term) = 2**n, -1;

      for ($power..^2*$power) { $term += ($sign = -$sign) / $_ }

      n*$term
   }
}

say gamma 23 ;
#----------------------------------------------------------- 313 eulers-identity
sub infix:<⁢> is tighter(&infix:<**>) { $^a * $^b };

say 'e**i⁢π + 1 ≅ 0 : ', e**i⁢π + 1 ≅ 0;
say 'Error: ', e**i⁢π + 1;
#------------------------------------------- 314 eulers-sum-of-powers-conjecture
constant MAX = 250;

my  %po5{Int};
my %sum2{Int};

for 1..MAX -> \i {
    %po5{i⁵} = i;
    for 1..MAX -> \j {
        %sum2{i⁵ + j⁵} = i, j;
    }
}

%po5.keys.sort.race.map: -> \p {
    for %sum2.keys.sort -> \s {
        if p > s and %sum2{p - s} {
            say ((sort |%sum2{s},|%sum2{p - s}) X~ '⁵').join(' + '), " = %po5{p}", "⁵" and exit
        }
    }
}
#------------------------------------------ 315 evaluate-binomial-coefficients-1
say combinations(5, 3).elems;
#------------------------------------------ 316 evaluate-binomial-coefficients-2
sub infix:<choose> { [*] ($^n ... 0) Z/ 1 .. $^p }
say 5 choose 3;
#------ 317 even-numbers-which-cannot-be-expressed-as-the-sum-of-two-twin-primes
my $threshold = 10000;

my @twins = unique flat (3..$threshold).grep(&is-prime).map: { $_, $_+2 if ($_+2).is-prime };
my @sums;

map {++@sums[$_]}, (@twins X+ @twins);
display 'Non twin prime sums:', @sums;

map {++@sums[$_]}, flat 2, (1 X+ @twins);
display "\nNon twin prime sums (including 1):", @sums;

sub display ($msg, @p) {
    put "$msg\n" ~ @p[^$threshold].kv.map(-> $k, $v { $k if ($k %% 2) && !$v })\
    .skip(1).batch(10)».fmt("%4d").join: "\n"
}
#--------------------------------------------------------------- 318 even-or-odd
subset Even of Int where * %% 2;
subset Odd of Int where * % 2;

say 1 ~~ Even; # false
say 1 ~~ Odd;  # true
say 1.5 ~~ Odd # false ( 1.5 is not an Int )
#----------------------------------------- 319 exactly-three-adjacent-3-in-lists
for 1 .. 4 -> $n {

    say "\nExactly $n {$n}s, and they are consecutive:";

    say .gist, ' ', lc (.Bag{$n} == $n) && ( so .rotor($n=>-($n - 1)).grep: *.all == $n ) for
    [9,3,3,3,2,1,7,8,5],
    [5,2,9,3,3,7,8,4,1],
    [1,4,3,6,7,3,8,3,2],
    [1,2,3,4,5,6,7,8,9],
    [4,6,8,7,2,3,3,3,1],
    [3,3,3,1,2,4,5,1,3],
    [0,3,3,3,3,7,2,2,6],
    [3,3,3,3,3,4,4,4,4]
}
#-------------------------------------------------------------- 320 exceptions-1
try {
    die "Help I'm dieing!";
    CATCH {
        when X::AdHoc { note .Str.uc; say "Cough, Cough, Aiee!!" }
        default { note "Unexpected exception, $_!" }
    }
}

say "Yay. I'm alive.";

die "I'm dead.";

say "Arrgh.";

CATCH {
    default { note "No you're not."; say $_.Str; }
}
#-------------------------------------------------------------- 321 exceptions-2
sub f(){
        ENTER { note '1) f has been entered' }
        LEAVE { note '2) f has been left' }
        say '3) here be dragons';
        die '4) that happend to be deadly';
}

f();
say '5) am I alive?';

CATCH {
        when X::AdHoc { note q{6) no, I'm dead}; }
}
#--------------------- 322 exceptions-catch-an-exception-thrown-in-a-nested-call
sub foo() {
    for 0..1 -> $i {
        bar $i;
        CATCH {
            when /U0/ { say "Function foo caught exception U0" }
        }
    }
}

sub bar($i) { baz $i }

sub baz($i) { die "U$i" }

foo;
#------------------------------------------------------ 323 executable-library-1
module Hailstone {
    our sub hailstone($n) is export {
	$n, { $_ %% 2 ?? $_ div 2 !! $_ * 3 + 1 } ... 1
    }
}

sub MAIN {
    say "hailstone(27) = {.[^4]} [...] {.[*-4 .. *-1]}" given Hailstone::hailstone 27;
}
#----------------------------------------------------- 324 execute-computer-zero
my (@mem, $ip, $acc); # memory, instruction pointer, accumulator

sub load (@program) {
    die "memory exceeded" if +@program > 32;
    $ip = 0;
    $acc = 0;
    @mem = @program »%» 256;
}

sub execute (*@program) {
    load @program;
    loop {
        my $reg = @mem[$ip];
        quietly my ($inst, $data) = $reg +> 5 +& 7, $reg +& 31;
        given $inst {
            when 0 { #`{ NOP } }
            when 1 { #`{ LDA } $acc = @mem[$data] }
            when 2 { #`{ STA } @mem[$data] = $acc }
            when 3 { #`{ ADD } $acc += @mem[$data] }
            when 4 { #`{ SUB } $acc -= @mem[$data] }
            when 5 { #`{ BRZ } $ip = $data - 1 unless $acc }
            when 6 { #`{ JMP } $ip = $data - 1 }
            when 7 { #`{ STP } last }
            default { die 'Invalid instruction' }
        }
        ++$ip;
        last if $ip == 32;
    }
    $acc
}

say "2 + 2 = " ~ execute 35,100,224,2,2;
say "7 x 8 = " ~ execute 44,106,76,43,141,75,168,192,44,224,8,7,0,1;
say "Fibonacci: " ~
execute 46,79,109,78,47,77,48,145,171,80,192,46,224,1,1,0,8,1;
say "Linked list: " ~
execute 45,111,69,112,71,0,78,0,171,79,192,46,
224,32,0,28,1,0,0,0,6,0,2,26,5,20,3,30,1,22,4,24;
say "Prisoners dilemma: " ~
execute 0,0,224,0,35,157,178,35,93,174,33,127,65,194,
32,127,64,194,35,93,33,126,99,65,32,126,99,64,194,0,1,3;
#--------------------------------------------------- 325 exponentiation-operator
proto pow (Real, Int --> Real) {*}
multi pow (0,     0)         { fail '0**0 is undefined' }
multi pow ($base, UInt $exp) { [*] $base xx $exp }
multi pow ($base, $exp)  { 1 / samewith $base, -$exp }

multi infix:<**> (Real $a, Int $b) { pow $a, $b }

# Testing

say pow .75, -5;
say .75 ** -5;
#------------------------------------------------------ 326 exponentiation-order
use MONKEY-SEE-NO-EVAL;
sub demo($x) { say "  $x\t───► ", EVAL $x }

demo '5**3**2';      # show ** is right associative
demo '(5**3)**2';
demo '5**(3**2)';

demo '[**] 5,3,2';   # reduction form, show only final result
demo '[\**] 5,3,2';  # triangle reduction, show growing results

# Unicode postfix exponents are supported as well:

demo '(5³)²';
demo '5³²';
#----------- 327 exponentiation-with-infix-operators-in-or-operating-on-the-base
sub infix:<↑> is looser(&prefix:<->) { $^a ** $^b }
sub infix:<∧> is looser(&infix:<->)  { $^a ** $^b }

for
   ('Default precedence: infix exponentiation is tighter (higher) precedence than unary negation.',
     '1 + -$x**$p',   {1 + -$^a**$^b},   '1 + (-$x)**$p', {1 + (-$^a)**$^b},  '1 + (-($x)**$p)', {1 + (-($^a)**$^b)},
     '(1 + -$x)**$p', {(1 + -$^a)**$^b}, '1 + -($x**$p)', {1 + -($^a**$^b)}),

   ("\nEasily modified: custom loose infix exponentiation is looser (lower) precedence than unary negation.",
     '1 + -$x↑$p ',   {1 + -$^a↑$^b},    '1 + (-$x)↑$p ', {1 + (-$^a)↑$^b},   '1 + (-($x)↑$p) ', {1 + (-($^a)↑$^b)},
     '(1 + -$x)↑$p ', {(1 + -$^a)↑$^b},  '1 + -($x↑$p) ', {1 + -($^a↑$^b)}),

   ("\nEven more so: custom looser infix exponentiation is looser (lower) precedence than infix subtraction.",
     '1 + -$x∧$p ',   {1 + -$^a∧$^b},    '1 + (-$x)∧$p ', {1 + (-$^a)∧$^b},   '1 + (-($x)∧$p) ', {1 + (-($^a)∧$^b)},
     '(1 + -$x)∧$p ', {(1 + -$^a)∧$^b},  '1 + -($x∧$p) ', {1 + -($^a∧$^b)})
-> $case {
    my ($title, @operations) = $case<>;
    say $title;
    for -5, 5 X 2, 3 -> ($x, $p) {
        printf "x = %2d  p = %d", $x, $p;
        for @operations -> $label, &code { print " │ $label = " ~ $x.&code($p).fmt('%4d') }
        say ''
    }
}
#------------------------------------------------------ 328 extend-your-language
my &if2  = -> \a, \b, &x { my @*IF2 = ?a,?b; x }

my &if-both    = -> &x { x if @*IF2 eq (True,True)  }
my &if-first   = -> &x { x if @*IF2 eq (True,False) }
my &if-second  = -> &x { x if @*IF2 eq (False,True) }
my &if-neither = -> &x { x if @*IF2 eq (False,False)}

sub test ($a,$b) {
    $_ = "G";          # Demo correct scoping of topic.
    my $got = "o";     # Demo correct scoping of lexicals.
    my $*got = "t";    # Demo correct scoping of dynamics.

    if2 $a, $b, {
        if-both { say "$_$got$*got both" }
        if-first { say "$_$got$*got first" }
        if-second { say "$_$got$*got second" }
        if-neither { say "$_$got$*got neither" }
    }
}

say test |$_ for 1,0 X 1,0;
#------------------------------------------ 329 extended-straddling-checkerboard
# 20250709 Raku programming solution

my %WDICT = <CODE SEND ACK SUPP RV MSG GRID REQ> Z=> <κ σ α π ν μ γ ρ>;
my %SDICT = %WDICT.invert;

my @CT37w = [ # Original CT-37w checkerboard table
    ['',  'A', 'E', 'I', 'N', 'O', 'T', 'κ', '',  '',  ''],
    ['7', 'B', 'C', 'D', 'F', 'G', 'H', 'J', 'K', 'L', 'M'],
    ['8', 'P', 'Q', 'R', 'S', 'U', 'V', 'W', 'X', 'Y', 'Z'],
    ['9', ' ', '.', 'α', 'ρ', 'μ', 'ν', 'γ', 'σ', 'π', '/'],
];

my @CT37w_mod = |@CT37w[0..2], qww <9 " " . α ρ μ ν γ σ / π>; # Modified CT-37w

sub xcb-encode(Str $message, @table, Str $code = 'κ', %wdict = %WDICT --> Str) {
   my ($numericmode, $codemode, $codemodecount, @encoded) = False, False, 0;

   # Determine mode change code and digit repeats based on table
   my $nchangemode   = @table[3][10] eq '/' ?? 99 !! 98;
   my $digit_repeats = @table[3][10] eq '/' ??  3 !!  2;

   # Replace terms found in dictionary with single char symbols
   my $s = $message.uc;
   for %wdict.kv -> $k, $v { $s.trans: $k => $v }

   for $s.comb -> $c {
      if $c ~~ /\d/ {
         if $codemode { # symbols are preceded by CODE digit then as-is
            @encoded.push($c);
            $codemodecount++;
            if $codemodecount >= 3 { $codemode = False }
         } else {
            unless $numericmode {
               $numericmode = True;
               @encoded.push($nchangemode); # Enter numeric mode
            }
            @encoded.push($c x $digit_repeats);
         }
      } else {
         $codemode = False;
         if $numericmode { # End numeric mode
            @encoded.push($nchangemode);
            $numericmode = False;
         }
         if $c eq $code {
            $codemode = True;
            $codemodecount = 0;
         }
         my $found = False;
         for @table -> @row { # Find character in table
            if (my $k = @row.first($c, :k)).defined and $k > 0 {
               @encoded.push(@row[0] ~ ($k - 1));
               $found = True;
               last;
            }
         }
      }
   }
   return @encoded.join;
}

sub xcb-decode(Str $s, @table, Str $code = 'κ', %sdict = %SDICT --> Str) {
   # Get prefixes (row identifiers) sorted in reverse order (longest first)
   my @prefixes = @table.map(*[0]).grep(* ne '').sort: *.chars cmp *.chars;
   my ($numericmode, $codemode, $pos, @decoded) = False, False, 0;

   # Determine mode change code and digit repeats based on table
   my $nchangemode   = @table[3][10] eq '/' ?? 99 !! 98;
   my $digit_repeats = @table[3][10] eq '/' ??  3 !!  2;

   # Create numbers hash for numeric mode
   my %numbers = (0..9).map({$_ x $digit_repeats => $_}).Hash;

   while $pos < $s.chars {
      if $numericmode {
         my $num_str = $s.substr($pos, $digit_repeats);
         if %numbers{$num_str}:exists {
            @decoded.push(%numbers{$num_str});
            $pos += $digit_repeats - 1;
         } elsif $s.substr($pos, 2) eq $nchangemode {
            $numericmode = False;
            $pos += 1;
         } elsif @decoded.elems > 0 && @decoded[*-1] eq '9' {
            # Error, backtrack if last was 9
            @decoded.pop;
            $numericmode = False;
            $pos -= $digit_repeats - 1;
         }
      } elsif $codemode {
         if $pos + 2 < $s.chars && $s.substr($pos, 3) ~~ /^\d ** 3$/ {
            @decoded.push($s.substr($pos, 3));
            $pos += 2;
         }
         $codemode = False;
      } elsif $s.substr($pos, 2) eq $nchangemode {
         $numericmode = !$numericmode;
         $pos += 1;
      } else {
         my $found = False;
         for @prefixes -> $p { # Try to match prefixes (multi-digit codes)
            if $s.substr($pos).starts-with($p) {
               my $n = $p.chars;
               # Find the row index where first element matches prefix
               my $row_idx = gather for @table.kv -> $i, @row {
                  if @row[0] eq $p { take $i and last }
               }.first // Nil;
               if $row_idx.defined && $pos + $n < $s.chars {
                  if (my $next_digit = $s.substr($pos + $n, 1)) ~~ /\d/ {
                     if (my $col_idx = $next_digit.Int+1) < +@table[$row_idx] {
                        @decoded.push(my $c = @table[$row_idx][$col_idx]);
                        if $c eq $code { $codemode = True }
                     }
                     $pos += $n;
                     $found = True;
                     last;
                  }
               }
            }
         }
         if !$found { # If no prefix match, try single digit (row 0)
            my $digit = $s.substr($pos, 1);
            if $digit ~~ /\d/ {
               my $col_idx = $digit.Int + 1;
               if $col_idx < @table[0].elems {
                  my $c = @table[0][$col_idx] // '';
                  @decoded.push($c) if $c ne '';
                  if $c eq $code { $codemode = True }
               }
            }
         }
      }
      $pos++;
   }
   my $result = @decoded.join;
   return ( do for %sdict.kv -> $k, $v { $result.trans: $k => $v } ).first;
}

say "Original: ", my $message = 'Admin ACK your MSG. CODE291 SEND further 2000 SUPP to HQ by 1 March';

for @CT37w, @CT37w_mod -> $table {
   say "Encoded:  ", my $encoded = xcb-encode($message, $table);
   say "Decoded:  ", xcb-decode($encoded, $table);
}
#------------------------------------------------ 330 extensible-prime-generator
my @primes = lazy gather for 1 .. * { .take if .is-prime }

say "The first twenty primes:\n   ", "[{@primes[^20].fmt("%d", ', ')}]";
say "The primes between 100 and 150:\n   ", "[{@primes.&between(100, 150).fmt("%d", ', ')}]";
say "The number of primes between 7,700 and 8,000:\n   ", +@primes.&between(7700, 8000);
say "The 10,000th prime:\n   ", @primes[9999];

sub between (@p, $l, $u) {
    gather for @p { .take if $l < $_ < $u; last if $_ >= $u }
}
#-------------------------------------------------------------- 331 extra-primes
my @ppp = lazy flat 2, 3, 5, 7, 23, grep { .is-prime && .comb.sum.is-prime },
               flat (2..*).map: { flat ([X~] (2, 3, 5, 7) xx $_) X~ (3, 7) };

put 'Terms < 10,000: '.fmt('%34s'), @ppp[^(@ppp.first: * > 1e4, :k)];
put '991st through 1000th: '.fmt('%34s'), @ppp[990 .. 999];
put 'Crossing 10th order of magnitude: ', @ppp[9055..9060];
#--------------------------------------------- 332 extreme-floating-point-values
print qq:to 'END'
positive infinity: {1.8e308}
negative infinity: {-1.8e308}
negative zero: {0e0 * -1}
not a number: {0 * 1e309}
+Inf + 2.0 = {Inf + 2}
+Inf - 10.1 = {Inf - 10.1}
0 * +Inf = {0 * Inf}
+Inf + -Inf = {Inf + -Inf}
+Inf == -Inf = {+Inf == -Inf}
(-Inf+0i)**.5 = {(-Inf+0i)**.5}
NaN + 1.0 = {NaN + 1.0}
NaN + NaN = {NaN + NaN}
NaN == NaN = {NaN == NaN}
0.0 == -0.0 = {0e0 == -0e0}
END
#--------------------------------------------------------- 333 faces-from-a-mesh
sub check-equivalence ($a, $b) { so $a.Bag eqv $b.Bag }

sub edge-to-periphery (@a is copy) {
    return Nil unless @a.List.Bag.values.all == 2;
    my @b = @a.shift.flat;
    while @a > 1 {
        for @a.kv -> $k, $v {
            if $v[0] == @b.tail {
                @b.push: $v[1];
                @a.splice($k,1);
                last
            }
            elsif $v[1] == @b.tail {
                @b.push: $v[0];
                @a.splice($k,1);
                last
            }
        }
    }
    @b
}

say 'Perimeter format equality checks:';

for (8, 1, 3), (1, 3, 8),
    (18, 8, 14, 10, 12, 17, 19), (8, 14, 10, 12, 17, 19, 18)
  -> $a, $b {
     say "({$a.join: ', '})  equivalent to  ({$b.join: ', '})? ",
         check-equivalence($a, $b)
}

say "\nEdge to perimeter format translations:";

for ((1, 11), (7, 11), (1, 7)),
    ((11, 23), (1, 17), (17, 23), (1, 11)),
    ((8, 14), (17, 19), (10, 12), (10, 14), (12, 17), (8, 18), (18, 19)),
    ((1, 3), (9, 11), (3, 11), (1, 11))
  {
    .gist.print;
    say "  ==>  ({.&edge-to-periphery || 'Invalid edge format'})";
}
#---------------------------------------------------- 334 factor-perfect-numbers
# 20221029 Raku programming solution

sub propdiv (\x) {
   my @l = 1 if x > 1;
   for (2 .. x.sqrt.floor) -> \d {
      unless x % d { @l.push: d; my \y = x div d; @l.push: y if y != d }
   }
   @l
}

sub moreMultiples (@toSeq, @fromSeq) {
   my @oneMores = gather for @fromSeq -> \j {
      take @toSeq.clone.push(j) if j > @toSeq[*-1] and j %% @toSeq[*-1]
   }
   return () unless @oneMores.Bool;
   for 0..^@oneMores {
      @oneMores.append: moreMultiples @oneMores[$_], @fromSeq
   }
   @oneMores
}

sub erdosFactorCount (\n) {
   state %cache;
   my ($sum,@divs) = 0, |(propdiv n)[1..*];
   for @divs -> \d {
      unless %cache{my \t = n div d}:exists { %cache{t} = erdosFactorCount(t) }
      $sum += %cache{t}
   }
   ++$sum
}

my @listing = moreMultiples [1], propdiv(48);
given @listing { $_.map: *.push: 48; $_.push: [1,48] }
say @listing.elems," sequences using first definition:";
for @listing.rotor(4) -> \line { line.map: { printf "%-20s", $_ } ; say() }

my @listing2 = gather for (0..^+@listing) -> \j {
   my @seq = |@listing[j];
   @seq.append: 48 if @seq[*-1] != 48;
   take (1..^@seq).map: { @seq[$_] div @seq[$_-1] }
}
say "\n{@listing2.elems} sequences using second definition:";
for @listing2.rotor(4) -> \line { line.map: { printf "%-20s", $_ } ; say() }

say "\nOEIS A163272:";
my ($n,@fpns) = 4, 0,1;
while (@fpns < 7) { @fpns.push($n) if erdosFactorCount($n) == $n; $n += 4 }
say ~@fpns;
#--------------------------------------------------------------- 335 factorial-1
sub postfix:<!> (Int $n) { [*] 2..$n }
say 5!;
#--------------------------------------------------------------- 336 factorial-2
constant fact = 1, |[\*] 1..*;
say fact[5]
#---------------------------------------------------------- 337 factorial-primes
sub postfix:<!> ($n) { constant @F = (1, 1, |[\*] 2..*); @F[$n] }
sub abr ($_) { .chars < 41 ?? $_ !! .substr(0,20) ~ '..' ~ .substr(*-20) ~ " ({.chars} digits)" }

my $limit;

for 1..* {
    my \f = .!;
    ++$limit and printf "%2d: %3d! - 1 = %s\n", $limit, $_, abr f -1 if (f -1).is-prime;
    ++$limit and printf "%2d: %3d! + 1 = %s\n", $limit, $_, abr f +1 if (f +1).is-prime;
    exit if $limit >= 30
}
#---------------------------------------------------------------- 338 factorions
constant @factorial = 1, |[\*] 1..*;

constant $limit = 1500000;

constant $bases = 9 .. 12;

my @result;

$bases.map: -> $base {

    @result[$base] = "\nFactorions in base $base:\n1 2";

    sink (1 .. $limit div $base).map: -> $i {
        my $product = $i * $base;
        my $partial;

        for $i.polymod($base xx *) {
            $partial += @factorial[$_];
            last if $partial > $product
        }

        next if $partial > $product;

        my $sum;

        for ^$base {
            last if ($sum = $partial + @factorial[$_]) > $product + $_;
            @result[$base] ~= " $sum" and last if $sum == $product + $_
        }
    }
}

.say for @result[$bases];
#---------------------------------------- 339 factorize-string-into-lyndon-words
# 20240213 Raku programming solution

sub chenfoxlyndonfactorization(Str $s) {
   my ($n, $i, @factorization) = $s.chars, 1;
   while $i <= $n {
      my ($j, $k) = $i X+ (1, 0);
      while $j <= $n && substr($s, $k-1, 1) <= substr($s, $j-1, 1) {
         substr($s, $k-1, 1) < substr($s, $j++ -1, 1) ?? ( $k = $i ) !! $k++;
      }
      while $i <= $k {
         @factorization.push: substr($s, $i-1, $j-$k);
         $i += $j - $k
      }
   }
   die unless $s eq [~] @factorization;
   return @factorization
}

my $m = "0";
for ^7 { $m ~= $m.trans('0' => '1', '1' => '0') }
say chenfoxlyndonfactorization($m);
#---------------------------------------------- 340 factors-of-a-mersenne-number
sub mtest($bits, $p) {
    my @bits = $bits.base(2).comb;
    loop (my $sq = 1; @bits; $sq %= $p) {
        $sq ×= $sq;
        $sq += $sq if 1 == @bits.shift;
    }
    $sq == 1;
}

for flat 2 .. 60, 929 -> $m {
    next unless is-prime($m);
    my $f = 0;
    my $x = 2**$m - 1;
    my $q;
    for 1..* -> $k {
        $q = 2 × $k × $m + 1;
        next unless $q % 8 == 1|7 or is-prime($q);
        last if $q × $q > $x or $f = mtest($m, $q);
    }

    say $f ?? "M$m = $x\n\t= $q × { $x div $q }"
           !! "M$m = $x is prime";
}
#-------------------------------------------- 341 fairshare-between-two-and-more
sub fairshare (\b) { ^∞ .hyper.map: { .polymod( b xx * ).sum % b } }

.say for <2 3 5 11>.map: { .fmt('%2d:') ~ .&fairshare[^25]».fmt('%2d').join: ', ' }

say "\nRelative fairness of this method. Scaled fairness correlation. The closer to 1.0 each person
is, the more fair the selection algorithm is. Gets better with more iterations.";

for <2 3 5 11 39> -> $people {
    print "\n$people people: \n";
    for $people * 1, $people * 10, $people * 1000 -> $iterations {
        my @fairness;
        fairshare($people)[^$iterations].kv.map: { @fairness[$^v % $people] += $^k }
        my $scale = @fairness.sum / @fairness;
        my @range = @fairness.map( { $_ / $scale } );
        printf "After round %4d: Best advantage: %-10.8g - Worst disadvantage: %-10.8g - Spread between best and worst: %-10.8g\n",
            $iterations/$people, @range.min, @range.max, @range.max - @range.min;
    }
}
#------------------------------------------------------------ 342 farey-sequence
sub farey ($order) {
    my @l = 0/1, 1/1;
    (2..$order).map: { push @l, |(1..$^d).map: { $_/$d } }
    unique @l
}

say "Farey sequence order ";
.say for (1..11).hyper(:1batch).map: { "$_: ", .&farey.sort.map: *.nude.join('/') };
.say for (100, 200 ... 1000).race(:1batch).map: { "Farey sequence order $_ has " ~ [.&farey].elems ~ ' elements.' }
#-------------------------------------------------- 343 fast-fourier-transform-1
sub fft {
    return @_ if @_ == 1;
    my @evn = fft( @_[0, 2 ... *] );
    my @odd = fft( @_[1, 3 ... *] ) Z*
    map &cis, (0, -tau / @_ ... *);
    return flat @evn »+« @odd, @evn »-« @odd;
}

.say for fft <1 1 1 1 0 0 0 0>;
#-------------------------------------------------------------- 344 fasta-format
grammar FASTA {

    rule TOP    { <entry>+ }
    rule entry  { \> <title> <sequence> }
    token title { <.alnum>+ }
    token sequence { ( <.alnum>+ )+ % \n { make $0.join } }

}

FASTA.parse: q:to /§/;
>Rosetta_Example_1
THERECANBENOSPACE
>Rosetta_Example_2
THERECANBESEVERAL
LINESBUTTHEYALLMUST
BECONCATENATED
§

for $/<entry>[] {
    say ~.<title>, " : ", .<sequence>.made;
}
#-------------------------------------------------------- 345 faulhabers-formula
sub bernoulli_number($n) {

    return 1/2 if $n == 1;
    return 0/1 if $n % 2;

    my @A;
    for 0..$n -> $m {
        @A[$m] = 1 / ($m + 1);
        for $m, $m-1 ... 1 -> $j {
            @A[$j - 1] = $j * (@A[$j - 1] - @A[$j]);
        }
    }

    return @A[0];
}

sub binomial($n, $k) {
    $k == 0 || $n == $k ?? 1 !! binomial($n-1, $k-1) + binomial($n-1, $k);
}

sub faulhaber_s_formula($p) {

    my @formula = gather for 0..$p -> $j {
        take '('
            ~ join('/', (binomial($p+1, $j) * bernoulli_number($j)).Rat.nude)
            ~ ")*n^{$p+1 - $j}";
    }

    my $formula = join(' + ', @formula.grep({!m{'(0/1)*'}}));

    $formula .= subst(rx{ '(1/1)*' }, '', :g);
    $formula .= subst(rx{ '^1'» }, '', :g);

    "1/{$p+1} * ($formula)";
}

for 0..9 -> $p {
    say "f($p) = ", faulhaber_s_formula($p);
}
#------------------------------------------------------- 346 faulhabers-triangle
# Helper subs

sub infix:<reduce> (\prev, \this) { this.key => this.key * (this.value - prev.value) }

sub next-bernoulli ( (:key($pm), :value(@pa)) ) {
    $pm + 1 => [ map *.value, [\reduce] ($pm + 2 ... 1) Z=> 1 / ($pm + 2), |@pa ]
}

constant bernoulli = (0 => [1.FatRat], &next-bernoulli ... *).map: { .value[*-1] };

sub binomial (Int $n, Int $p) { combinations($n, $p).elems }

sub asRat (FatRat $r) { $r ?? $r.denominator == 1 ?? $r.numerator !! $r.nude.join('/') !! 0 }


# The task
sub faulhaber_triangle ($p) { map { binomial($p + 1, $_) * bernoulli[$_] / ($p + 1) }, ($p ... 0) }

# First 10 rows of Faulhaber's triangle:
say faulhaber_triangle($_)».&asRat.fmt('%5s') for ^10;
say '';

# Extra credit:
my $p = 17;
my $n = 1000;
say sum faulhaber_triangle($p).kv.map: { $^value * $n**($^key + 1) }
#------------------------------------------- 347 feigenbaum-constant-calculation
my $a1 = 1;
my $a2 = 0;
my $d = 3.2;

say ' i d';

for 2 .. 13 -> $exp {
    my $a = $a1 + ($a1 - $a2) / $d;
    do {
        my $x = 0;
        my $y = 0;
        for ^2 ** $exp {
            $y = 1 - 2 * $y * $x;
            $x = $a - $x²;
        }
        $a -= $x / $y;
    } xx 10;
     $d = ($a1 - $a2) / ($a - $a1);
     ($a2, $a1) = ($a1, $a);
     printf "%2d %.8f\n", $exp, $d;
}
#------------------------------------------------------------ 348 fibonacci-heap
# 20200609 Raku programming solution

subset vEle of Any;

class Node {
   has vEle $.value  is rw is default(Nil) ;
   has Node $.parent is rw ;
   has Node $.child  is rw ;
   has Node $.prev   is rw ;
   has Node $.next   is rw ;
   has Int  $.rank   is rw is default(0) ;
   has Bool $.mark   is rw is default(False) ;
}

multi infix:<⪡>(vEle \a, vEle \b) { a le b } # custom defined 'less than'

class Heap {

   has Node $.root is rw ;

   method MakeHeap { self.root = Node.new }

   method Insert(vEle \v) {
      my $x = Node.new: value => v;
      if self.root.value ~~ Nil {
         $x.next = $x;
         $x.prev = $x;
         self.root = $x
      } else {
         meld1(self.root, $x);
         self.root = $x if $x.value ⪡ self.root.value
      }
      return $x
   }

   method Union(Heap $h2) {
      if not self.root.defined {
         self.root = $h2.root
      } elsif $h2.root.defined { 		
         meld2(self.root, $h2.root);
         self.root = $h2.root if $h2.root.value ⪡ self.root.value
      }
      $h2.root = Nil;
   }

   method Minimum() {
      return unless self.root.defined;
      return self.root.value
   }

   method ExtractMin() {
      return Nil unless self.root.defined;
      my \min = self.root.value;
      my %roots;

      sub add (Node \r) {
         r.prev = r;
         r.next = r;
         loop {
            (defined my \x = %roots{r.rank}) or last;
            %roots{r.rank}:delete;
            (r, x) = (x, r) if x.value ⪡ r.value ;
            x.parent = r ;
            x.mark = False ;
            if not r.child.defined {
               x.next = x;
               x.prev = x;
               r.child = x
            } else {
               meld1(r.child, x)
            }
            r.rank++
         }
         %roots{r.rank} = r ;
      }

      loop (my \r = self.root.next ; not r ~~ self.root ; ) {
         my $n = r.next;
         add(r);
         r = $n ;
      }
      if defined (my \c = self.root.child ) {
         c.parent = Nil;
         r = c.next;
         add(c);
         while not r ~~ c {
            my $n = r.next;
            r.parent = Nil;
            add(r);
            r = $n;
         }
      }

      unless %roots.defined {
         self.root = Nil;
         return min
      }
      my Node $mv = %roots{my $d = %roots.keys.first};
      %roots{$d}:delete;
      $mv.next = $mv;
      $mv.prev = $mv;
      %roots.values.map: {
         $_.prev = $mv;
         $_.next = $mv.next;
         $mv.next.prev = $_;
         $mv.next = $_;
         $mv = $_ if $_.value ⪡ $mv.value
      }
      self.root = $mv;
      return min
   }


   method DecreaseKey(\n, \v) {
      die "DecreaseKey new value greater than existing value" if n.value ⪡ v;
      n.value = v;
      return Nil if n ~~ self.root;
      my \p = n.parent;
      unless p.defined {
         self.root = n if v ⪡ self.root.value;
         return Nil
      }
      self.cutAndMeld(n);
      return Nil
   }

   method cutAndMeld(\x) {
      self.cut(x);
      x.parent = Nil;
      meld1(self.root, x)
   }

   method cut(\x) {
      my \p = x.parent;
      return Nil unless p.defined;
      p.rank--;
      if p.rank == 0 {
         p.child = Nil
      } else {
         p.child = x.next;
         x.prev.next = x.next;
         x.next.prev = x.prev
      }
      return Nil unless p.parent.defined;
      unless p.mark {
        p.mark = True;
        return Nil
      }
      self.cutAndMeld(p)
   }

   method Delete(\n) {
      my \p = n.parent;
      if not p.defined {
         self.ExtractMin() and return if n ~~ self.root ;
         n.prev.next = n.next;
         n.next.prev = n.prev
      } else {
         self.cut(n)
      }
      my \c = n.child;
      return Nil unless c.defined;
      loop ( c.parent = Nil, c = c.next ; c ~~ n.child ; c = c.next ) {}
      meld2(self.root, c)
   }

   method Vis() {

      if self.root.value ~~ Nil { say "<empty>" and return }

      sub f(Node $n, Str $pre) {
         loop ( my $pc = "│ ", my $x = $n ; ; $x = $x.next) {
            if !($x.next ~~ $n) {
               print $pre, "├─"
            } else {
               print $pre, "└─";
               $pc = "  "
            }
            if not $x.child.defined {
               say "╴", $x.value
            } else {
               say "┐", $x.value;
               f($x.child, $pre~$pc)
            }
            last if $x.next ~~ $n
         }
      }
      f(self.root, "")
   }
}

sub meld1(\list, \single) {
   list.prev.next = single;
   single.prev = list.prev;
   single.next = list;
   list.prev = single;
}

sub meld2(\a, \b) {
   a.prev.next = b;
   b.prev.next = a;
   ( a.prev, b.prev ) = ( b.prev, a.prev )
}

say "MakeHeap:";
my $h = Heap.new;
$h.MakeHeap;
$h.Vis;

say "\nInsert:";
$h.Insert("cat");
$h.Vis;

say "\nUnion:";
my $h2 = Heap.new;
$h2.MakeHeap;
$h2.Insert("rat");
$h.Union($h2);
$h.Vis;

say "\nMinimum:";
my \m = $h.Minimum();
say m;

say "\nExtractMin:";
$h.Insert("bat");
my $x = $h.Insert("meerkat");
say "extracted: ", my $mm = $h.ExtractMin();
$h.Vis;

say "\nDecreaseKey:";
$h.DecreaseKey($x, "gnat");
$h.Vis;

say "\nDelete:";
$h.Insert("bobcat");
$h.Insert("bat");
say "deleting: ", $x.value;
$h.Delete($x);
$h.Vis;
#--------------------------------------- 349 fibonacci-n-step-number-sequences-1
sub nacci ( $s = 2, :@start = (1,) ) {
    my @seq = |@start, { state $n = +@start; @seq[ ($n - $s .. $n++ - 1).grep: * >= 0 ].sum } … *;
}

put "{.fmt: '%2d'}-nacci: ", nacci($_)[^20] for 2..12 ;

put "Lucas: ", nacci(:start(2,1))[^20];
#--------------------------------------- 350 fibonacci-n-step-number-sequences-2
sub fib ($n, @xs is copy = [1]) {
    flat gather {
        take @xs[*];
        loop {
            take my $x = [+] @xs;
            @xs.push: $x;
            @xs.shift if @xs > $n;
        }
    }
}

for 2..10 -> $n {
    say fib($n, [1])[^20];
}
say fib(2, [2,1])[^20];
#---------------------------------------------------------- 351 fibonacci-word-1
constant @fib-word = 1, 0, { $^b ~ $^a } ... *;

sub entropy {
    -log(2) R/
        [+] map -> \p { p * log p },
            $^string.comb.Bag.values »/» $string.chars
}
for @fib-word[^37] {
    printf "%5d\t%10d\t%.8e\t%s\n",
    (state $n)++, .chars, .&entropy, $n > 10 ?? '' !! $_;
}
#---------------------------------------------------------- 352 fibonacci-word-2
constant @fib-word = '1', '0', { $^b ~ $^a } ... *;
constant @fib-ones = 1, 0, * + * ... *;
constant @fib-chrs = 1, 1, * + * ... *;

multi entropy(0) { 0 }
multi entropy(1) { 0 }
multi entropy($n) {
    my $chars = @fib-chrs[$n];
    my $ones  = @fib-ones[$n];
    my $zeros = $chars - $ones;
    -log(2) R/
        [+] map -> \p { p * log p },
            $ones / $chars, $zeros / $chars
}

for 0..100 -> $n {
    printf "%5d\t%21d\t%.15e\t%s\n",
	    $n, @fib-chrs[$n], entropy($n), $n > 9 ?? '' !! @fib-word[$n];
}
#---------------------------------------------------- 353 fibonacci-word-fractal
constant @fib-word = '1', '0', { $^b ~ $^a } ... *;

sub MAIN($m = 17, $scale = 3) {
    (my %world){0}{0} = 1;
    my $loc = 0+0i;
    my $dir = i;
    my $n = 1;

    for @fib-word[$m].comb {
        when '0' {
            step;
            if $n %% 2 { turn-left }
            else { turn-right; }
        }
        $n++;
    }

    braille-graphics %world;

    sub step {
        for ^$scale {
            $loc += $dir;
            %world{$loc.im}{$loc.re} = 1;
        }
    }

    sub turn-left  { $dir *= i; }
    sub turn-right { $dir *= -i; }

}

sub braille-graphics (%a) {
    my ($ylo, $yhi, $xlo, $xhi);
    for %a.keys -> $y {
	$ylo min= +$y; $yhi max= +$y;
	for %a{$y}.keys -> $x {
	    $xlo min= +$x; $xhi max= +$x;
	}
    }

    for $ylo, $ylo + 4 ...^ * > $yhi -> \y {
	for $xlo, $xlo + 2 ...^ * > $xhi -> \x {
	    my $cell = 0x2800;
	    $cell += 1   if %a{y + 0}{x + 0};
	    $cell += 2   if %a{y + 1}{x + 0};
	    $cell += 4   if %a{y + 2}{x + 0};
	    $cell += 8   if %a{y + 0}{x + 1};
	    $cell += 16  if %a{y + 1}{x + 1};
	    $cell += 32  if %a{y + 2}{x + 1};
	    $cell += 64  if %a{y + 3}{x + 0};
	    $cell += 128 if %a{y + 3}{x + 1};
	    print chr($cell);
	}
	print "\n";
    }
}
#-------------------------------------- 354 file-extension-is-in-extensions-list
sub check-extension ($filename, *@extensions) {
    so $filename ~~ /:i '.' @extensions $/
}

# Testing:

my @extensions = <zip rar 7z gz archive A## tar.bz2>;
my @files= <
    MyData.a##  MyData.tar.Gz  MyData.gzip  MyData.7z.backup  MyData...  MyData
    MyData_v1.0.tar.bz2  MyData_v1.0.bz2
>;
say "{$_.fmt: '%-19s'} - {check-extension $_, @extensions}" for @files;
#---------------------------------------------------- 355 file-size-distribution
sub MAIN($dir = '.') {
    sub log10 (Int $s) { $s ?? $s.log(10).Int !! 0 }
    my %fsize;
    my @dirs = $dir.IO;
    while @dirs {
        for @dirs.pop.dir -> $path {
            %fsize{$path.s.&log10}++ if $path.f;
            @dirs.push: $path if $path.d and $path.r
        }
    }
    my $max = %fsize.values.max;
    my $bar-size = 80;
    say "File size distribution in bytes for directory: $dir\n";
    for 0 .. %fsize.keys.max {
          say sprintf( "# Files @ %5sb %8s: ", $_ ?? "10e{$_-1}" !! 0, %fsize{$_} // 0 ),
              histogram( $max, %fsize{$_} // 0, $bar-size )
    }
    say %fsize.values.sum, ' total files.';
}

sub histogram ($max, $value, $width = 60) {
    my @blocks = <| ▏ ▎ ▍ ▌ ▋ ▊ ▉ █>;
    my $scaled = ($value * $width / $max).Int;
    my ($end, $bar) = $scaled.polymod(8);
    (@blocks[8] x $bar * 8) ~ (@blocks[$end] if $end) ~ "\n"
}
#-------------------------------- 356 find-chess960-starting-position-identifier
sub c960-spid($array) {
    # standardize on letters for easier processing
    my $ascii = $array.trans('♜♞♝♛♚♖♘♗♕♔' => 'RNBQK');

    # error-checking
    my %Names = <Q Queen K King R Rook N Knight B Bishop>;
    return 'Illegal position: should have exactly eight pieces' unless 8 == $ascii.chars;
    return 'Illegal position: Bishops not on opposite colors.'  unless 1 == sum $ascii.indices('B').map(* % 2);
    return 'Illegal position: King not between rooks.'          unless $ascii ~~ /'R' .* 'K' .* 'R'/;
    for <K 1 Q 1 B 2 N 2 R 2> -> $piece, $count {
        return "Illegal position: should have exactly $count %Names{$piece}\(s\)\n" unless $count == $ascii.indices($piece)
    }

    # Work backwards through the placement rules.
    # King and rooks are forced during placement, so ignore them.

    # 1. Figure out which knight combination was used:
    my @knights = $ascii.subst(/<[QB]>/, '', :g).indices('N');
    my $knight = combinations(5,2).kv.grep( -> $i, @c { @c eq @knights } ).flat.first;

    # 2. Then which queen position:
    my $queen = $ascii.subst('B', '', :g).index('Q');

    # 3. Finally the two bishops:
    my @bishops = $ascii.indices('B');
    my ($dark,$light) = (@bishops.first %% 2 ?? @bishops !! @bishops.reverse) Xdiv 2;

    $ascii.trans('RNBQK' => '♖♘♗♕♔') ~ ' ' ~ 4 × (4 × (6 × $knight + $queen) + $dark) + $light;
}

say .&c960-spid for <♖♘♗♕♔♗♘♖ ♛♞♜♝♝♞♚♜ RQNBBKRN RNQBBKRN QNBRBNKR>;
#----------------------------- 357 find-first-and-last-set-bit-of-a-long-integer
sub table ($base,$power) {
    my $digits = ($base ** $power).chars;
    printf "%{$digits}s  lsb msb\n", 'number';
    for 0..$power {
	my $x = $base ** $_;
	printf "%{$digits}d  %2d  %2d\n", $x, $x.lsb, $x.msb;
    }
}

table 42, 20;
table 1302, 20;
#----------------------------------------------- 358 find-first-missing-positive
say $_, " ==> ", (1..Inf).first( -> \n { n ∉ $_ } ) for
[ 1, 2, 0], [3, 4, 1, 1], [7, 8, 9, 11, 12], [1, 2, 3, 4, 5], [-6, -5, -2, -1], [5, -5], [-2], [1], []
#-------------------------------------- 359 find-if-a-point-is-within-a-triangle
class Point {
    has Real $.x is rw;
    has Real $.y is rw;
    method gist { [~] '(', self.x,', ', self.y, ')' };
}

sub sign (Point $a, Point $b, Point $c) {
    ($b.x - $a.x)*($c.y - $a.y) - ($b.y - $a.y)*($c.x - $a.x);
}

sub triangle (*@points where *.elems == 6) {
    @points.batch(2).map: { Point.new(:x(.[0]),:y(.[1])) };
}

sub is-within ($point, @triangle is copy) {
   my @signs = sign($point, |(@triangle.=rotate)[0,1]) xx 3;
   so (all(@signs) >= 0) or so(all(@signs) <= 0);
}

my @triangle = triangle((1.5, 2.4), (5.1, -3.1), (-3.8, 0.5));

for Point.new(:x(0),:y(0)),
    Point.new(:x(0),:y(1)),
    Point.new(:x(3),:y(1))
  -> $point {
    say "Point {$point.gist} is within triangle {join ', ', @triangle».gist}: ",
        $point.&is-within: @triangle
}
#---------------------- 360 find-minimum-number-of-coins-that-make-a-given-value
my @denominations = 200, 100, 50, 20, 10, 5, 2, 1;

sub change (Int $n is copy where * >= 0) { gather for @denominations { take $n div $_; $n %= $_ } }

for 988, 1307, 37511, 0 -> $amount {
    say "\n$amount:";
    printf "%d × %d\n", |$_ for $amount.&change Z @denominations;
}
#----------------- 361 find-palindromic-numbers-in-both-binary-and-ternary-bases
constant palindromes = 0, 1, |gather for 1 .. * -> $p {
    my $pal = $p.base(3);
    my $n = :3($pal ~ '1' ~ $pal.flip);
    next if $n %% 2;
    my $b2 = $n.base(2);
    next if $b2.chars %% 2;
    next unless $b2 eq $b2.flip;
    take $n;
}

printf "%d, %s, %s\n", $_, .base(2), .base(3) for palindromes[^6];
#--------------------------- 362 find-prime-n-such-that-reversed-n-is-also-prime
unit sub MAIN ($limit = 500);
say "{+$_} reversible primes < $limit:\n{$_».fmt("%" ~ $limit.chars ~ "d").batch(10).join("\n")}",
    with ^$limit .grep: { .is-prime and .flip.is-prime }
#------------------------------------ 363 find-prime-numbers-of-the-form-n-n-n+2
# 20210315 Raku programming solution

say ((1…199)»³ »+»2).grep: *.is-prime
#---------------------------------------------------- 364 find-square-difference
say first { $_² - ($_-1)² > 1000 }, ^Inf;
#--------------------------------------- 365 find-squares-n-where-n+1-is-prime-1
say ({$++²}…^*>Ⅿ).grep: (*+1).is-prime
#--------------------------------------- 366 find-squares-n-where-n+1-is-prime-2
put (^Ⅿ).grep(*.is-prime).map(*-1).batch(20)».fmt("%3d").join: "\n"
#---------------------------- 367 find-the-intersection-of-a-line-with-a-plane-1
class Line {
    has $.P0; # point
    has $.u⃗;  # ray
}
class Plane {
    has $.V0; # point
    has $.n⃗;  # normal
}

sub infix:<∙> ( @a, @b where +@a == +@b ) { [+] @a «*» @b } # dot product

sub line-plane-intersection ($𝑳, $𝑷) {
    my $cos = $𝑷.n⃗ ∙ $𝑳.u⃗; # cosine between normal & ray
    return 'Vectors are orthogonal; no intersection or line within plane'
      if $cos == 0;
    my $𝑊 = $𝑳.P0 «-» $𝑷.V0;      # difference between P0 and V0
    my $S𝐼 = -($𝑷.n⃗ ∙ $𝑊) / $cos;  # line segment where it intersects the plane
    $𝑊 «+» $S𝐼 «*» $𝑳.u⃗ «+» $𝑷.V0; # point where line intersects the plane
 }

say 'Intersection at point: ', line-plane-intersection(
     Line.new( :P0(0,0,10), :u⃗(0,-1,-1) ),
    Plane.new( :V0(0,0, 5), :n⃗(0, 0, 1) )
  );
#-------------------------------------- 368 find-the-intersection-of-two-lines-1
sub intersection (Real $ax, Real $ay, Real $bx, Real $by,
                  Real $cx, Real $cy, Real $dx, Real $dy ) {

    sub term:<|AB|> { determinate($ax, $ay, $bx, $by) }
    sub term:<|CD|> { determinate($cx, $cy, $dx, $dy) }

    my $ΔxAB = $ax - $bx;
    my $ΔyAB = $ay - $by;
    my $ΔxCD = $cx - $dx;
    my $ΔyCD = $cy - $dy;

    my $x-numerator = determinate( |AB|, $ΔxAB, |CD|, $ΔxCD );
    my $y-numerator = determinate( |AB|, $ΔyAB, |CD|, $ΔyCD );
    my $denominator = determinate( $ΔxAB, $ΔyAB, $ΔxCD, $ΔyCD );

    return 'Lines are parallel' if $denominator == 0;

    ($x-numerator/$denominator, $y-numerator/$denominator);
}

sub determinate ( Real $a, Real $b, Real $c, Real $d ) { $a * $d - $b * $c }

# TESTING
say 'Intersection point: ', intersection( 4,0, 6,10, 0,3, 10,7 );
say 'Intersection point: ', intersection( 4,0, 6,10, 0,3, 10,7.1 );
say 'Intersection point: ', intersection( 0,0, 1,1, 1,2, 4,5 );
#---------------------------------------- 369 find-the-last-sunday-of-each-month
sub MAIN ($year = Date.today.year) {
    for 1..12 -> $month {
        my $month-end = Date.new($year, $month, Date.new($year,$month,1).days-in-month);
        say $month-end - $month-end.day-of-week % 7;
    }
}
#-------------------------------------------- 370 find-the-missing-permutation-1
my @givens = <ABCD CABD ACDB DACB BCDA ACBD ADCB CDAB DABC BCAD CADB CDBA
                CBAD ABDC ADBC BDCA DCBA BACD BADC BDAC CBDA DBCA DCAB>;

my @perms = <A B C D>.permutations.map: *.join;

.say when none(@givens) for @perms;
#-------------------------------------------- 371 find-the-missing-permutation-2
say [~^] <ABCD CABD ACDB DACB BCDA ACBD ADCB CDAB DABC BCAD CADB CDBA
          CBAD ABDC ADBC BDCA DCBA BACD BADC BDAC CBDA DBCA DCAB>;
#------------------------------ 372 find-words-which-contain-the-most-consonants
unit sub MAIN ($min = 11);
my @vowel = <a e i o u>;
my $vowel = rx/ @vowel /;
my @consonant = ('a'..'z').grep: { $_ ∉ @vowel };
my $consonant = rx/ @consonant /;

say "Minimum characters in a word: $min";

say "Number found, consonant count and list of words with the largest absolute number of unique, unrepeated consonants:";
say +.value, ' @ ', $_ for 'unixdict.txt'.IO.words.grep( {.chars >= $min and so all(.comb.Bag{@consonant}) <= 1} )
    .classify( { +.comb(/$consonant/) } ).sort(-*.key).head(2);

say "\nNumber found, ratio and list of words with the highest ratio of unique, unrepeated consonants to vowels:";
say +.value, ' @ ', $_  for 'unixdict.txt'.IO.slurp.words.grep( {.chars >= $min and so all(.comb.Bag{@consonant}) <= 1} )
    .classify( { +.comb(/$vowel/) ?? (+.comb(/$consonant/) / +.comb(/$vowel/) ) !! Inf } ).sort(-*.key).head(3);
#-------------------------------------------- 373 first-9-prime-fibonacci-number
put ++$ .fmt("%2d: ") ~ $_ for (0, 1, * + * … *).grep( &is-prime )[^20];
#-------------------------------------------------- 374 first-class-environments
my $calculator = sub ($n is rw) {
    $n == 1 ?? 1 !! $n %% 2 ?? $n div 2 !! $n * 3 + 1
}

sub next (%this, &get_next) {
    return %this if %this.<value> == 1;
    %this.<value> .= &get_next;
    %this.<count>++;
    %this;
}

my @hailstones = map { %(value => $_, count => 0) }, 1 .. 12;

while not all( map { $_.<value> }, @hailstones ) == 1 {
    say [~] map { $_.<value>.fmt: '%4s' }, @hailstones;
    @hailstones[$_] .= &next($calculator) for ^@hailstones;
}

say "\nCounts\n" ~ [~] map { $_.<count>.fmt: '%4s' }, @hailstones;
#--------------------------------------------------- 375 first-class-functions-1
my \𝐴 = &sin,  &cos,  { $_ ** <3/1> }
my \𝐵 = &asin, &acos, { $_ ** <1/3> }

say .(.5) for 𝐴 Z∘ 𝐵
#--------------------------------------------------- 376 first-class-functions-2
my @a = 1,2,3;
my @op = &infix:<+>, &infix:<->, &infix:<*>;
for flat @a Z @op -> $v, &op { say 42.&op($v) }
#----------------------------- 377 first-class-functions-use-numbers-analogously
sub multiplied ($g, $f) { return { $g * $f * $^x } }

my $x  = 2.0;
my $xi = 0.5;
my $y  = 4.0;
my $yi = 0.25;
my $z  = $x + $y;
my $zi = 1.0 / ( $x + $y );

my @numbers = $x, $y, $z;
my @inverses = $xi, $yi, $zi;

for flat @numbers Z @inverses { say multiplied($^g, $^f)(.5) }
#------------------------------------------------------------- 378 five-weekends
# A month has 5 weekends iff it has 31 days and starts on Friday.

my @years = 1900 .. 2100;
my @has31 = 1, 3, 5, 7, 8, 10, 12;
my @happy = ($_ when *.day-of-week == 5 for (@years X @has31).map(-> ($y, $m) { Date.new: $y, $m, 1 }));

say 'Happy month count:  ', +@happy;
say 'First happy months: ' ~ @happy[^5];
say 'Last  happy months: ' ~ @happy[*-5 .. *];
say 'Dreary years count: ',  @years - @happy».year.squish;
#------------------------------------------------------------------- 379 fivenum
sub fourths ( Int $end ) {
    my $end_22 = $end div 2 / 2;

    return 0, $end_22, $end/2, $end - $end_22, $end;
}
sub fivenum ( @nums ) {
    my @x = @nums.sort(+*)
        or die 'Input must have at least one element';

    my @d = fourths(@x.end);

    return ( @x[@d».floor] Z+ @x[@d».ceiling] ) »/» 2;
}

say .&fivenum for [15, 6, 42, 41, 7, 36, 49, 40, 39, 47, 43],
                  [36, 40, 7, 39, 41, 15], [
    0.14082834,  0.09748790,  1.73131507,  0.87636009, -1.95059594,
    0.73438555, -0.03035726,  1.46675970, -0.74621349, -0.72588772,
    0.63905160,  0.61501527, -0.98983780, -1.00447874, -0.62759469,
    0.66206163,  1.04312009, -0.10305385,  0.75775634,  0.32566578,
];
#---------------------------------------------------------------- 380 fizzbuzz-1
for 1 .. 100 {
    when $_ %% (3 & 5) { say 'FizzBuzz'; }
    when $_ %% 3       { say 'Fizz'; }
    when $_ %% 5       { say 'Buzz'; }
    default            { .say; }
}
#---------------------------------------------------------------- 381 fizzbuzz-2
multi sub fizzbuzz(Int $ where * %% 15) { 'FizzBuzz' }
multi sub fizzbuzz(Int $ where * %%  5) { 'Buzz' }
multi sub fizzbuzz(Int $ where * %%  3) { 'Fizz' }
multi sub fizzbuzz(Int $number        ) { $number }
(1 .. 100)».&fizzbuzz.say;
#---------------------------------------------------------------- 382 fizzbuzz-3
[1..100].map({[~] ($_%%3, $_%%5) »||» "" Z&& <fizz buzz> or $_ })».say
#---------------------------------------------------------------- 383 fizzbuzz-4
say 'Fizz' x $_ %% 3 ~ 'Buzz' x $_ %% 5 || $_ for 1 .. 100;
#---------------------------------------------------------------- 384 fizzbuzz-5
say "Fizz"x$_%%3~"Buzz"x$_%%5||$_ for 1..100
#---------------------------------------------------------------- 385 fizzbuzz-6
.say for
    (
      (flat ('' xx 2, 'Fizz') xx *)
      Z~
      (flat ('' xx 4, 'Buzz') xx *)
    )
    Z||
    1 .. 100;
#------------------------------------------------------------ 386 flatten-a-list
my @l = [[1], 2, [[3,4], 5], [[[]]], [[[6]]], 7, 8, []];

say .perl given gather @l.deepmap(*.take); # lazy recursive version

# Another way to do it is with a recursive function (here actually a Block calling itself with the &?BLOCK dynamic variable):

say { |(@$_ > 1 ?? map(&?BLOCK, @$_) !! $_) }(@l)
#-------------------------------------------------- 387 floyd-warshall-algorithm
sub Floyd-Warshall (Int $n, @edge) {
    my @dist = [0, |(Inf xx $n-1)], *.Array.rotate(-1) … !*[*-1];
    my @next = [0 xx $n] xx $n;

    for @edge -> ($u, $v, $w) {
        @dist[$u-1;$v-1] = $w;
        @next[$u-1;$v-1] = $v-1;
    }

    for [X] ^$n xx 3 -> ($k, $i, $j) {
        if @dist[$i;$j] > my $sum = @dist[$i;$k] + @dist[$k;$j] {
            @dist[$i;$j] = $sum;
            @next[$i;$j] = @next[$i;$k];
        }
    }

    say ' Pair  Distance     Path';
    for [X] ^$n xx 2 -> ($i, $j){
        next if $i == $j;
        my @path = $i;
        @path.push: @next[@path[*-1];$j] until @path[*-1] == $j;
        printf("%d → %d  %4d       %s\n", $i+1, $j+1, @dist[$i;$j],
          @path.map( *+1 ).join(' → '));
    }
}

Floyd-Warshall(4, [[1, 3, -2], [2, 1, 4], [2, 3, 3], [3, 4, 2], [4, 2, -1]]);
#----------------------------------------------------------- 388 floyds-triangle
constant @floyd1 = (1..*).rotor(1..*);
constant @floyd2 = gather for 1..* -> $s { take [++$ xx $s] }

sub format-rows(@f) {
    my @table;
    my @formats = @f[@f-1].map: {"%{.chars}s"}
    for @f -> @row {
        @table.push: (@row Z @formats).map: -> ($i, $f) { $i.fmt($f) }
    }
    join "\n", @table;
}

say format-rows(@floyd1[^5]);
say '';
say format-rows(@floyd2[^14]);
#------------------------------------------------------- 389 formal-power-series
class DerFPS { ... }
class IntFPS { ... }

role FPS {
    method coeffs        { ... }
    method differentiate { DerFPS.new(:x(self)) }
    method integrate     { IntFPS.new(:x(self)) }

    method pretty($n) {
        sub super($i) { $i.trans('0123456789' => '⁰¹²³⁴⁵⁶⁷⁸⁹') }
        my $str = $.coeffs[0];
        for flat 1..$n Z $.coeffs[1..$n] -> $p, $c {
            when $c > 0 { $str ~= " + { $c .nude.join: '/'}∙x{super($p)}" }
            when $c < 0 { $str ~= " - {-$c .nude.join: '/'}∙x{super($p)}" }
        }
        $str;
    }
}

class ExplicitFPS does FPS { has @.coeffs }

class SumFPS does FPS {
    has FPS ($.x, $.y);
    method coeffs { $.x.coeffs Z+ $.y.coeffs }
}

class DifFPS does FPS {
    has FPS ($.x, $.y);
    method coeffs { $.x.coeffs Z- $.y.coeffs }
}

class ProFPS does FPS {
    has FPS ($.x, $.y);
    method coeffs { (0..*).map: { [+] ($.x.coeffs[0..$_] Z* $.y.coeffs[$_...0]) } }
}

class InvFPS does FPS {
    has FPS $.x;
    method coeffs {
        # see http://en.wikipedia.org/wiki/Formal_power_series#Inverting_series
        flat gather {
            my @a = $.x.coeffs;
            @a[0] != 0 or fail "Cannot invert power series with zero constant term.";
            take my @b = (1 / @a[0]);
            take @b[$_] = -@b[0] * [+] (@a[1..$_] Z* @b[$_-1...0]) for 1..*;
        }
    }
}

class DerFPS does FPS {
    has FPS $.x;
    method coeffs { (1..*).map: { $_ * $.x.coeffs[$_] } }
}

class IntFPS does FPS {
    has FPS $.x;
    method coeffs { 0, |(0..*).map: { $.x.coeffs[$_] / ($_+1) } }
}

class DeferredFPS does FPS {
    has FPS $.realized is rw;
    method coeffs { $.realized.coeffs }
}

# some arithmetic operations for formal power series
multi infix:<+>(FPS $x, FPS $y) { SumFPS.new(:$x, :$y) }
multi infix:<->(FPS $x, FPS $y) { DifFPS.new(:$x, :$y) }
multi infix:<*>(FPS $x, FPS $y) { ProFPS.new(:$x, :$y) }
multi infix:</>(FPS $x, FPS $y) { $x * InvFPS.new(:x($y)) }

# an example of a mixed-type operator:
multi infix:<->(Numeric $x, FPS $y) { ExplicitFPS.new(:coeffs(lazy flat $x, 0 xx *)) - $y }

# define sine and cosine in terms of each other
my $sin       = DeferredFPS.new;
my $cos       = 1 - $sin.integrate;
$sin.realized = $cos.integrate;

# define tangent in terms of sine and cosine
my $tan       = $sin / $cos;

say 'sin(x) ≈ ' ~ $sin.pretty(10);
say 'cos(x) ≈ ' ~ $cos.pretty(10);
say 'tan(x) ≈ ' ~ $tan.pretty(10);
#-------------------------------------------------- 390 formatted-numeric-output
say 7.125.fmt('%09.3f');
#--------------------------------------------------------- 391 fortunate-numbers
my @primorials = [\*] grep *.is-prime, ^∞;

say display :title("First 50 distinct fortunate numbers:\n"),
   (squish sort @primorials[^75].hyper.map: -> $primorial {
       (2..∞).first: (* + $primorial).is-prime
   })[^50];

sub display ($list, :$cols = 10, :$fmt = '%6d', :$title = "{+$list} matching:\n") {
    cache $list;
    $title ~ $list.batch($cols)».fmt($fmt).join: "\n"
}
#------------------------------------------------------------ 392 four-bit-adder
sub xor ($a, $b) { (($a and not $b) or (not $a and $b)) ?? 1 !! 0 }

sub half-adder ($a, $b) {
    return xor($a, $b), ($a and $b);
}

sub full-adder ($a, $b, $c0) {
    my ($ha0_s, $ha0_c) = half-adder($c0, $a);
    my ($ha1_s, $ha1_c) = half-adder($ha0_s, $b);
    return $ha1_s, ($ha0_c or $ha1_c);
}

sub four-bit-adder ($a0, $a1, $a2, $a3, $b0, $b1, $b2, $b3) {
    my ($fa0_s, $fa0_c) = full-adder($a0, $b0, 0);
    my ($fa1_s, $fa1_c) = full-adder($a1, $b1, $fa0_c);
    my ($fa2_s, $fa2_c) = full-adder($a2, $b2, $fa1_c);
    my ($fa3_s, $fa3_c) = full-adder($a3, $b3, $fa2_c);

    return $fa0_s, $fa1_s, $fa2_s, $fa3_s, $fa3_c;
}

{
    use Test;

    is four-bit-adder(1, 0, 0, 0, 1, 0, 0, 0), (0, 1, 0, 0, 0), '1 + 1 == 2';
    is four-bit-adder(1, 0, 1, 0, 1, 0, 1, 0), (0, 1, 0, 1, 0), '5 + 5 == 10';
    is four-bit-adder(1, 0, 0, 1, 1, 1, 1, 0)[4], 1, '7 + 9 == overflow';
}
#------------------------------------------------------ 393 four-sides-of-square
sub hollow ($n) { [1 xx $n], |(0 ^..^ $n).map( { [flat 1, 0 xx $n - 2, 1] } ), [1 xx $n] }

.put for hollow 7;
put '';
.put for hollow 10;
#-------------------------------------------------------------- 394 fractal-tree
my ($width, $height) = (1000,1000); # image dimension
my $scale = 6/10; # branch scale relative to trunk
my $length = 400; # trunk size

say "<?xml version='1.0' encoding='utf-8' standalone='no'?>
<!DOCTYPE svg PUBLIC '-//W3C//DTD SVG 1.1//EN'
'http://www.w3.org/Graphics/SVG/1.1/DTD/svg11.dtd'>
<svg width='100%' height='100%' version='1.1'
xmlns='http://www.w3.org/2000/svg'>";

tree($width/2, $height, $length, 3*pi/2);

say "</svg>";

multi tree($, $, $length where { $length < 1}, $) {}
multi tree($x, $y, $length, $angle)
{
	my ($x2, $y2) = ( $x + $length * $angle.cos, $y + $length * $angle.sin);
	say "<line x1='$x' y1='$y' x2='$x2' y2='$y2' style='stroke:rgb(0,0,0);stroke-width:1'/>";
	tree($x2, $y2, $length*$scale, $angle + pi/5);
	tree($x2, $y2, $length*$scale, $angle - pi/5);
}
#---------------------------------------------------------------- 395 fractran-1
sub fractran(@program) {
    2, { first Int, map (* * $_).narrow, @program } ... 0
}
say fractran(<17/91 78/85 19/51 23/38 29/33 77/29 95/23 77/19 1/17 11/13 13/11
        15/14 15/2 55/1>)[^100];
#---------------------------------------------- 396 free-polyominoes-enumeration
# 20250901 Raku programming solution

class Point { has Int ( $.x, $.y );
   method rotate90  { Point.new(x =>  self.y, y => -self.x) }
   method rotate180 { Point.new(x => -self.x, y => -self.y) }
   method rotate270 { Point.new(x => -self.y, y =>  self.x) }
   method reflect   { Point.new(x => -self.x, y =>  self.y) }
}

sub normalize-points(@cells --> Array[Point]) {
   my $minx   = @cells.map(*.x).min;
   my $miny   = @cells.map(*.y).min;
   my @sorted = @cells.map({ Point.new(x => .x - $minx, y => .y - $miny) })
                   .sort({ $^a.y <=> $^b.y || $^a.x <=> $^b.x });
   return Array[Point].new: @sorted
}

sub points-to-key(@points --> Str) { @points.map({ "{.x},{.y}" }).join(';') }

sub key-to-points(Str $key --> Array[Point]) {
   return Array[Point].new: gather for $key.split(';') {
      given .split(',') { take Point.new: x => +.[0], y => +.[1] }
   }
}

sub transforms(@cells --> Seq) {
   return gather {
      my @p = @cells;
      take @p;                       # identity
      take @p .= map(*.rotate90);    # 90 deg
      take @p .= map(*.rotate90);    # 180 deg
      take @p .= map(*.rotate90);    # 270 deg
      @p = @cells.map(*.reflect);
      take @p;                       # reflection
      take @p .= map(*.rotate90);    # reflect + 90
      take @p .= map(*.rotate90);    # reflect + 180
      take @p .= map(*.rotate90);    # reflect + 270
   }
}

sub canonical(@cells --> Str) {
   state %canon-cache;
   my $initial-key = points-to-key(normalize-points(@cells));
   return %canon-cache{$initial-key} if %canon-cache{$initial-key}:exists;

   my $best = transforms(@cells).map({points-to-key(normalize-points($_))}).max;
   return %canon-cache{$initial-key} = $best;
}

sub neighbors(@cells --> SetHash) {
   my SetHash $in .= new: @cells.map: { "{.x},{.y}" };
   state @dirs = ( [1,0], [-1,0], [0,1], [0,-1] );
   my SetHash $nbrs .= new;
   for @cells X @dirs -> ($c,@d) {
      my $key = "{$c.x + @d[0]},{$c.y + @d[1]}";
      $nbrs{$key} = True unless $in{$key}:exists;
   }
   return $nbrs
}

sub grow-one(Str $canon-key --> SetHash) {
   my @cells = key-to-points($canon-key);
   my SetHash $out .= new;
   for neighbors(@cells).keys -> $kk {
      my ($nx, $ny) = $kk.split(',');
      my @new = |@cells, Point.new: x => +$nx, y => +$ny;
      $out{ canonical(@new) } = True;
   }
   return $out
}

sub parse-canonical-for-render(Str $canon --> Array) {
   $canon.split(';').map({ [ .split(',')>>.Int ] }).Array
}

sub render(Str $canon --> Str) {
   my @cells = parse-canonical-for-render($canon);
   my $maxx  = @cells.map(*[0]).max // 0;
   my $maxy  = @cells.map(*[1]).max // 0;
   my @rows  = ' ' x ($maxx + 1) xx ($maxy + 1);
   for @cells -> @c { @rows[@c[1]].substr-rw(@c[0], 1) = '#' }
   while ([&&] @rows.map({ .starts-with(' ') })) { @rows .= map({.substr(1)}) }
   while ([&&] @rows.map({   .ends-with(' ') })) { @rows .= map({ .chop })    }
   return @rows.join("\n")
}

sub (Int $n) {
   my @levels = [ my $level = { '0,0' => True }.SetHash ];

   for 2..$n -> $size {
      my SetHash $next .= new;
      for $level.keys -> $canon-key {
         for grow-one($canon-key).keys -> $child { $next{$child} = True }
      }
      @levels.push($level = $next);
   }

   for 2..$n -> $i {
      my $L = @levels[$i-1];
      printf "rank: %2d  count: %d\n\n", $i, $L.elems;
      if $L.elems <= 12 {
         my @keys   = $L.keys.sort;
         my @grids  = @keys.map(&render);
         my @widths = @grids.map({given .lines { $_ ?? $_[0].chars + 1 !! 1 }});
         my $fmt    = @widths.map({ "%{$_}s" }).join('') ~ "\n";
         my $max_h  = @grids.map({ .lines.elems }).max;
         for ^$max_h -> $row {
            print "  ";
            printf $fmt, @grids.map({ .lines[$row] // '' });
         }
         print "\n\n";
      }
   }
}(10)
#------------------------------------------------ 397 french-republican-calendar
use v6;
constant @month_names = <
    Vendémiaire Brumaire Frimaire  Nivôse   Pluviôse  Ventôse
    Germinal    Floréal  Prairial  Messidor Thermidor Fructidor
>;
constant @intercalary =
    'Fête de la vertu',  'Fête du génie',        'Fête du travail',
    "Fête de l'opinion", 'Fête des récompenses', 'Fête de la Révolution',
;
constant %month_nums  = %( @month_names Z=> 1..12 );
constant %i_cal_nums  = %( @intercalary Z=> 1.. 6 );
constant $i_cal_month = 13;
constant $epoch       = Date.new: '1792-09-22';

sub is_republican_leap_year ( Int:D $year --> Bool ) {
    my $y := $year + 1;
    return ?( $y %% 4 and ($y !%% 100 or $y %% 400) );
}

sub Republican_to_Gregorian ( Str:D $rep_date --> Date ) {
    grammar Republican_date_text {
        token day   { \d+ }
        token year  { \d+ }
        token ic    { @intercalary }
        token month { @month_names }
        rule TOP    { ^ [ <ic> | <day> <month> ] <year> $ }
    }

    Republican_date_text.parse($rep_date)
        orelse die "Republican date not recognized: '$rep_date'";

    my $day1   := $/<ic>    ?? %i_cal_nums{~$/<ic>}    !! +$/<day>;
    my $month1 := $/<month> ?? %month_nums{~$/<month>} !! $i_cal_month;

    my @ymd0 := ($/<year>, $month1, $day1) »-» 1;
    my $days_since_epoch := [+] @ymd0 Z* (365, 30, 1);

    my $leap_days := +grep &is_republican_leap_year, 1 ..^ $/<year>;
    return $epoch + $days_since_epoch + $leap_days;
}

sub Gregorian_to_Republican ( Date:D $greg_date --> Str ) {
    my $days_since_epoch := $greg_date - $epoch;
    die if $days_since_epoch < 0;

    my ( $year, $days ) = 1, $days_since_epoch;
    loop {
        my $year_length = 365 + (1 if $year.&is_republican_leap_year);
        last if $days < $year_length;
        $days -= $year_length;
        $year += 1;
    }

    my ( $day0, $month0 ) = $days.polymod( 30 );
    my ( $day1, $month1 ) = ($day0, $month0) X+ 1;

    return $month1 == $i_cal_month
        ??       "@intercalary[$day0  ] $year"
        !! "$day1 @month_names[$month0] $year";
}

my @test_data =
    ( '1792-09-22', '1 Vendémiaire 1' ),
    ( '1795-05-20', '1 Prairial 3' ),
    ( '1799-07-15', '27 Messidor 7' ),
    ( '1803-09-23', 'Fête de la Révolution 11' ),
    ( '1805-12-31', '10 Nivôse 14' ),

    ( '1871-03-18', '27 Ventôse 79' ),
    ( '1944-08-25', '7 Fructidor 152' ),
    ( '2016-09-19', 'Fête du travail 224' ),

    ( '1871-05-06', '16 Floréal 79'  ), # Paris Commune begins
    ( '1871-05-23', '3 Prairial 79'  ), # Paris Commune ends
    ( '1799-11-09', '18 Brumaire 8'  ), # Revolution ends by Napoléon coup
    ( '1804-12-02', '11 Frimaire 13' ), # Republic   ends by Napoléon coronation
    ( '1794-10-30', '9 Brumaire 3'   ), # École Normale Supérieure established
    ( '1794-07-27', '9 Thermidor 2'  ), # Robespierre falls
    ( '1799-05-27', '8 Prairial 7'   ), # Fromental Halévy born

    ( '1792-09-22', '1 Vendémiaire 1'   ),
    ( '1793-09-22', '1 Vendémiaire 2'   ),
    ( '1794-09-22', '1 Vendémiaire 3'   ),
    ( '1795-09-23', '1 Vendémiaire 4'   ),
    ( '1796-09-22', '1 Vendémiaire 5'   ),
    ( '1797-09-22', '1 Vendémiaire 6'   ),
    ( '1798-09-22', '1 Vendémiaire 7'   ),
    ( '1799-09-23', '1 Vendémiaire 8'   ),
    ( '1800-09-23', '1 Vendémiaire 9'   ),
    ( '1801-09-23', '1 Vendémiaire 10'  ),
    ( '1802-09-23', '1 Vendémiaire 11'  ),
    ( '1803-09-24', '1 Vendémiaire 12'  ),
    ( '1804-09-23', '1 Vendémiaire 13'  ),
    ( '1805-09-23', '1 Vendémiaire 14'  ),
    ( '1806-09-23', '1 Vendémiaire 15'  ),
    ( '1807-09-24', '1 Vendémiaire 16'  ),
    ( '1808-09-23', '1 Vendémiaire 17'  ),
    ( '1809-09-23', '1 Vendémiaire 18'  ),
    ( '1810-09-23', '1 Vendémiaire 19'  ),
    ( '1811-09-24', '1 Vendémiaire 20'  ),
    ( '2015-09-23', '1 Vendémiaire 224' ),
    ( '2016-09-22', '1 Vendémiaire 225' ),
    ( '2017-09-22', '1 Vendémiaire 226' ),
;

for @test_data -> ( $g_text, $r ) {
    my $g = Date.new: $g_text;

    die if Republican_to_Gregorian($r) != $g
        or Gregorian_to_Republican($g) ne $r;

    die if Gregorian_to_Republican(Republican_to_Gregorian($r)) ne $r
        or Republican_to_Gregorian(Gregorian_to_Republican($g)) != $g;
}
say 'All tests successful.';
#--------------------------------------------------------- 398 frobenius-numbers
say "{+$_} matching numbers\n{.batch(10)».fmt('%4d').join: "\n"}\n"
    given (^1000).grep( *.is-prime ).rotor(2 => -1)
    .map( { (.[0] * .[1] - .[0] - .[1]) } ).grep(* < 10000);
#------------------------------------------------------ 399 function-composition
sub triple($n) { 3 * $n }
my &f = &triple ∘ &prefix:<-> ∘ { $^n + 2 };
say &f(5); # prints "-21".
#-------------------------------------------------- 400 functional-coverage-tree
sub walktree ($data) {
    my (@parts, $cnt);

    while ($data ~~ m:nth(++$cnt)/$<head>=[(\s*)    \N+\n  ]      # split off one level as 'head' (or terminal 'leaf')
                                  $<body>=[[$0  \s+ \N+\n]*]/ ) { # next sub-level is 'body' (defined by extra depth of indentation)

        my ($head, $body) = ($<head>, $<body>);
        $head ~~ /'|' $<weight>=[\S*] \s* '|' $<coverage>=[\S*]/; # save values of weight and coverage (if any) for later

        my ($w, $wsum) = (0, 0);
        $head ~= .[0],
        $w    += .[1],
        $wsum += .[1] * .[2]
            for walktree $body;

        my $weight   = (~$<weight>   or 1).fmt('%-8s');
        my $coverage = $w == 0
                    ?? (~$<coverage> or 0).fmt('%-10s')
                    !! ($wsum/$w)         .fmt('%-10.2g');
        @parts.push: [$head.subst(/'|' \N+/, "|$weight|$coverage|"), $weight, $coverage ];
    }
    return @parts;
}

(say .[0] for walktree $_) given

    q:to/END/
    NAME_HIERARCHY                  |WEIGHT  |COVERAGE  |
    cleaning                        |        |          |
        house1                      |40      |          |
            bedrooms                |        |0.25      |
            bathrooms               |        |          |
                bathroom1           |        |0.5       |
                bathroom2           |        |          |
                outside_lavatory    |        |1         |
            attic                   |        |0.75      |
            kitchen                 |        |0.1       |
            living_rooms            |        |          |
                lounge              |        |          |
                dining_room         |        |          |
                conservatory        |        |          |
                playroom            |        |1         |
            basement                |        |          |
            garage                  |        |          |
            garden                  |        |0.8       |
        house2                      |60      |          |
            upstairs                |        |          |
                bedrooms            |        |          |
                    suite_1         |        |          |
                    suite_2         |        |          |
                    bedroom_3       |        |          |
                    bedroom_4       |        |          |
                bathroom            |        |          |
                toilet              |        |          |
                attics              |        |0.6       |
            groundfloor             |        |          |
                kitchen             |        |          |
                living_rooms        |        |          |
                    lounge          |        |          |
                    dining_room     |        |          |
                    conservatory    |        |          |
                    playroom        |        |          |
                wet_room_&_toilet   |        |          |
                garage              |        |          |
                garden              |        |0.9       |
                hot_tub_suite       |        |1         |
            basement                |        |          |
                cellars             |        |1         |
                wine_cellar         |        |1         |
                cinema              |        |0.75      |
    END
#----------------------------------------------------------- 401 fusc-sequence-1
my @Fusc = 0, 1, 1, { |(@Fusc[$_ - 1] + @Fusc[$_], @Fusc[$_]) given ++$+1 } ... *;

sub comma { $^i.flip.comb(3).join(',').flip }

put "First 61 terms of the Fusc sequence:\n{@Fusc[^61]}" ~
    "\n\nIndex and value for first term longer than any previous:";

for flat 'Index', 'Value', 0, 0, (1..4).map({
    my $l = 10**$_;
    @Fusc.first(* > $l, :kv).map: &comma
  }) -> $i, $v {
      printf "%15s : %s\n", $i, $v
}
#----------------------------------------------------------- 402 fusc-sequence-2
multi fusc( 0 ) { 0 }
multi fusc( 1 ) { 1 }
multi fusc( $n where $n %% 2 ) { fusc $n div 2 }
multi fusc( $n ) { [+] map *.&fusc, ( $n - 1 ) div 2, ( $n + 1 ) div 2 }
put map *.&fusc, 0..60;
#---------------------------------------------------------- 403 gabows-algorithm
# 20250415 Raku programming solution

my subset Vertex      of UInt;
my subset ComponentId of UInt;

class Digraph {
   has Int $.vertex-count is readonly;
   has Int $.edge-count is rw = 0;
   has     @.adjacency-lists;

   method new(Int $vertex-count where * >= 0) { # Constructor
      self.bless( vertex-count    => $vertex-count,
                  adjacency-lists => [ [] xx $vertex-count ] )
   }

   method add-edge(Vertex $from, Vertex $to) { # Add a directed edge
      self!validate-vertex($from);
      self!validate-vertex($to);
      @!adjacency-lists[$from].push($to);
      $!edge-count++;
   }

   method adjacency-list(Vertex $vertex) { # Get adjacency list for a vertex
      self!validate-vertex($vertex);
      @!adjacency-lists[$vertex];
   }

   method !validate-vertex(Vertex $vertex) { # Validate vertex index
      if $vertex >= $!vertex-count {
         die "Vertex $vertex is not between 0 and {$!vertex-count - 1}";
      }
   }

   method gist { # String representation
      return [~] [
         "Digraph has $!vertex-count vertices and $!edge-count edges\n",
         "Adjacency lists:\n"
      ].append( gather for ^$!vertex-count -> $vertex {
         take sprintf("%2d: ", $vertex);
         take @!adjacency-lists[$vertex].sort.Str ~ "\n"
      })
   }
}

class GabowSCC {
   has Bool   @.visited;
   has Int    @.component-ids; # Using Int with -1 as None equivalent
   has Int    @.preorders;     # Using Int with -1 as None equivalent
   has Int    $.preorder-count is rw = 0;
   has Int    $.scc-count is rw = 0;
   has Vertex @.visited-vertices-stack;
   has Vertex @.auxiliary-stack;

   method new(Digraph $digraph) { # Constructor
      my $n    = $digraph.vertex-count;
      my $self = self.bless(
         visited                => False xx $n,
         component-ids          => (-1) xx $n,
         preorders              => (-1) xx $n,
         visited-vertices-stack => [],
         auxiliary-stack        => []
      );

      for ^$n -> $vertex {
         $self!depth-first-search($digraph, $vertex) unless $self.visited[$vertex]
      }
      $self;
   }

   # Depth-first search for Gabow's algorithm
   method !depth-first-search(Digraph $digraph, Vertex $vertex) {
      @!visited[$vertex]   = True;
      @!preorders[$vertex] = $!preorder-count++;
      @!visited-vertices-stack.push($vertex);
      @!auxiliary-stack.push($vertex);

      for $digraph.adjacency-list($vertex).List -> $adjacent {
         if !@!visited[$adjacent] {
            self!depth-first-search($digraph, $adjacent)
         } else {
            if @!component-ids[$adjacent] == -1 {
               my $adjacent-preorder = @!preorders[$adjacent];
               while @!auxiliary-stack && @!preorders[@!auxiliary-stack[*-1]] > $adjacent-preorder {
                  @!auxiliary-stack.pop;
               }
            }
         }
      }

      if @!auxiliary-stack && @!auxiliary-stack[*-1] == $vertex {
         @!auxiliary-stack.pop;
         loop {
            my $scc-member = @!visited-vertices-stack.pop // die "Visited stack empty";
            @!component-ids[$scc-member] = $!scc-count;
            last if $scc-member == $vertex;
         }
         $!scc-count++;
      }
   }

   method get-component-id(Vertex $vertex) { # Get component ID for a vertex
       self!validate-vertex($vertex);
       @!component-ids[$vertex] == -1 ?? Nil !! @!component-ids[$vertex];
   }

   # Check if two vertices are strongly connected
   method is-strongly-connected(Vertex $v, Vertex $w) {
      self!validate-vertex($v);
      self!validate-vertex($w);
      @!component-ids[$v] != -1 && @!component-ids[$w] != -1 && @!component-ids[$v] == @!component-ids[$w];
   }

   method get-components() { # Get all components
      my @components = [] xx $!scc-count;
      for @!component-ids.kv -> $vertex, $id {
         if $id != -1 {
            $id < $!scc-count
               ?? @components[$id].push($vertex)
               !! note "Warning: Vertex $vertex has invalid SCC ID $id"
         }
      }
      @components.map: *.sort
   }

   method !validate-vertex(Vertex $vertex) { # Validate vertex index
      given my $n = @!visited.elems {
         die "Vertex $vertex is not between 0 and {$n - 1}" if $vertex >= $n
      }
   }
}

my @edges = [ <4 2>, <2 3>, <3 2>, <6 0>, <0 1>, <2 0>, <11 12>, <12 9>,
              <9 10>, <9 11>, <8 9>, <10 12>, <0 5>, <5 4>, <3 5>, <6 4>,
              <6 9>, <7 6>, <7 8>, <8 7>, <5 3>, <0 6>
            ].map: { ( from => .[0], to => .[1] ).Hash };
my $vertex-count = 13;
my $digraph = Digraph.new($vertex-count);

for @edges -> $edge { $digraph.add-edge($edge<from>, $edge<to>) }

print "Constructed digraph:" ~ $digraph.gist;

my $gabow-scc = GabowSCC.new($digraph);
say "It has $gabow-scc.scc-count() strongly connected components.";

my @components = $gabow-scc.get-components();
say "\nComponents:";
for @components.kv -> $i, @component {
   say "Component $i: " ~ @component.Str if @component.Bool;
}

say "\nExample connectivity checks:";
for ( <0 3>, <0 7>, <9 12> ) -> ($i,$j) {
   say "Vertices $i and $j strongly connected? {$gabow-scc.is-strongly-connected($i, $j)}"
}

say "Component ID of vertex 5: {$gabow-scc.get-component-id(5) // 'None'}";
say "Component ID of vertex 8: {$gabow-scc.get-component-id(8) // 'None'}";

(my $id = $gabow-scc.get-component-id(5)).defined
   ?? say "Component ID of vertex 5 (explicit handling): $id"
   !! say "Vertex 5 has no assigned component ID.";
#------------------------------------------------------------ 404 gamma-function
sub Γ(\z) {
    constant g = 9;
    z < .5 ?? pi/ sin(pi * z) / Γ(1 - z) !!
    sqrt(2*pi) *
    (z + g - 1/2)**(z - 1/2) *
    exp(-(z + g - 1/2)) *
    [+] <
        1.000000000000000174663
     5716.400188274341379136
   -14815.30426768413909044
    14291.49277657478554025
    -6348.160217641458813289
     1301.608286058321874105
     -108.1767053514369634679
        2.605696505611755827729
       -0.7423452510201416151527e-2
        0.5384136432509564062961e-7
       -0.4023533141268236372067e-8
    > Z* 1, |map 1/(z + *), 0..*
}

say Γ($_) for 1/3, 2/3 ... 10/3;
#--------------------------------------------- 405 gauss-jordan-matrix-inversion
sub gauss-jordan-invert (@m where &is-square) {
    ^@m .map: { @m[$_].append: identity(+@m)[$_] };
    @m.&rref[*]»[+@m .. *];
}

sub is-square (@m) { so @m == all @m[*] }

sub identity ($n) { [ 1, |(0 xx $n-1) ], *.rotate(-1).Array ... *.tail }

# reduced row echelon form (from 'Gauss-Jordan elimination' task)
sub rref (@m) {
    my ($lead, $rows, $cols) = 0, @m, @m[0];

    for ^$rows -> $r {
        $lead < $cols or return @m;
        my $i = $r;
        until @m[$i;$lead] {
            ++$i == $rows or next;
            $i = $r;
            ++$lead == $cols and return @m;
        }
        @m[$i, $r] = @m[$r, $i] if $r != $i;
        @m[$r] »/=» $ = @m[$r;$lead];
        for ^$rows -> $n {
            next if $n == $r;
            @m[$n] »-=» @m[$r] »×» (@m[$n;$lead] // 0);
        }
        ++$lead;
    }
    @m
}
sub rat-or-int ($num) {
    return $num unless $num ~~ Rat|FatRat;
    return $num.narrow if $num.narrow ~~ Int;
    $num.nude.join: '/';
}

sub say_it ($message, @array) {
    my $max;
    @array.map: {$max max= max $_».&rat-or-int.comb(/\S+/)».chars};
    say "\n$message";
    $_».&rat-or-int.fmt(" %{$max}s").put for @array;
}

multi to-matrix ($str) { [$str.split(';').map(*.words.Array)] }
multi to-matrix (@array) { @array }

sub hilbert-matrix ($h) {
    [ (1..$h).map( -> $n { [ ($n ..^ $n + $h).map: { (1/$_).FatRat } ] } ) ]
}

my @tests =
    '1 2 3; 4 1 6; 7 8 9',
    '2 -1 0; -1 2 -1; 0 -1 2',
    '-1 -2 3 2; -4 -1 6 2; 7 -8 9 1; 1 -2 1 3',
    '1 2 3 4; 5 6 7 8; 9 33 11 12; 13 14 15 17',
    '3 1 8 9 6; 6 2 8 10 1; 5 7 2 10 3; 3 2 7 7 9; 3 5 6 1 1',

    # Test with a Hilbert matrix
    hilbert-matrix 10;

@tests.map: {
    my @matrix = .&to-matrix;
    say_it( " {'=' x 20} Original Matrix: {'=' x 20}", @matrix );
    say_it( ' Gauss-Jordan Inverted:', my @invert = gauss-jordan-invert @matrix );
    say_it( ' Re-inverted:', gauss-jordan-invert @invert».Array );
}
#------------------------------------------------------ 406 gaussian-elimination
sub gauss-jordan-solve (@a, @b) {
    @b.kv.map: { @a[$^k].append: $^v };
    @a.&rref[*]»[*-1];
}

# reduced row echelon form
sub rref (@m) {
    my ($lead, $rows, $cols) = 0, @m, @m[0];

    for ^$rows -> $r {
        $lead < $cols or return @m;
        my $i = $r;
        until @m[$i;$lead] {
            ++$i == $rows or next;
            $i = $r;
            ++$lead == $cols and return @m;
        }
        @m[$i, $r] = @m[$r, $i] if $r != $i;
        @m[$r] »/=» $ = @m[$r;$lead];
        for ^$rows -> $n {
            next if $n == $r;
            @m[$n] »-=» @m[$r] »×» (@m[$n;$lead] // 0);
        }
        ++$lead;
    }
    @m
}

sub rat-or-int ($num) {
    return $num unless $num ~~ Rat;
    return $num.narrow if $num.narrow ~~ Int;
    $num.nude.join: '/';
}

sub say-it ($message, @array, $fmt = " %8s") {
    say "\n$message";
    $_».&rat-or-int.fmt($fmt).put for @array;
}

my @a = (
    [ 1.00, 0.00, 0.00,  0.00,  0.00,   0.00 ],
    [ 1.00, 0.63, 0.39,  0.25,  0.16,   0.10 ],
    [ 1.00, 1.26, 1.58,  1.98,  2.49,   3.13 ],
    [ 1.00, 1.88, 3.55,  6.70, 12.62,  23.80 ],
    [ 1.00, 2.51, 6.32, 15.88, 39.90, 100.28 ],
    [ 1.00, 3.14, 9.87, 31.01, 97.41, 306.02 ],
);
my @b = ( -0.01, 0.61, 0.91, 0.99, 0.60, 0.02 );

say-it 'A matrix:', @a, "%6.2f";
say-it 'or, A in exact rationals:', @a;
say-it 'B matrix:', @b, "%6.2f";
say-it 'or, B in exact rationals:', @b;
say-it 'x matrix:', (my @gj = gauss-jordan-solve @a, @b), "%16.12f";
say-it 'or, x in exact rationals:', @gj, "%28s";
#-------------------------------------------------------- 407 general-fizzbuzz-1
# General case implementation of a "FizzBuzz" class.
# Defaults to standard FizzBuzz unless a new schema is passed in.
class FizzBuzz {
    has $.schema is rw = < 3 Fizz 5 Buzz >.hash;
    method filter (Int $this) {
        my $fb;
        for $.schema.sort: { +.key } -> $p { $fb ~= $this %% +$p.key ?? $p.value !! ''};
        return $fb || $this;
    }
}


# Sub implementing the specific requirements of the task.
sub GeneralFizzBuzz (Int $upto, @schema?) {
    my $ping = FizzBuzz.new;
    $ping.schema = @schema.hash if @schema;
    map { $ping.filter: $_ }, 1 .. $upto;
}

# The task
say 'Using: 20 ' ~ <3 Fizz 5 Buzz 7 Baxx>;
.say for GeneralFizzBuzz(20, <3 Fizz 5 Buzz 7 Baxx>);

say '';

# And for fun
say 'Using: 21 ' ~ <2 Pip 4 Squack 5 Pocketa 7 Queep>;
say join ', ', GeneralFizzBuzz(21, <2 Pip 4 Squack 5 Pocketa 7 Queep>);
#-------------------------------------------------------- 408 general-fizzbuzz-2
sub genfizzbuzz($n, +@fb) {
    [Z~](
        do for @fb || <3 fizz 5 buzz> -> $i, $s {
            flat ('' xx $i-1, $s) xx *;
        }
    ) Z|| 1..$n
}

.say for genfizzbuzz(20, <3 Fizz 5 Buzz 7 Baxx>);
#--------------------------------------- 409 generalised-floating-point-addition
my $e = 63;
for -7..21 -> $n {
    my $num = '12345679' ~ '012345679' x ($n+7);
    my $sum = $_ + ($num * $_) * 81 given $e > -20 ?? 10**$e !! Rat.new(1,10**abs $e);
    printf "$n:%s ", 10**72 == $sum ?? 'Y' !! 'N';
    $e -= 9;
}
#--------------------------------- 410 generalised-floating-point-multiplication
# 20260401 Raku programming solution

class BalancedTernary {
   # Digits as an array of (-1, 0, 1). Index 0 is the Most Significant Digit.
   has Int @.dig is rw;
   has Int $.p   is rw = 0;
   constant MAX_PRECISION = 81;

   multi method new(Str $s is copy) {
      return self.bless(
         p   => $s.chars - 1 - $s.index('.'),
         dig => ($s.subst('.', '')).comb.map: { when '-' { -1 }
                                                when '+' {  1 }
                                                default  {  0 } } )
   }

   multi method new(Int $n) {
      my ($abs-n, @d) = $n.abs;
      if $n == 0 { return self.bless: dig => [0], p => 0 }

      $abs-n == 0  # Convert to standard base 3
         ?? ( @d = [0] )
         !! do loop (my $tmp=$abs-n;$tmp > 0;$tmp div= 3) { @d.unshift($tmp%3) }

      if $n < 0 { @d .= map(* * -1) } # Apply sign
      return self.bless(dig => @d, p => 0).canonicalize;
   }

   multi method new(Real $x) {
      if $x == 0 { return self.new(0) }
      given self.new( ($x * (3 ** MAX_PRECISION)).round ) {
         .p = MAX_PRECISION and return .canonicalize
      }
   }

   multi method new() { return self.bless(dig => [0], p => 0) }

   # Helper to create object without re-parsing
   method create-raw(@d, $p) { return self.bless(dig => @d, p => $p) }

   # Core Logic
   method canonicalize() {
      loop (my $i = @!dig.end; $i >= 0; $i--) { # from Right (LSB) to Left (MSB)
         if @!dig[$i] > 1 {
            @!dig[$i] -= 3;
            if $i == 0 {
               @!dig.unshift(1);
               $i++; # Adjust index to stay on current digit
            } else {
               @!dig[$i - 1] += 1;
            }
         } elsif @!dig[$i] < -1 {
            @!dig[$i] += 3;
            if $i == 0 {
               @!dig.unshift(-1);
               $i++; # Adjust index
            } else {
               @!dig[$i - 1] -= 1;
            }
         }
      }

      while @!dig.elems > 1 && @!dig[0] == 0 { @!dig.shift } # Trim leading 0s

      while $!p > 0 && @!dig.elems > 0 && @!dig[*-1] == 0 { # Trim if decimal
         @!dig.pop;
         $!p--
      }
      if @!dig.elems == 0 { @!dig = [0] }
      return self
   }

   method Str() {
      self.canonicalize;
      my $s = @!dig.map({ when -1 { '-' }
                          when 0  { '0' }
                          when 1  { '+' } }).join;
      if $!p > 0 {
         $s = do if $!p < $s.chars {
            $s.substr(0, * - $!p) ~ "." ~ $s.substr(* - $!p);
         } elsif $!p == $s.chars {
            "0." ~ $s;
         } else {
            "0." ~ ("0" x ($!p - $s.chars)) ~ $s;
         }
      }
      return $s
   }

   method to-BigFloat() {
      my ($val, $int-val) = 0.0, 0;
      for @!dig -> $d { $int-val = $int-val * 3 + $d }
      return $int-val / (3 ** $!p)
   }

   method neg() { return self.create-raw(@!dig.map(* * -1).Array, $!p) }

   method add(BalancedTernary $b) {
      my (@a-dig, @b-dig) := @!dig, $b.dig; # local copies

      my $p-diff = $!p - $b.p; # Align decimal points (Pad Right)
      given $p-diff { when * > 0 { @b-dig.append: |(0 xx  $p-diff) }
                      when * < 0 { @a-dig.append: |(0 xx -$p-diff) } }

      my $len-diff = @a-dig.elems - @b-dig.elems; # Align INT parts (Pad Left)
      given $len-diff { when * > 0 { @b-dig.unshift: |(0 xx  $len-diff) }
                        when * < 0 { @a-dig.unshift: |(0 xx -$len-diff) } }
      my @sum = gather for 0..@a-dig.end -> $i { take @a-dig[$i] + @b-dig[$i] }

      return self.create-raw(@sum, max($!p, $b.p)).canonicalize
   }

   method mul(BalancedTernary $b) {
      my $res = self.new(0);

      for 0..$b.dig.end -> $i { # Convolution
         # Iterate B digits from right to left
         my $digit = $b.dig[$b.dig.end - $i];
         next if $digit == 0;

         my @partial = @!dig.map(* * $digit); # Multiply A by current digit
         @partial.append: |(0 xx $i); # Shift Left (Pad Right with zeros)

         $res += self.create-raw(@partial, 0) # (treat as integer for addition)
      }
      $res.p = $!p + $b.p; # Set final precision
      return $res.canonicalize
   }
}

multi sub  infix:<+>(BalancedTernary $a, BalancedTernary $b) { $a.add($b) }
multi sub  infix:<->(BalancedTernary $a, BalancedTernary $b) { $a + (-$b) }
multi sub  infix:<*>(BalancedTernary $a, BalancedTernary $b) { $a.mul($b) }
multi sub prefix:<->(BalancedTernary $a) { $a.neg }

sub code-reuse-task($T) {
   my $a = $T.new("+-0++0+.+-0++0+");
   my $b = $T.new(-436.436e0);
   my $c = $T.new("+-++-.+-++-");

   say " a = {$a.Str} = {$a.to-BigFloat.fmt("%.5f")}";
   say " b = {$b.Str} = {$b.to-BigFloat.fmt("%.5f")}";
   say " c = {$c.Str} = {$c.to-BigFloat.fmt("%.5f")}";

   my $result = $a * ($b - $c);

   say "\na * (b - c) = {$result.Str}";
   say " = {$result.to-BigFloat.fmt("%.5f")}";

   say "\n           Multiplication 27 X 12";
   say " x|+ (1)  |+- (2) |+0 (3) |++ (4) |+-- (5)|+-0 (6)|+-+ (7)|+0- (8)|+e+-(9)|+0+(10)|++-(11)|++0(12)|";

   for 1..27 -> $i {
      printf "%2d|", $i;
      for 1..12 -> $j { printf "%7s|",  ($T.new($i) * $T.new($j)).Str }
      print "\n"
   }
}

code-reuse-task(BalancedTernary);
#------------------------------------- 411 generate-chess960-starting-position-3
constant chess960 =
   < ♛ ♜ ♜ ♜ ♝ ♝ ♞ ♞ >.permutations».join.unique.grep( / '♝' [..]* '♝' / )».subst(:nth(2), /'♜'/, '♚');

.say for chess960;
#---------------------------------------- 412 generate-lower-case-ascii-alphabet
say my @letters = 'a'..'z';
#----------------------------------------------------- 413 generator-exponential
sub powers($m) { 0..* X** $m }

my @squares = powers(2);
my @cubes   = powers(3);

sub infix:<with-out> (@orig, @veto) {
    gather for @veto -> $veto {
        take @orig.shift while @orig[0] before $veto;
        @orig.shift if @orig[0] eqv $veto;
    }
}

say (@squares with-out @cubes)[20 ..^ 20+10].join(', ');
#----------------------------------------------------------------- 414 geohash-2
my @Geo32 = <0 1 2 3 4 5 6 7 8 9 b c d e f g h j k m n p q r s t u v w x y z>;

sub geo-encode ( Rat(Real) $latitude, Rat(Real) $longitude, Int $precision = 9 ) {
    my @coord = $latitude, $longitude;
    my @range = [-90, 90], [-180, 180];
    my $which = 1;
    my $value = '';
    while $value.chars < $precision * 5 {
        my $mid = @range[$which].sum / 2;
        $value ~= my $upper = +(@coord[$which] > $mid);
        @range[$which][not $upper] = $mid;
        $which = not $which;
    }
    @Geo32[$value.comb(5)».parse-base(2)].join;
}

sub geo-decode ( Str $geo ) {
     my @range = [-90, 90], [-180, 180];
     my $which = 1;
     my %Geo32 = @Geo32.antipairs;
     for %Geo32{$geo.comb}».fmt('%05b').join.comb {
         @range[$which][$_] = @range[$which].sum / 2;
         $which = not $which;
     }
     @range
}

# TESTING

for 51.433718,   -0.214126,  2, # Ireland, most of England and Wales, small part of Scotland
    51.433718,   -0.214126,  9, # the umpire's chair on Center Court at Wimbledon
    51.433718,   -0.214126, 17, # likely an individual molecule of the chair
    57.649110,   10.407440, 11, # Wikipedia test value - Råbjerg Mile in Denmark
    59.358639,   24.744778,  7, # Lake Raku in Estonia
    29.2021188, 81.5324561,  7  # Village Raku in Nepal
  -> $lat, $long, $precision {
     say "$lat, $long, $precision:\ngeo-encoded: ",
     my $enc = geo-encode $lat, $long, $precision;
     say 'geo-decoded: ', geo-decode($enc).map( {-.sum/2 ~ ' ± ' ~
          (abs(.[0]-.[1])/2).Num.fmt('%.3e')} ).join(',  ') ~ "\n";
}
#--------------------------------------------------------- 415 geometric-algebra
class MultiVector is Mix {
  subset Vector of ::?CLASS is export where *.grades.all == 1;

  method narrow { self.keys.any > 0 ?? self !!  (self{0} // 0) }
  method grades { self.keys.map: *.base(2).comb.sum }

  multi method new(Real $x) returns ::?CLASS { self.new-from-pairs: 0 => $x }
  multi method new(Str $ where /^^e(\d+)$$/) { self.new-from-pairs: (1 +< (2*$0)) => 1 }

  our @e is export = map { ::?CLASS.new: "e$_" }, ^Inf;

  my sub order(UInt:D $i is copy, UInt:D $j) {
    (state %){$i}{$j} //= do {
      my $n = 0;
      repeat {
	$i +>= 1;
	$n += [+] ($i +& $j).polymod(2 xx *);
      } until $i == 0;
      $n +& 1 ?? -1 !! 1;
    }
  }

  sub infix:<·>(Vector $x, Vector $y) returns Real is export { (($x*$y + $y*$x)/2){0} }

  multi infix:<+>(::?CLASS $A, ::?CLASS $B) returns ::?CLASS is export {
    return ::?CLASS.new-from-pairs: |$A.pairs, |$B.pairs;
  }
  multi infix:<+>(Real $s, ::?CLASS $B) returns ::?CLASS is export {
    samewith $B.new($s), $B
  }
  multi infix:<+>(::?CLASS $A, Real $s) returns ::?CLASS is export {
    samewith $s, $A
  }

  multi infix:<*>(::?CLASS $,  0) is export { 0  }
  multi infix:<*>(::?CLASS $A, 1) returns ::?CLASS is export { $A }
  multi infix:<*>(::?CLASS $A, Real $s) returns ::?CLASS is export {
    ::?CLASS.new-from-pairs: $A.pairs.map({Pair.new: .key, $s*.value})
  }
  multi infix:<*>(::?CLASS $A, ::?CLASS $B) returns ::?CLASS is export {
    ::?CLASS.new-from-pairs: gather
      for $A.pairs -> $a {
	for $B.pairs -> $b {
	  take ($a.key +^ $b.key) => [*]
	    $a.value, $b.value,
	    order($a.key, $b.key),
	    |grep +*, (
		|(1, -1) xx * Z*
		($a.key +& $b.key).polymod(2 xx *)
	    )
	}
      }
  }
  multi infix:<**>(::?CLASS $ , 0) returns ::?CLASS is export { ::?CLASS.new: (0 => 1).Mix }
  multi infix:<**>(::?CLASS $A, 1) returns ::?CLASS is export { $A }
  multi infix:<**>(::?CLASS $A, 2) returns ::?CLASS is export { $A * $A }
  multi infix:<**>(::?CLASS $A, UInt $n where $n %% 2) returns ::?CLASS is export { ($A ** ($n div 2)) ** 2 }
  multi infix:<**>(::?CLASS $A, UInt $n) returns ::?CLASS is export { $A * ($A ** ($n div 2)) ** 2 }

  multi infix:<*>(Real $s, ::?CLASS $A) returns ::?CLASS is export { $A * $s }
  multi infix:</>(::?CLASS $A, Real $s) returns ::?CLASS is export { $A * (1/$s) }
  multi prefix:<->(::?CLASS $A) returns ::?CLASS is export { return -1 * $A }
  multi infix:<->(::?CLASS $A, ::?CLASS $B) returns ::?CLASS is export { $A + -$B }
  multi infix:<->(::?CLASS $A, Real $s) returns ::?CLASS is export { $A + -$s }
  multi infix:<->(Real $s, ::?CLASS $A) returns ::?CLASS is export { $s + -$A }

  multi infix:<==>(::?CLASS $A, 0) returns Bool is export { $A.elems == 0 }
  multi infix:<==>(::?CLASS $A, ::?CLASS $B) returns Bool is export { samewith $A - $B, 0 }
  multi infix:<==>(Real $x, ::?CLASS $A) returns Bool is export { samewith $A, $x }
  multi infix:<==>(::?CLASS $A, Real $x) returns Bool is export { samewith $A, $A.new($x); }

  sub random is export {
      [+] map {
	  ::?CLASS.new-from-pairs: $_ => rand.round(.01)
      }, ^32;
  }
}

#########################################
##  Test code to verify the solution:  ##
#########################################

import MultiVector;
use Test;

constant N = 10;
plan 5;

subtest "Orthonormality", {
  for ^N X ^N -> ($i, $j) {
    my $s = $i == $j ?? 1 !! 0;
    ok @e[$i]·@e[$j] == $s, "e$i·e$j = $s";
  }
}

my ($a, $b, $c) = random() xx 3;

ok ($a*$b)*$c == $a*($b*$c), 'associativity';
ok $a*($b + $c) == $a*$b + $a*$c, 'left distributivity';
ok ($a + $b)*$c == $a*$c + $b*$c, 'right distributivity';
my @coeff = (.5 - rand) xx 5;
my $v = [+] @coeff Z* @e[^5];
ok ($v**2).narrow ~~ Real, 'contraction';
#------------------------------------------------------------- 416 giuga-numbers
my @primes = (3..60).grep: &is-prime;

print 'First four Giuga numbers: ';

put sort flat (2..4).map: -> $c {
    @primes.combinations($c).map: {
        my $n = [×] 2,|$_;
        $n if all .map: { ($n / $_ - 1) %% $_ };
    }
}
#-------------------------------------------------- 417 golden-ratio-convergence
constant phi = 1.FatRat, 1 + 1/* ... { abs($^a-$^b)≤1e-5 };

say "It took {phi.elems} iterations to reach {phi.tail}";
say "The error is {{ ($^a - $^b)/$^b }(phi.tail, (1+sqrt(5))/2)}"
#-------------------------------------------------------- 418 goodstein-sequence
# 20240219 Raku programming solution

sub bump($n is copy, $b) {
   loop ( my ($res, $i) = 0, 0; $n.Bool or return $res; $i++,$n div= $b) {
      if my $d = $n % $b { $res += $d * ($b+1) ** bump($i,$b) }
   }
}

sub goodstein($n, $maxterms = 10) {
   my @res = $n;
   while @res.elems < $maxterms && @res[*-1] != 0 {
      @res.push(bump(@res[*-1], (@res.elems + 1)) - 1)
   }
   return @res
}

say "Goodstein(n) sequence (first 10) for values of n from 0 through 7:";
for 0..7 -> $i { say "Goodstein of $i: ", goodstein($i) }

my $max = 16;
say "\nThe Nth term of Goodstein(N) sequence counting from 0, for values of N from 0 through $max :";
for 0..$max -> $i { say "Term $i of Goodstein($i): {goodstein($i, $i+1)[*-1]}" }
#-------------------------------------------------------------- 419 gospers-hack
sub gosper (\x) {
    my \c = x +& -x;
    my \r = x + c;
    (((r +^ x) +> 2) / c) +| r
}

for 1..6 -> $bits {
    my @g = :2(1 x $bits), { gosper $_ } … *;
    say @g[^11].fmt('%8d');
    say @g[^11].fmt('%08b');
    say '';
}
#----------------------------------------------------------------- 420 gotchas-1
say 123 ~ 456; # join two integers together
say "12" + "5.7"; # add two numeric strings together
say .sqrt for <4 6 8>; # take the square root of several allomorphic numerics
#----------------------------------------------------------------- 421 gotchas-2
say my $bag = <a b a c a b d>.Bag;
say $bag{'a'}; # a count?
say $bag< a >; # another way
#----------------------------------------------------------------- 422 gotchas-3
say my $bag = (1, '1', '1', <1 1 1>).Bag;
say $bag{ 1 }; # how many 1s?
say $bag{'1'}; # wait, how many?
say $bag< 1 >; # WAT
dd $bag; # The different numeric types LOOK the same, but are different types behind the scenes
#----------------------------------------------------------------- 423 gotchas-4
.say for (1,2,3), (4,5,6);
#----------------------------------------------------------------- 424 gotchas-5
.say for (1,2,3);
#----------------------------------------------------------------- 425 gotchas-6
.say for (1,2,3),;
#----------------------------------------------------------------- 426 gotchas-7
.say for flat (1,2,3), (4,5,6);
#---------------------------------------------------------- 427 gradient-descent
# 20200904 Updated Raku programming solution

sub steepestDescent(@x, $alpha is copy, $h) {

   my $g0 = g |@x ; # Initial estimate of result.

   my @fi = gradG |@x ; #  Calculate initial gradient

   my $b = $alpha / my $delG = sqrt ( sum @fi»² ) ;  # Calculate initial norm.

   while ( $delG > $h ) {   # Iterate until value is <= tolerance.

      @x «-»= $b «*« @fi; #  Calculate next value.

      @fi = gradG |@x ; # Calculate next gradient and next value

      $b = $alpha / ($delG = sqrt( sum @fi»² ));  # Calculate next norm.

      my $g1 = g |@x ;

      $g1 > $g0 ?? ( $alpha /= 2 ) !! ( $g0 = $g1 )   # Adjust parameter.
   }
}

sub gradG(\x,\y) { # gives a rough calculation of gradient g(x).
   2*(x-1)*exp(-y²) - 4*x*exp(-2*x²)*y*(y+2) , -2*(x-1)²*y*exp(-y²) + exp(-2*x²)*(2*y+2)
}

# Function for which minimum is to be found.
sub g(\x,\y) { (x-1)² * exp(-y²) + y*(y+2) * exp(-2*x²) }

my $tolerance = 0.0000006 ; my $alpha = 0.1;

my @x = 0.1, -1; # Initial guess of location of minimum.

steepestDescent(@x, $alpha, $tolerance);

say "Testing steepest descent method:";
say "The minimum is at x[0] = ", @x[0], ", x[1] = ", @x[1];
#----------------------------------------------------------- 428 graph-colouring
sub GraphNodeColor(@RAW) {
   my %OneMany = my %NodeColor;
   for @RAW { %OneMany{$_[0]}.push: $_[1] ; %OneMany{$_[1]}.push: $_[0] }
   my @ColorPool = "0", "1" … ^+%OneMany.elems; # as string
   my %NodePool  = %OneMany.BagHash; # this DWIM is nice
   if %OneMany<NaN>:exists { %NodePool{$_}:delete for %OneMany<NaN>, NaN } # pending
   while %NodePool.Bool {
      my $color = @ColorPool.shift;
      my %TempPool = %NodePool;
      while (my \n = %TempPool.keys.sort.first) {
         %NodeColor{n} = $color;
         %TempPool{n}:delete;
         %TempPool{$_}:delete for @(%OneMany{n}) ; # skip neighbors as well
         %NodePool{n}:delete;
      }
   }
   if %OneMany<NaN>:exists { # islanders use an existing color
      %NodeColor{$_} = %NodeColor.values.sort.first for @(%OneMany<NaN>)
   }
   return %NodeColor
}

my \DATA = [
   [<0 1>,<1 2>,<2 0>,<3 NaN>,<4 NaN>,<5 NaN>],
   [<1 6>,<1 7>,<1 8>,<2 5>,<2 7>,<2 8>,<3 5>,<3 6>,<3 8>,<4 5>,<4 6>,<4 7>],
   [<1 4>,<1 6>,<1 8>,<3 2>,<3 6>,<3 8>,<5 2>,<5 4>,<5 8>,<7 2>,<7 4>,<7 6>],
   [<1 6>,<7 1>,<8 1>,<5 2>,<2 7>,<2 8>,<3 5>,<6 3>,<3 8>,<4 5>,<4 6>,<4 7>],
];

for DATA {
   say "DATA   : ", $_;
   say "Result : ";
   my %out = GraphNodeColor $_;
   say "$_[0]-$_[1]:\t Color %out{$_[0]} ",$_[1].isNaN??''!!%out{$_[1]} for @$_;
   say "Nodes  : ", %out.keys.elems;
   say "Edges  : ", $_.elems;
   say "Colors : ", %out.values.Set.elems;
}
#----------------------------------------------------------------- 429 gray-code
sub gray_encode ( Int $n --> Int ) {
    return $n +^ ( $n +> 1 );
}

sub gray_decode ( Int $n is copy --> Int ) {
    my $mask = 1 +< (32-2);
    $n +^= $mask +> 1 if $n +& $mask while $mask +>= 1;
    return $n;
}

for ^32 -> $n {
    my $g = gray_encode($n);
    my $d = gray_decode($g);
    printf "%2d: %5b => %5b => %5b: %2d\n", $n, $n, $g, $d, $d;
    die if $d != $n;
}
#---------------------------------------------- 430 greatest-subsequential-sum-2
sub max-subseq ( *@a ) {

    my $max-subset = ();
    while @a {
        my @subsets = [\,] @a;
        @subsets.push: $max-subset;
        $max-subset = @subsets.max: { [+] .list };
        @a.shift;
    }

    return $max-subset;
}

max-subseq( -1, -2,  3,  5,  6, -2, -1,  4, -4,  2, -1 ).say;
max-subseq( -2, -2, -1,  3,  5,  6, -1,  4, -4,  2, -1 ).say;
max-subseq( -2, -2, -1, -3, -5, -6, -1, -4, -4, -2, -1 ).say;
#--------------------------------- 431 greedy-algorithm-for-egyptian-fractions-1
role Egyptian {
    method gist {
	join ' + ',
	    ("[{self.floor}]" if self.abs >= 1),
	    map {"1/$_"}, self.denominators;
    }
    method denominators {
	my ($x, $y) = self.nude;
	$x %= $y;
	my @denom = gather ($x, $y) = -$y % $x, $y * take ($y / $x).ceiling
	    while $x;
    }
}

say .nude.join('/'), " = ", $_ but Egyptian for 43/48, 5/121, 2014/59;

my @sample = map { $_ => .denominators },
    grep * < 1,
        map {$_ but Egyptian},
            (2 .. 99 X/ 2 .. 99);

say .key.nude.join("/"),
    " has max denominator, namely ",
    .value.max
        given max :by(*.value.max), @sample;

say .key.nude.join("/"),
    " has max number of denominators, namely ",
    .value.elems
        given max :by(*.value.elems), @sample;
#--------------------------------- 432 greedy-algorithm-for-egyptian-fractions-2
role Egyptian {
    method gist { join ' + ', map {"1/$_"}, self.list }
    method list {
	my $sum = 0;
	gather for 2 .. * {
	    last if $sum == self;
	    $sum += 1 / .take unless $sum + 1 / $_ > self;
	}
    }
}

say 5/4 but Egyptian;
#-------------------------------------------------------- 433 hailstone-sequence
sub hailstone($n) { $n, { $_ %% 2 ?? $_ div 2 !! $_ * 3 + 1 } ... 1 }

my @h = hailstone(27);
say "Length of hailstone(27) = {+@h}";
say ~@h;

my $m = max ( (1..99_999).race.map: { +hailstone($_) => $_ } );
say "Max length {$m.key} was found for hailstone({$m.value}) for numbers < 100_000";
#----------------------------------------------------- 434 halt-and-catch-fire-3
use Test;

dies-ok { ++8 };
dies-ok { die };
dies-ok {  …  };

eval-dies-ok '++8';
eval-dies-ok 'die';
eval-dies-ok  '…' ;
#------------------------------------- 435 hamiltonian-cycle-via-chv-tal-closure
# 20250617 Raku programming solution

my $n = 5;                   # Number of vertices
my @adj = SetHash.new xx $n; # adjacency list

for ^$n -> $i {              # Add all edges except the edge (0,1)
   for $i+1 ..^$n -> $j {
      next if $i == 0 && $j == 1;
      @adj[$i].set($j);
      @adj[$j].set($i);
   }
}
say "Degrees of original graph: ";
for @adj.keys { say " deq($_) = {@adj[$_].elems}" }

# Compute the Chvátal closure
# iteratively add edges between non-adjacent vertices if degree-sum >= n
my @closure = @adj.map: { SetHash.new: | .keys };

my $added = True; # Clone original adjacency into @closure
while $added {
   $added = False;
   OUTER_LOOP: for ^$n -> $i {
      for $i+1 ..^$n -> $j {
          if ( !@closure[$i]{$j} && ( [+] @closure[$i,$j]>>.elems ) >= $n ) {
            @closure[$i].set: $j;
            @closure[$j].set: $i;
            $added = True;
            last OUTER_LOOP
         }
      }
   }
}

say "Adjacency list after closure:";
for ^$n -> $i { say "$i: ", @closure[$i].keys.sort.Str }

my $is-complete = (@closure>>.elems).all == ($n - 1); # check for completeness
say "Closure graph is{ $is-complete ?? ' ' !! ' not ' }complete.";


# If closure is complete, search for a Hamiltonian cycle in the original graph
if $is-complete { # Backtracking to find a cycle starting and ending at 0
   my @orig = @adj;              # use the original adjacency
   my @visited = False xx $n;    # visited flags
   my @path = (0);               # start path at vertex 0
   @visited[0] = True;
   my @cycle;

   sub dfs($curr) {
      return if @cycle.elems; # already found

      if @path.elems == $n { # If path has n vertices, check edge back to start
         if @orig[$curr]{@path[0]} { (@cycle = @path).push: @path[0] }
         return
      }

      for @orig[$curr].keys.sort -> $nbr { # Try all neighbors of $curr
         next if @visited[$nbr];
         @visited[$nbr] = True;
         @path.push: $nbr;
         dfs($nbr);
         @path.pop;
         @visited[$nbr] = False;
         return if @cycle.elems;  # stop if found
      }
   }(0);

   say @cycle.elems.Bool
      ?? "Hamiltonian cycle in original graph: {@cycle.join(' -> ')}"
      !! "No Hamiltonian cycle found in the original graph."
}
#--------------------------------------------------------- 436 hamming-numbers-1
my $limit = 32;

sub powers_of ($radix) { 1, |[\*] $radix xx * }

my @hammings =
  (   powers_of(2)[^ $limit ]       X*
      powers_of(3)[^($limit * 2/3)] X*
      powers_of(5)[^($limit * 1/2)]
   ).sort;

say @hammings[^20];
say @hammings[1690]; # zero indexed
#--------------------------------------------------------- 437 hamming-numbers-2
my \Hammings := gather {
  my %i = 2, 3, 5 Z=> (Hammings.iterator for ^3);
  my %n = 2, 3, 5 Z=> 1 xx 3;

  loop {
    take my $n := %n{2, 3, 5}.min;

    for 2, 3, 5 -> \k {
      %n{k} = %i{k}.pull-one * k if %n{k} == $n;
    }
  }
}

say Hammings.[^20];
say Hammings.[1691 - 1];
say Hammings.[1000000 - 1];
#----------------------------------------------------------- 438 happy-numbers-1
sub happy (Int $n is copy --> Bool) {
  loop {
      state %seen;
      $n = [+] $n.comb.map: { $_ ** 2 }
      return True  if $n == 1;
      return False if %seen{$n}++;
  }
}

say join ' ', grep(&happy, 1 .. *)[^8];
#----------------------------------------------------------- 439 happy-numbers-2
my @happy = lazy gather for 1..* -> $number {
    my %stopper = 1 => 1;
    my $n = $number;
    repeat until %stopper{$n}++ {
        $n = [+] $n.comb X** 2;
    }
    take $number if $n == 1;
}

say ~@happy[^8];
#----------------------------------------------------------- 440 happy-numbers-3
subset Happy of Int where sub ($n) {
    $n == 1 ?? True  !!
    $n < 7  ?? False !!
    &?ROUTINE([+] $n.comb »**» 2);
}

say (grep Happy, 1 .. *)[^8];
#--------------------------------------------------- 441 harshad-or-niven-series
constant @harshad = grep { $_ %% .comb.sum }, 1 .. *;

say @harshad[^20];
say @harshad.first: * > 1000;
#----------------------------------------------------------------- 442 hash-join
sub hash-join(@a, &a, @b, &b) {
    my %hash := @b.classify(&b);

    @a.map: -> $a {
        |(%hash{$a.&a} // next).map: -> $b { [$a, $b] }
    }
}

my @A =
    [27, "Jonah"],
    [18, "Alan"],
    [28, "Glory"],
    [18, "Popeye"],
    [28, "Alan"],
;

my @B =
    ["Jonah", "Whales"],
    ["Jonah", "Spiders"],
    ["Alan", "Ghosts"],
    ["Alan", "Zombies"],
    ["Glory", "Buffy"],
;

.say for hash-join @A, *[1], @B, *[0];
#-------------------------------------------------------- 443 hashtron-inference
# 20240530 Raku programming solution

sub Inference($command, $bits, @program) {
   my  $out = 0;

   return $out unless @program.Bool;

   for ^$bits -> $j { # Iterate over the bits
      my $input = $command +| ($j +< 16);
      $input = Hashtron($input, @program[0][0], my $maxx = @program[0][1]);
      for @program[1..*] -> ($s, $max) {
         $input = Hashtron($input, $s, $maxx -= $max);
      }
      if ( $input +&= 1 ) != 0 { $out +|= 1 +< $j }
   }
   return $out;
}

sub Hashtron($n, $s, $max) {
   # Mixing stage, mix input with salt using subtraction
   my $m = $n - $s;

   # Hashing stage, use xor shift with prime coefficients
   for <-2 -3 +5 +7 -11 -13 +17 -19> -> $p {
      $m = ($m +^ ($m +> $p)) +& 0xFFFFFFFF;
   }

   # Mixing stage 2, mix input with salt using addition
   $m = ($m + $s) +& 0xFFFFFFFF;

   # Modular stage using Lemire's fast alternative to modulo reduction
   return (($m * $max) +> 32) +& 0xFFFFFFFF;
}

sub MAIN() {
   say  "Test demo:\n{ Inference(42, 64, (<0 2>,)) } \n";
   say "Square root demo for commands in [0, 255]:";

   for ^256 .rotor(16) -> @i {
      say [~] @i.map: { sprintf( "%2d ", Inference($_, 4, (
         <8776 79884>, <12638 1259>, <9953 1242>, <4658 1228>, <5197 1210>,
         <12043 1201>, <6892 1183>, <7096 1168>, <10924 1149>, <5551 1136>,
         <5580 1123>, <3735 1107>, <3652 1091>, <12191 1076>, <14214 1062>,
         <13056 1045>, <14816 1031>, <15205 1017>, <10736 1001>, <9804 989>,
         <13081 974>, <6706 960>, <13698 944>, <14369 928>, <16806 917>,
         <9599 906>, <9395 897>, <4885 883>, <10237 870>, <10676 858>,
         <18518 845>, <2619 833>, <13715 822>, <11065 810>, <9590 799>,
         <5747 785>, <2627 776>, <8962 764>, <5575 750>, <3448 738>,
         <5731 725>, <9434 714>, <3163 703>, <3307 690>, <3248 678>,
         <3259 667>, <3425 657>, <3506 648>, <3270 639>, <3634 627>,
         <3077 617>, <3511 606>, <27159 597>, <27770 589>, <28496 580>,
         <28481 571>, <29358 562>, <31027 552>, <30240 543>, <30643 534>,
         <31351 527>, <31993 519>, <32853 510>, <33078 502>, <33688 495>,
         <29732 487>, <29898 480>, <29878 474>, <26046 468>, <26549 461>,
         <28792 453>, <26101 446>, <32971 439>, <29704 432>, <23193 426>,
         <29509 421>, <27079 415>, <32453 409>, <24737 404>, <25725 400>,
         <23755 395>, <52538 393>, <53242 386>, <19609 380>, <26492 377>,
         <24566 358>, <31163 368>, <57174 363>, <26639 364>, <31365 357>,
         <60918 350>, <21235 338>, <28072 322>, <28811 314>, <27571 320>,
         <17635 309>, <51968 169>, <54367 323>, <60541 254>, <26732 270>,
         <52457 157>, <27181 276>, <19874 227>, <22797 320>, <59346 271>,
         <25496 260>, <54265 231>, <22281 250>, <42977 318>, <26008 240>,
         <87604 142>, <94647 314>, <52292 157>, <20999 216>, <89253 316>,
         <22746 29>, <68338 312>, <22557 317>, <110904 104>, <70975 285>,
         <51835 277>, <51871 313>, <132221 228>, <18522 290>, <68512 285>,
         <118816 302>, <150865 268>, <68871 273>, <68139 290>, <84984 285>,
         <150693 266>, <396047 272>, <84923 269>, <215562 258>, <68015 248>,
         <247689 235>, <214471 229>, <264395 221>, <263287 212>, <280193 201>,
         <108065 194>, <263616 187>, <148609 176>, <263143 173>, <378205 162>,
         <312547 154>, <50400 147>, <328927 140>, <279217 132>, <181111 127>,
         <672098 118>, <657196 113>, <459383 111>, <833281 105>, <520281 102>,
         <755397 95>, <787994 91>, <492444 82>, <1016592 77>, <656147 71>,
         <819893 66>, <165531 61>, <886503 57>, <1016551 54>, <3547827 49>,
         <14398170 43>, <395900 41>, <4950628 37>, <11481175 33>,
         <100014881 30>, <8955328 31>, <11313984 27>, <13640855 23>,
         <528553762 21>, <63483027 17>, <952477 8>, <950580 4>, <918378 2>,
         <918471 1> )
      ))}
   }
}
#--------------------------------------------------------- 444 haversine-formula
class EarthPoint {
        has $.lat; # latitude
        has $.lon; # longitude

        has $earth_radius = 6371; # mean earth radius
        has $radian_ratio = pi / 180;

        # accessors for radians
        method latR { $.lat * $radian_ratio }
        method lonR { $.lon * $radian_ratio }

        method haversine-dist(EarthPoint $p) {

                my EarthPoint $arc .= new(
                        lat => $!lat - $p.lat,
                        lon => $!lon - $p.lon );

                my $a = sin($arc.latR/2) ** 2 + sin($arc.lonR/2) ** 2
                        * cos($.latR) * cos($p.latR);
                my $c = 2 * asin( sqrt($a) );

                return $earth_radius * $c;
        }
}

my EarthPoint $BNA .= new(lat => 36.12, lon => -86.67);
my EarthPoint $LAX .= new(lat => 33.94, lon => -118.4);

say $BNA.haversine-dist($LAX); # 2886.44444099822
#------------------------------------------------------- 445 held-karp-algorithm
# 20250515 Raku programming solution

class Result { has Int ( $.Cost, @.Tour ) }

# heldKarp solves the Traveling Salesman Problem using the Held–Karp algorithm (O(n^2·2^n)).
# @dist is an n×n matrix of pairwise distances.
# Returns a Result{minimumCost, tour}, where tour is a sequence of city indices
# starting and ending at 0.
sub heldKarp(@dist) {
   my $subsetCount = 2 ** ( my $n = @dist.elems );
   # dp[mask][j] = minimum cost to start at 0, visit exactly the cities in mask, and end at j
   my (@dp,@parents) := [[Inf xx $n] xx $subsetCount], [[-1 xx $n] xx $subsetCount];
   @dp[1][0] = 0; # Base case: mask = 1<<0, at city 0, cost = 0

   for ^$subsetCount -> $mask { # Build up dp table
      next if $mask +& 1 == 0; # City 0 must always be included
      for ^$n -> $j {
         next if $mask +& (1 +< $j) == 0;
         my $prevMask = $mask +^ (1 +< $j);
         for ^$n -> $k {
            next if $prevMask +& (1 +< $k) == 0;
            if ( my $cost = @dp[$prevMask;$k] + @dist[$k;$j] ) < @dp[$mask;$j] {
               ( @dp[$mask][$j], @parents[$mask][$j] ) = $cost, $k
            }
         }
      }
   }

   # Complete the tour by returning to city 0
   my ($fullMask, $minCost, $lastCity) = $subsetCount - 1, Inf, 0;

   for ^$n -> $j {
      if ( my $cost = @dp[$fullMask;$j] + @dist[$j;0] ) < $minCost {
         ( $minCost, $lastCity ) = $cost, $j
      }
   }

   # Reconstruct the optimal tour
   my ($mask, $curr, @tour) = $fullMask, $lastCity, ($lastCity);

   while @tour[0] != 0 {
      my $prev = @parents[$mask;$curr];
      $mask +^= 1 +< $curr;
      $curr = $prev;
      @tour.unshift($curr);
   }
   @tour.push(0); # append the start city, then return to start

   return Result.new(Cost => $minCost, Tour => @tour)
}

# Test case: 4 cities with symmetric distances
my @dist = [ <0 2 9 10>, <1 0 6 4>, <15 7 0 8>, <6 3 12 0> ];

given heldKarp(@dist) { say "Minimum tour cost: { .Cost }\nTour: { .Tour }" }
#---------------------------------------------- 446 hello-world-newline-omission
print "Goodbye, World!";
printf "%s", "Goodbye, World!";
#-------------------------------------------------------- 447 hello-world-text-1
say 'Hello world!';
#-------------------------------------------------------- 448 hello-world-text-2
"Hello, World!".say();
#----------------------------------------------------------- 449 here-document-1
my $color = 'green';
say qq :to 'END';
    some line
    color: $color
    another line
    END
#----------------------------------------------------------- 450 here-document-2
my $contrived_example = 'Dylan';
sub freewheelin() {
        print q :to 'QUOTE', '-- ', qq :to 'AUTHOR';
          I'll let you be in my dream,
            if I can be in yours.
        QUOTE
                Bob $contrived_example
                AUTHOR
}

freewheelin;
#----------------------------------------------------------- 451 here-document-3
my @a = <1 2 3 4>;
say Q :array :to 'EOH';
    123 \n '"`
        @a$bc
        @a[]
    EOH
#-------------------------------------------------------- 452 heronian-triangles
sub hero($a, $b, $c) {
    my $s = ($a + $b + $c) / 2;
    ($s * ($s - $a) * ($s - $b) * ($s - $c)).sqrt;
}

sub heronian-area($a, $b, $c) {
    $_ when Int given hero($a, $b, $c).narrow;
}

sub primitive-heronian-area($a, $b, $c) {
    heronian-area $a, $b, $c
        if 1 == [gcd] $a, $b, $c;
}

sub show(@measures) {
    say "   Area Perimeter   Sides";
    for @measures -> [$area, $perim, $c, $b, $a] {
	printf "%6d %6d %12s\n", $area, $perim, "$a×$b×$c";
    }
}

sub MAIN ($maxside = 200, $first = 10, $witharea = 210) {
    my @hh[1000];
    my atomicint $i;
    (1 .. $maxside).race(:12batch).map: -> $c {
        for 1 .. $c -> $b {
            for $c - $b + 1 .. $b -> $a {
                if primitive-heronian-area($a,$b,$c) -> $area {
                    @hh[$i⚛++] = [$area, $a+$b+$c, $c, $b, $a];
                }
            }
        }
    }

    my @h = (@hh.grep: so *).sort;
    say "Primitive Heronian triangles with sides up to $maxside: ", +@h;

    say "\nFirst $first:";
    show @h[^$first];

    say "\nArea $witharea:";
    show @h.grep: *[0] == $witharea;
}
#------------------------------------------------------------------ 453 hex-dump
say my $string = 'Rosettacode is a programming crestomathy site 😀.    🍨 👨‍👩‍👦 ⚽ ¯\_(ツ)_/¯';

say "\nHex dump UTF-16BE, offset 0";
hexdump $string.encode("UTF-16BE");

say "\nHex dump UTF-16LE, offset 0";
hexdump $string.encode("UTF-16LE");

say "\nBinary dump UTF-8, offset 17";
hexdump $string.encode("UTF-8"), :bin, :17offset;

sub hexdump(Blob $blob, Int :$offset is copy = 0, :$bin = False) {
    my ($fmt, $space, $batch) = $bin ?? ("%08b", ' ' x 8, 6) !! ("%02X", '  ', 16);
    for $blob.skip($offset).batch($batch) {
        my @h = flat $_».fmt($fmt), $space xx $batch;
        @h[7] ~= ' ';
        printf "%08X  %s  |%s|\n", $offset, @h[^$batch].Str,
           $_».chr.join.subst(/<-print>|\t|\n/, '.', :g);
        $offset += $batch;
    }
}
#------------------------------------------------------------------ 454 hexapawn
# 20250714 Raku programming solution

my (   $black-pawn,   $white-pawn, $empty-square ) =
     " \x[265f]  ", " \x[2659]  ",        "    ";

sub draw-board(@board-data) {
   my (      $bg-black,      $bg-white,  $clear-to-eol ) =
        "\e[48;5;237m", "\e[48;5;245m",  "\e[0m\e[K\n";

   say "\n", |(
      "1 ", $bg-black, @board-data[0;0], $bg-white, @board-data[0;1], $bg-black, @board-data[0;2], $clear-to-eol,
      "2 ", $bg-white, @board-data[1;0], $bg-black, @board-data[1;1], $bg-white, @board-data[1;2], $clear-to-eol,
      "3 ", $bg-black, @board-data[2;0], $bg-white, @board-data[2;1], $bg-black, @board-data[2;2], $clear-to-eol,
      "   A   B   C"
   );
}

sub get-movement-direction($color) {
   my $direction = -1;
   if $color eq $black-pawn {
      $direction = 1;
   } elsif $color ne $white-pawn {
      die "Invalid piece color";
   }
   return $direction;
}

sub get-other-color($color) {
   return do given $color { when $black-pawn { $white-pawn }
                            when $white-pawn { $black-pawn }
                            die "Invalid piece color"        }
}

sub get-allowed-moves(@board-data, $row, $col) {
   return my @allowed-moves if @board-data[$row][$col] eq $empty-square;

   my $color       = @board-data[$row][$col];
   my $other-color = get-other-color($color);
   my $direction   = get-movement-direction($color);

   return @allowed-moves if $row + $direction < 0 || $row + $direction > 2;

   if @board-data[$row + $direction][$col] eq $empty-square {
      @allowed-moves.push("f");
   }
   if $col > 0 && @board-data[$row + $direction][$col - 1] eq $other-color {
      @allowed-moves.push("dl");
   }
   if $col < 2 && @board-data[$row + $direction][$col + 1] eq $other-color {
      @allowed-moves.push("dr");
   }
   return @allowed-moves;
}

sub get-human-move(@board-data, $color) {
   # The direction the pawns may move depends on the colour; assuming that white starts at the bottom.
   my $direction = get-movement-direction($color);
   my @keys = ( my %valid-inputs = (
      <   a3     c3     b1     c2     c1     a1     a2     b3     b2 > Z=>
      [<2 0>, <2 2>, <0 1>, <1 2>, <0 2>, <0 0>, <1 0>, <2 1>, <1 1> ]
   )).keys;

   loop {
      my $piece-posn = prompt "What $color do you want to move? : ";
      unless @keys.grep($piece-posn) {
         say "LOL that's not a valid position! Try again." and next
      }

      my ($row, $col) = |%valid-inputs{$piece-posn};

      if ( my $piece = @board-data[$row][$col] ) eq $empty-square {
         say "What are you trying to pull, there's no piece in that space!";
         next;
      }

      if $piece ne $color {
         say "LOL that's not your piece, try again!" and next
      }

      my @allowed-moves = get-allowed-moves(@board-data, $row, $col);

      if @allowed-moves.elems == 0 {
         say "LOL nice try. That piece has no valid moves." and next
      }

      my $move = @allowed-moves[0];
      if @allowed-moves.elems > 1 {
         my $options = @allowed-moves.join(", ");
         $move = prompt "What move do you want to make [$options]? : ";
         unless @allowed-moves.grep($move) {
            say "LOL that move is not allowed. Try again." and next
         }
      }

      if $move eq "f" {
         @board-data[$row + $direction][$col] = @board-data[$row][$col]
      } elsif $move eq "dl" {
         @board-data[$row + $direction][$col - 1] = @board-data[$row][$col]
      } elsif $move eq "dr" {
         @board-data[$row + $direction][$col + 1] = @board-data[$row][$col]
      }

      @board-data[$row][$col] = $empty-square;
      return @board-data;
   }
}

sub is-game-over(@board-data, $current-color = Nil) {
   # Check if any pawn has reached the opposite side
   return $white-pawn if $white-pawn ∈ @board-data[0];
   return $black-pawn if $black-pawn ∈ @board-data[2];

   my ($white-count, $black-count) = 0, 0;
   my (@black-allowed-moves, @white-allowed-moves);

   for 0..2 X 0..2 -> ($i, $j) {
      my @moves = get-allowed-moves(@board-data, $i, $j);
      if @board-data[$i][$j] eq $white-pawn {
         $white-count++;
         if @moves.elems > 0 { @white-allowed-moves.push([$i, $j, @moves]) }
      } elsif @board-data[$i][$j] eq $black-pawn {
         $black-count++;
         if @moves.elems > 0 { @black-allowed-moves.push([$i, $j, @moves]) }
      }
   }

   # If current player has no moves, other player wins
   if $current-color.defined {
      if $current-color eq $white-pawn && @white-allowed-moves.elems == 0 {
         return $black-pawn;
      }
      if $current-color eq $black-pawn && @black-allowed-moves.elems == 0 {
         return $white-pawn;
      }
   }

   # Check if all pawns of one color are gone
   return $black-pawn if $white-count == 0;
   return $white-pawn if $black-count == 0;

   # Check if either side has no moves (regardless of turn)
   return $black-pawn if @white-allowed-moves.elems == 0;
   return $white-pawn if @black-allowed-moves.elems == 0;
   return "LOL NOPE";
}

sub play-game(&black-move, &white-move) {
   my @board-data = [
      [$black-pawn, $black-pawn, $black-pawn],
      [$empty-square, $empty-square, $empty-square],
      [$white-pawn, $white-pawn, $white-pawn]
   ];
   my ($last-player, $next-player) = $black-pawn, $white-pawn;

   while is-game-over(@board-data, $next-player) eq "LOL NOPE" {
      draw-board(@board-data);
      @board-data = $next-player eq $black-pawn
         ?? black-move(@board-data, $next-player)
         !! white-move(@board-data, $next-player);
      ($last-player, $next-player) = ($next-player, $last-player);
   }
   draw-board(@board-data);
   my $winner = is-game-over(@board-data, $next-player);
   say "Congratulations $winner!";
}

play-game(&get-human-move, &get-human-move);
#--------------------------------------- 455 hickerson-series-of-almost-integers
constant ln2 = [+] (1/2.FatRat, */2 ... *) Z/ 1 .. 100;
constant h = [\*] 1/2, |(1..*) X/ ln2;

use Test;
plan *;

for h[1..17] {
    ok m/'.'<[09]>/, .round(0.001)
}
#----------------------------------------------------- 456 hierholzers-algorithm
say join ' -> ', .&hierholser for ([1],[2],[0]), ([1,6],[2],[0,3],[4],[2,5],[0],[4]);

sub hierholser (@graph) {
    my @cycle = 0;
    @cycle.push: @graph[@cycle.tail].pop while @graph[@cycle.tail].elems;
    @cycle;
}
#---------------------------------------------------- 457 higher-order-functions
sub twice(&todo) {
   todo(); todo(); # declaring &todo also defines bare function
}
twice { say "Boing!" }
# output:
# Boing!
# Boing!

sub twice-with-param(&todo) {
    todo(0); todo(1);
}
twice-with-param -> $time {
   say "{$time+1}: Hello!"
}
# output:
# 1: Hello!
# 2: Hello!
#---------------------------------------- 458 hofstadter-conway-$10-000-sequence
my $n = 3;
my @a = (0,1,1, -> $p { @a[$p] + @a[$n++ - $p] } ... *);
@a[2**20]; # pre-calculate sequence

my $last55;
for 1..19 -> $power {
    my @range := 2**$power .. 2**($power+1)-1;
    my @ratios = (@a[@range] Z/ @range) Z=> @range;
    my $max = @ratios.max;
    ($last55 = .value if .key >= .55 for @ratios) if $max.key >= .55;
    say $power.fmt('%2d'), @range.min.fmt("%10d"), '..', @range.max.fmt("%-10d"),
        $max.key, ' at ', $max.value;
}
say "Mallows' number would appear to be ", $last55;
#---------------------------------------- 459 hofstadter-figure-figure-sequences
my %r = 1 => 1;
my %s = 1 => 2;

sub ffr ($n) { %r{$n} //= ffr($n - 1) + ffs($n - 1) }
sub ffs ($n) { %s{$n} //= (grep none(map &ffr, 1..$n), max(%s.values)+1..*)[0] }

my @ffr = map &ffr, 1..*;
my @ffs = map &ffs, 1..*;

say @ffr[^10];
say "Rawks!" if 1...1000 eqv sort |@ffr[^40], |@ffs[^960];
#--------------------------------------------------- 460 hofstadter-q-sequence-1
class Hofstadter {
  has @!c = 1,1;
  method AT-POS ($me: Int $i) {
    @!c.push($me[@!c.elems-$me[@!c.elems-1]] +
	     $me[@!c.elems-$me[@!c.elems-2]]) until @!c[$i]:exists;
    return @!c[$i];
  }
}

# Testing:

my Hofstadter $Q .= new();

say "first ten: $Q[^10]";
say "1000th: $Q[999]";

my $count = 0;
$count++ if $Q[$_ +1 ] < $Q[$_] for  ^99_999;
say "In the first 100_000 terms, $count terms are less than their preceding terms";
#--------------------------------------------------- 461 hofstadter-q-sequence-2
my @Q = 1, 1, -> $a, $b {
    (state $n = 1)++;
    @Q[$n - $a] + @Q[$n - $b]
} ... *;

# Testing:

say "first ten: ", @Q[^10];
say "1000th: ", @Q[999];
say "In the first 100_000 terms, ",
   [+](@Q[1..100000] Z< @Q[0..99999]),
   " terms are less than their preceding terms";
#------------------------------------------------ 462 holidays-related-to-easter
my @abbr = < Nil Jan Feb Mar Apr May Jun Jul Aug Sep Oct Nov Dec >;

my @holidays =
    Easter    => 0,
    Ascension => 39,
    Pentecost => 49,
    Trinity   => 56,
    Corpus    => 60;

sub easter($year) {
    my \ay = $year % 19;
    my \by = $year div 100;
    my \cy = $year % 100;
    my \dy = by div 4;
    my \ey = by % 4;
    my \fy = (by + 8) div 25;
    my \gy = (by - fy + 1) div 3;
    my \hy = (ay * 19 + by - dy - gy + 15) % 30;
    my \iy = cy div 4;
    my \ky = cy % 4;
    my \ly = (32 + 2 * ey + 2 * iy - hy - ky) % 7;
    my \md = hy + ly - 7 * ((ay + 11 * hy + 22 * ly) div 451) + 114;
    my \month = md div 31;
    my \day = md % 31 + 1;

    return month, day;
}

sub cholidays($year) {
    my ($emon, $eday) = easter($year);
    printf "%4s: ", $year;
    say join ', ', gather for @holidays -> $holiday {
	my $d = Date.new($year,$emon,$eday) + $holiday.value;
	take "{$holiday.key}: $d.day-of-month.fmt('%02s') @abbr[$d.month]";
    }
}

for flat (400,500 ... 2000), (2010 ... 2020), 2100 -> $year {
    cholidays($year);
}
#------------------------------------------------------------ 463 honaker-primes
my @honaker = lazy (^∞).hyper.grep(&is-prime).kv.grep: (1 + *).comb.sum == *.comb.sum;

say "First 50 Honaker primes (index, prime):\n" ~ @honaker[^50].map(&format).batch(5).join: "\n";
say "\nTen thousandth: " ~ @honaker[9999].&format;

sub format ($_) { sprintf "(%3d, %4d)", 1 + .[0], .[1] }
#--------------------------------------------------- 464 hopcroft-karp-algorithm
# 20250708 Raku programming solution

# Edge record to represent graph edges
class Edge { has Int ($.from, $.to);
   method new(Int $from, Int $to) { self.bless(:$from, :$to) }
}

# BipartiteGraph class implementing the Hopcroft-Karp algorithm
class BipartiteGraph {
   has Int $.m;  # Number of vertices in left partition U
   has Int $.n;  # Number of vertices in right partition V
   has @.adj;    # Adjacency lists for vertices in U
   has @.pair-u; # Matching for vertices in U
   has @.pair-v; # Matching for vertices in V
   has @.levels; # Distance levels for BFS

   # Constants
   constant NIL = 0;
   constant INFINITY = Inf;

   method new(Int $m, Int $n where * > 0) {
      my @adj    =    [] xx ($m + 1);
      my @pair-u = (NIL) xx ($m + 1);
      my @pair-v = (NIL) xx ($n + 1);
      my @levels =   Inf xx ($m + 1);
      return self.bless(:$m, :$n, :@adj, :@pair-u, :@pair-v, :@levels);
   }

   method add-edge( Int $u where 1 <= * <= $.m, Int $v where  1 <= * <= $.n ) {
      return @!adj[$u].push: $v;
   }

   method hopcroft-karp-algorithm() returns Int {
      @!pair-u = (NIL) xx ($!m + 1); # Reset
      @!pair-v = (NIL) xx ($!n + 1); # Reset
      my Int $matching-size = 0;

      while self.breadth-first-search() {
         for 1..$!m -> $u {
            # Check if vertex u is free and can be part of an augmenting path
            $matching-size++ if @!pair-u[$u] == NIL and $.depth-first-search($u)
         }
      } # Continue until no more augmenting paths can be found
      return $matching-size
   }

   # BFS to find if augmenting paths exist and compute shortest path lengths
   method breadth-first-search() returns Bool {
      my @queue = gather for 1..$!m -> $u { # Initialize levels for vertices
         @!pair-u[$u] == NIL ?? ( @!levels[take $u] = 0   )
                             !! ( @!levels[$u] = INFINITY )
      }

      # NIL vertex level represents shortest augmenting path length
      @!levels[NIL] = INFINITY;

      # BFS traversal
      while my $u = @queue.shift {
         # Only process if this path could lead to a shorter augmenting path
         if @!levels[$u] < @!levels[NIL] {
            for @!adj[$u].list -> $v {
               my $matched-u = @!pair-v[$v];

               # If the matched vertex hasn't been visited yet
               if @!levels[$matched-u] == INFINITY {
                  @!levels[$matched-u] = @!levels[$u] + 1;
                  @queue.push($matched-u);
               }
            }
         }
      }
      return @!levels[NIL] != INFINITY; # true if an augmenting path was found
   }

   # DFS to find and construct augmenting paths
   method depth-first-search(Int $u) returns Bool {
      if $u != NIL {
         for @!adj[$u].list -> $v {
            my $matched-u = @!pair-v[$v];

            # Check if this edge is part of a shortest augmenting path
            if @!levels[$matched-u] == @!levels[$u] + 1 {
               # Recursively try to find augmenting path from matched vertex
               if self.depth-first-search($matched-u) {
                  (@!pair-v[$v], @!pair-u[$u]) = $u, $v; # Update matching
                  return True;
               }
            }
         }
         @!levels[$u] = INFINITY; # No augmenting path found through this vertex
         return False;
      }
      return True;
   }
}

# Test runner function
sub test-case(Int $test-num, Int $m, Int $n, @edges, Int $expected) returns Bool {
   my $graph = BipartiteGraph.new($m, $n);

   for @edges -> $edge { $graph.add-edge($edge.from, $edge.to) }

   my $result = $graph.hopcroft-karp-algorithm();
   say "Test $test-num: Result = $result, Expected = $expected";

   return True if $result == $expected;
   say "Test $test-num failed!";
   return False;
}

say "Running Hopcroft-Karp Algorithm Tests:";
my $success-count = 0;

# Test Case 1: Simple case
$success-count += test-case(1, 3, 5, [Edge.new(1, 4)], 1) ?? 1 !! 0;

# Test Case 2: Multiple edges
$success-count += test-case(
   2, 6, 6, [ Edge.new(1, 4), Edge.new(1, 5), Edge.new(5, 1) ], 2
) ?? 1 !! 0;

# Test Case 3: Complete bipartite graph K(3,3)
my @edges = gather for 1..3 X 1..3 -> ($i,$j) { take Edge.new($i,$j) };
$success-count += test-case(3, 3, 3, @edges, 3) ?? 1 !! 0;

# Test Case 4: No edges
$success-count += test-case(4, 2, 2, [], 0) ?? 1 !! 0;

# Test Case 5: Complex case
$success-count += test-case(
   5, 4, 4, [ Edge.new(1, 1), Edge.new(1, 3), Edge.new(2, 3),
              Edge.new(3, 4), Edge.new(4, 3), Edge.new(4, 2) ], 4
) ?? 1 !! 0;

say  $success-count == 5 ?? "All tests passed!\n"
                         !! "$success-count/5 tests passed.\n";

say "Running main execution with hard-coded input:";

my ($hardcoded-m, $hardcoded-n) = 4, 4;
my @hardcoded-edges = [ [1, 1], [1, 3], [2, 3], [3, 4], [4, 3], [4, 2] ];

my $graph = BipartiteGraph.new($hardcoded-m, $hardcoded-n);
say "Hard-coded graph dimensions: m=$hardcoded-m, n=$hardcoded-n, edges={@hardcoded-edges.elems}";
say "Adding hard-coded edges:";

for @hardcoded-edges -> [$u, $v] {
   say "  Adding edge: ($u, $v)";

   if 1 <= $u <= $hardcoded-m and 1 <= $v <= $hardcoded-n {
      $graph.add-edge($u, $v);
   } else {
      say "Warning: Skipping invalid edge ($u, $v) - indices out of range";
   }
}
say "\nMaximum matching size is $graph.hopcroft-karp-algorithm()";
#------------------------------------------- 465 horizontal-sundial-calculations
sub postfix:<°> ($a) { $a * pi / 180 } # degrees to radians
sub postfix:<®> ($a) { $a * 180 / pi } # radians to degrees

my $latitude  = prompt 'Enter latitude       => ';
my $longitude = prompt 'Enter longitude      => ';
my $meridian  = prompt 'Enter legal meridian => ';

my $lat_sin = sin( $latitude° );
say 'Sine of latitude: ', $lat_sin.fmt("%.4f");
say 'Longitude offset: ', my $offset = $meridian - $longitude;
say '=' x 48;
say ' Hour  : Sun hour angle° : Dial hour line angle°';

for -6 .. 6 -> $hour {
    my $sun_deg  = $hour * 15 + $offset;
    my $line_deg = atan2( ( sin($sun_deg°) * $lat_sin ), cos($sun_deg°) )®;
    printf "%2d %s      %7.3f             %7.3f\n",
    ($hour + 12) % 12 || 12, ($hour < 0 ?? 'AM' !! 'PM'), $sun_deg, $line_deg;
}
#---------------------------------- 466 horners-rule-for-polynomial-evaluation-1
sub horner ( @coeffs, $x ) {
    @coeffs.reverse.reduce: { $^a * $x + $^b };
}

say horner( [ -19, 7, -4, 6 ], 3 );
#---------------------------------- 467 horners-rule-for-polynomial-evaluation-2
multi horner(@c, $x) {
    @c > 1 ?? @c.head + $x * samewith(@c.tail(*-1), $x) !! @c.pick
}

say horner( [-19, 7, -4, 6 ], 3 );
#---------------------------------- 468 horners-rule-for-polynomial-evaluation-3
sub horner ( @coeffs, $x ) {
    ([o] map { $_ + $x * * }, @coeffs)(0);
}

say horner( [ -19, 7, -4, 6 ], 3 );
#---------------------------------- 469 horners-rule-for-polynomial-evaluation-4
sub horner ( @coeffs, $x ) {
    map { .(0) }, [\o] map { $_ + $x * * }, @coeffs;
}

say horner( [ 1 X/ (1, |[\*] 1 .. *) ], i*pi )[20];
#------------------------------------------------------ 470 host-introspection-2
say blob8.new(1,0).read-int16(0) == 1 ?? "little-endian" !! "big-endian"
#------------------------------------------------------ 471 host-introspection-3
say join ', ', $*KERNEL, $*KERNEL.bits, $*KERNEL.arch, $*KERNEL.endian
#---------------------------------------------------------- 472 hourglass-puzzle
# 20201230 Raku programming solution

my @hourglasses = 4, 7;
my $target = 9;
my @output = [];
my %elapsed = 0 => 1 ;
my $done = False ;

for 1 .. ∞ -> $t {
   my $flip-happened = False;
   for @hourglasses -> $hg {
      unless $t % $hg {
         %elapsed{$t} = 1 unless %elapsed{$t};
         with @output[$t] { $_ ~= "\t, flip hourglass $hg " } else {
            $_ = "At time t = $t , flip hourglass $hg" }
         $flip-happened = True
      }
   }
   if $flip-happened {
      for %elapsed.keys.sort -> $t1 {
         if ($t - $t1) == $target {
            @output[$t1] ~= "\tbegin = 0";
            @output[$t]  ~= "\tend   = $target";
            $done = True
         }
         %elapsed{$t} = 1 unless %elapsed{$t} ;
      }
   }
   last if $done
}

.say if .defined for @output
#---------------------------------------------------------------------- 473 iban
subset IBAN of Str where sub ($_ is copy) {
    s:g/\s//;
    return False if m/<-alnum>/ or .chars != <
        AD 24 AE 23 AL 28 AT 20 AZ 28 BA 20 BE 16 BG 22 BH 22 BR 29 CH 21
        CR 21 CY 28 CZ 24 DE 22 DK 18 DO 28 EE 20 ES 24 FI 18 FO 18 FR 27
        GB 22 GE 22 GI 23 GL 18 GR 27 GT 28 HR 21 HU 28 IE 22 IL 23 IS 26
        IT 27 KW 30 KZ 20 LB 28 LI 21 LT 20 LU 20 LV 21 MC 27 MD 24 ME 22
        MK 19 MR 27 MT 31 MU 30 NL 18 NO 15 PK 24 PL 28 PS 29 PT 25 RO 24
        RS 22 SA 24 SE 24 SI 19 SK 24 SM 27 TN 24 TR 26 VG 24
    >.hash{.substr(0,2).uc};

    s/(.**4)(.+)/$1$0/;
    return .subst(:g, /\D/, { :36(~$_) }) % 97 == 1;
}

say "$_ is {$_ ~~ IBAN ?? 'valid' !! 'invalid' }" for
'GB82 WEST 1234 5698 7654 32',
'gb82 west 1234 5698 7654 32',
'GB82 TEST 1234 5698 7654 32';
#---------------------------------------------------------- 474 iccanobif-primes
sub abbr ($_) { (.chars < 41 ?? $_ !! .substr(0,20) ~ '..' ~ .substr(*-20)) ~ " (digits: {.chars})" }

say (++$).fmt('%2d') ~ ': ' ~ .flip.&abbr for (lazy (1,1,*+*…*).hyper.grep: {.flip.is-prime})[^25];
#--------------------------------------------------------- 475 identity-matrix-1
sub identity-matrix($n) {
    my @id;
    for flat ^$n X ^$n -> $i, $j {
        @id[$i][$j] = +($i == $j);
    }
    @id;
}

.say for identity-matrix(5);
#- 476 idiomatically-determine-all-the-characters-that-can-be-used-for-symbols-1
sub postfix:<𒋦>($n) { say "$n trilobites" }

sub term:<𝍧> { unival('𝍧') }

𝍧𒋦
#- 477 idiomatically-determine-all-the-characters-that-can-be-used-for-symbols-2
sub Z̧̔ͩ͌͑̉̎A̢̲̙̮̹̮͍̎L̔ͧ́͆G̰̬͎͔̱̅ͣͫO͙̔ͣ̈́̈̽̎ͣ ($n) { say "$n COMES" }


Z̧̔ͩ͌͑̉̎A̢̲̙̮̹̮͍̎L̔ͧ́͆G̰̬͎͔̱̅ͣͫO͙̔ͣ̈́̈̽̎ͣ 'HE'
#- 478 idiomatically-determine-all-the-characters-that-can-be-used-for-symbols-3
say .fmt("%4x"),"\t", uniname($_)
    if uniprop($_,'Z')
        for 0..0x1ffff;
#----------- 479 idiomatically-determine-all-the-lowercase-and-uppercase-letters
given (0..0x1fffd).chrs {
    say "Lowercase: ", .comb(/<:Ll>/);
    say "Uppercase: ", .comb(/<:Lu>/);
    say "Titlecase: ", .comb(/<:Lt>/);
}
#----------------------------------------------------------- 480 idoneal-numbers
sub is-idoneal ($n) {
    my $idoneal = True;
    I: for 1 .. $n -> $a {
        for $a ^.. $n -> $b {
            last if $a × $b + $a + $b > $n; # short circuit
            for $b ^.. $n -> $c {
                $idoneal = False and last I if (my $sum = $a × $b + $b × $c + $c × $a) == $n;
                last if $sum > $n; # short circuit
            }
        }
    }
    $idoneal
}

$_».fmt("%4d").put for (1..1850).hyper(:32batch).grep( &is-idoneal ).batch(10)
#-------------------------------------------------- 481 imaginary-base-numbers-1
multi sub base ( Real $num, Int $radix where -37 < * < -1, :$precision = -15 ) {
    return '0' unless $num;
    my $value  = $num;
    my $result = '';
    my $place  = 0;
    my $upper-bound = 1 / (-$radix + 1);
    my $lower-bound = $radix * $upper-bound;

    $value = $num / $radix ** ++$place until $lower-bound <= $value < $upper-bound;

    while ($value or $place > 0) and $place > $precision {
        my $digit = ($radix * $value - $lower-bound).Int;
        $value    =  $radix * $value - $digit;
        $result ~= '.' unless $place or $result.contains: '.';
        $result ~= $digit == -$radix ?? ($digit-1).base(-$radix)~'0' !! $digit.base(-$radix);
        $place--
    }
    $result
}

multi sub base (Numeric $num, Complex $radix where *.re == 0, :$precision = -8 ) {
    die "Base $radix out of range" unless -6 <= $radix.im <= -2 or 2 <= $radix.im <= 6;
    my ($re, $im) = $num.Complex.reals;
    my ($re-wh, $re-fr) =             $re.&base( -$radix.im².Int, :precision($precision) ).split: '.';
    my ($im-wh, $im-fr) = ($im/$radix.im).&base( -$radix.im².Int, :precision($precision) ).split: '.';
    $_ //= '' for $re-fr, $im-fr;

    sub zip (Str $a, Str $b) {
        my $l = '0' x ($a.chars - $b.chars).abs;
        ([~] flat ($a~$l).comb Z flat ($b~$l).comb).subst(/ '0'+ $ /, '') || '0'
    }

    my $whole = flip zip $re-wh.flip, $im-wh.flip;
    my $fraction = zip $im-fr, $re-fr;
    $fraction eq 0 ?? "$whole" !! "$whole.$fraction"
}

multi sub parse-base (Str $str, Complex $radix where *.re == 0) {
    return -1 * $str.substr(1).&parse-base($radix) if $str.substr(0,1) eq '-';
    my ($whole, $frac) = $str.split: '.';
    my $fraction = 0;
    $fraction = [+] $frac.comb.kv.map: { $^v.parse-base($radix.im².Int) * $radix ** -($^k+1) } if $frac;
    $fraction + [+] $whole.flip.comb.kv.map: { $^v.parse-base($radix.im².Int) * $radix ** $^k }
}

# TESTING
for 0, 2i, 1, 2i, 5, 2i, -13, 2i, 9i, 2i, -3i, 2i, 7.75-7.5i, 2i, .25, 2i, # base 2i tests
    5+5i,  2i, 5+5i,  3i, 5+5i,  4i, 5+5i,  5i, 5+5i,  6i, # same value, positive imaginary bases
    5+5i, -2i, 5+5i, -3i, 5+5i, -4i, 5+5i, -5i, 5+5i, -6i, # same value, negative imaginary bases
    227.65625+10.859375i, 4i, # larger test value
    31433.3487654321-2902.4480452675i, 6i # heh
  -> $v, $r {
my $ibase = $v.&base($r, :precision(-6));
printf "%33s.&base\(%2si\) = %-11s : %13s.&parse-base\(%2si\) = %s\n",
  $v, $r.im, $ibase, "'$ibase'", $r.im, $ibase.&parse-base($r).round(1e-10).narrow;
}
#------------------------------------------------ 482 implicit-type-conversion-1
my $x;

$x = 1234;      say $x.WHAT; # (Int) Integer
$x = 12.34;     say $x.WHAT; # (Rat) Rational
$x = 1234e-2;   say $x.WHAT; # (Num) Floating point Number
$x = 1234+i;    say $x.WHAT; # (Complex)
$x = '1234';    say $x.WHAT; # (Str) String
$x = (1,2,3,4); say $x.WHAT; # (List)
$x = [1,2,3,4]; say $x.WHAT; # (Array)
$x = 1 .. 4;    say $x.WHAT; # (Range)
$x = (1 => 2);  say $x.WHAT; # (Pair)
$x = {1 => 2};  say $x.WHAT; # (Hash)
$x = {1, 2};    say $x.WHAT; # (Block)
$x = sub {1};   say $x.WHAT; # (Sub) Code Reference
$x = True;      say $x.WHAT; # (Bool) Boolean
#------------------------------------------------ 483 implicit-type-conversion-2
say :16(([+] 1234.ords).sqrt.floor ~ "beef");
#------------------------------------------------ 484 implicit-type-conversion-3
my $x = 1234;                                  say $x, ' ', $x.WHAT; # 1234 (Int)
$x = 1234.ords;                                say $x, ' ', $x.WHAT; # 49 50 51 52 (List)
$x = [+] 1234.ords;                            say $x, ' ', $x.WHAT; # 202 (Int)
$x = ([+] 1234.ords).sqrt;                     say $x, ' ', $x.WHAT; # 14.2126704035519 (Num)
$x = ([+] 1234.ords).sqrt.floor;               say $x, ' ', $x.WHAT; # 14 (Int)
$x = ([+] 1234.ords).sqrt.floor ~ "beef";      say $x, ' ', $x.WHAT; # 14beef (Str)
$x = :16(([+] 1234.ords).sqrt.floor ~ "beef"); say $x, ' ', $x.WHAT; # 1359599 (Int)
#------------------------------------------------ 485 implicit-type-conversion-4
my $x;
$x = (-1).sqrt;           say $x, ' ', $x.WHAT; # NaN (Num)
$x = (-1).Complex.sqrt;   say $x, ' ', $x.WHAT; # 6.12323399573677e-17+1i (Complex)

$x = (22/7) * 2;          say $x, ' ', $x.WHAT; # 6.285714 (Rat)
$x /= 10**10;             say $x, ' ', $x.WHAT; # 0.000000000629 (Rat)
$x /= 10**10;             say $x, ' ', $x.WHAT; # 6.28571428571429e-20 (Num)

$x = (22/7).FatRat * 2;   say $x, ' ', $x.WHAT; # 6.285714 (FatRat)
$x /= 10**10;             say $x, ' ', $x.WHAT; # 0.000000000629 (FatRat)
$x /= 10**10;             say $x, ' ', $x.WHAT; # 0.0000000000000000000629 (FatRat)
#------------------------------------------- 486 inconsummate-numbers-in-base-10
my $upto = 1000;

my @ratios = unique (^∞).race.map({($_ / .comb.sum).narrow})[^($upto²)].grep: Int;
my @incons = (sort keys (1..$upto * 10) (-) @ratios)[^$upto];

put "First fifty inconsummate numbers (in base 10):\n" ~ @incons[^50]».fmt("%3d").batch(10).join: "\n";
put "\nOne thousandth: " ~ @incons[999]
#---------------------------------------------- 487 increment-a-numerical-string
say my $s = "12345";
say ++$s;

# or Unicode. How about Sinhala?

say "෧෨෩෪෫ ", +"෧෨෩෪෫";
say "෧෨෩෪෫".succ, ' ', +"෧෨෩෪෫".succ;
#------------------------------------------------------ 488 inheritance-multiple
class Camera {}
class MobilePhone {}
class CameraPhone is Camera is MobilePhone {}

say CameraPhone.^mro;     # undefined type object
say CameraPhone.new.^mro; # instantiated object
#-------------------------------------------------------- 489 inheritance-single
class Animal {}
class Dog is Animal {}
class Cat is Animal {}
class Lab is Dog {}
class Collie is Dog {}

say Collie.^parents;     # undefined type object
say Collie.new.^parents; # instantiated object
#------------------------------------------------------------- 490 inner-classes
class Outer {
    has $.value is rw;
    method double { self.value ×= 2 }

    class Inner {
        has $.value is rw;
    }
}

# New Outer instance with a value of 42.
my $outer = Outer.new(:value(42));

say .^name, ' ', .value given $outer;
$outer.double;
say .^name, ' ', .value given $outer;

# New Inner instance with no value set. Note need to specify fully qualified name.
my $inner = Outer::Inner.new;

# Set a value after the fact.
$inner.value = 16;

# There is no way for the Inner object to call the Outer .double method.
# It is a separate, distinct class, just in a funny namespace.
say .^name, ' ', .value given $inner;
$inner.value /=2;
say .^name, ' ', .value given $inner;
#------------------------------------------------------ 491 integer-comparison-1
my $a = prompt("1st int: ").floor;
my $b = prompt("2nd int: ").floor;

if $a < $b {
    say 'Less';
}
elsif $a > $b {
    say 'Greater';
}
elsif $a == $b {
    say 'Equal';
}
#------------------------------------------------------ 492 integer-comparison-3
say prompt("1st int: ") <=> prompt("2nd int: ");
#----------------------------------------------------- 493 integer-long-division
for 0/1, 1/1, 1/3, 1/7, -83/60, 1/17, 10/13, 3227/555, 5**21/2**63, 1/149, 1/5261 -> $rat {
    printf "%35s - Period is %-5s: %s%s\n", $rat.nude.join('/'), .[1].chars, .[0], (.[1].comb Z~ "\c[COMBINING OVERLINE]" xx *).join
        given $rat.base-repeating
}
#---------------------------------------------------------- 494 integer-overflow
my int64 ($a, $b, $c) = 9223372036854775807, 5000000000000000000, 3037000500;
.say for -(-$a - 1), $b + $b, -$a - $a, $c * $c, (-$a - 1)/-1;
#------------------------------------------------------------- 495 integer-roots
sub integer_root ( Int $p where * >= 2, Int $n --> Int ) {
    my Int $d = $p - 1;
    (
      10**($n.chars div $p),
      { ( $d * $^x   +   $n div ($x ** $d) ) div $p } ...
      -> $a, $, $c { $a == $c }
    ).tail(2).min;
}

say integer_root( 2, 2 * 100 ** 2000 );
#------------------------------------------------ 496 intersecting-number-wheels
#| advance rotates a named wheel $n by consuming an item from an infinite sequence. It is called
#| from within a gather block and so can use take in order to construct an infinite, lazy sequence
#| of result values
sub advance($g, $n) {
	given $g{$n}.pull-one {
		when /\d/ { take $_ }
		default   { samewith $g, $_ } # samewith re-calls this function with new parameters
	}
}

#| Input groups are a hash containing each wheel name as the key, and a list of values constructed
#| using <> to split on whitespace. They are transformed using xx * to repeat the list infinitely.
#| We then retrieve the underlying iterator in order for wheel position to be persistent. Each group
#| is then aggregated into a lazy output sequence using an infinite loop inside a gather block.
[
	{A => <1 2 3>},
	{A => <1 B 2>, B => <3 4>},
	{A => <1 D D>, D => <6 7 8>},
	{A => <1 B C>, B => <3 4>, C => <5 B>},
]
	#| %() converts a list of pairs produced by map into a hash. $^k and $^v are implicit variables.
	#| They are processed in alphabetical order and make the block arity 2, called with two vars.
	#| .kv gets the list of wheel names and wheel values from the input entry
	==> map({ %(.kv.map: { $^k => (|$^v xx *).iterator }) })
	#| gather constructs a lazy sequence, in which we infinitely loop advancing wheel A
	==> map({ gather { loop { advance $_, 'A' }} })
	#| state variables are only initialised once, and are kept between invocations.
	==> map({ state $i = 1; say "Group {$i++}, First 20 values: $_[^20]" })
#------------------------------------------------------------ 497 inverted-index
sub MAIN (*@files) {
    my %norm;
    do for @files -> $file {
        %norm.push: $file X=> slurp($file).lc.words;
    }
    (my %inv).push: %norm.invert.unique;

    while prompt("Search terms: ").words -> @words {
        for @words -> $word {
            say "$word => {%inv.{$word.lc}//'(not found)'}";
        }
    }
}
#--------------------------------------------------------- 498 inverted-syntax-3
42 R= $_; say $_;   # prints 42
#-------------------------------------------------------- 499 isbn13-check-digit
sub check-digit ($isbn) {
     (10 - (sum (|$isbn.comb(/<[0..9]>/)) »*» (1,3)) % 10).substr: *-1
}

{
    my $check = .substr(*-1);
    my $check-digit = check-digit .chop;
    say "$_ : ", $check == $check-digit ??
        'Good' !!
        "Bad check-digit $check; should be $check-digit"
} for words <
    978-0596528126
    978-0596528120
    978-1788399081
    978-1788399083
    978-2-74839-908-0
    978-2-74839-908-5
>;
#------------------------------------------------ 500 iterated-digits-squaring-1
constant @sq = ^10 X** 2;
my $cnt = 0;

sub Euler92($n) {
    $n == any(1,89) ?? $n !!
    (state %){$n} //= Euler92( [+] @sq[$n.comb] )
}

for 1 .. 1_000_000 -> $n {
   my $i = +$n.comb.sort.join;
   ++$cnt if Euler92($i) == 89;
}

say $cnt;
#------------------------------------------------ 501 iterated-digits-squaring-3
sub endsWithOne($n --> Bool) {
    my $digit;
    my $sum = 0;
    my $nn = $n;
    loop {
        while $nn > 0 {
            $digit = $nn % 10;
            $sum += $digit²;
            $nn = $nn div 10;
        }
        return True  if $sum == 1;
        return False if $sum == 89;
        $nn = $sum;
        $sum = 0;
    }
}

my $k = 8; # 10**8
my @sums is default(0) = 1,0;
my $s;
for 1 .. $k -> $n {
    for $n*81 … 1 -> $i {
        for 1 .. 9 -> $j {
            $s = $j²;
            last if $s > $i;
            @sums[$i] += @sums[$i - $s];
        }
    }
}

my $ends-with-one = sum flat @sums[(1 .. $k*81).grep: { endsWithOne($_) }], +endsWithOne(10**$k);

say 10**$k - $ends-with-one;
#------------------------------------------------------------- 502 jaccard-index
sub J(\A, \B) { A ∪ B ?? (A ∩ B) / (A ∪ B) !! A ∪ B == A ∩ B ?? 1 !! 0 }

my %p =
  A => < >,
  B => <1 2 3 4 5>,
  C => <1 3 5 7 9>,
  D => <2 4 6 8 10>,
  E => <2 3 5 7>,
  F => <8>,
;

.say for %p.sort;
say '';
say "J({.join: ','}) = ", J |%p{$_} for [X] <A B C D E F> xx 2;
#------------------------------------------------------------- 503 jacobi-symbol
# Jacobi function
sub infix:<J> (Int $k is copy, Int $n is copy where * % 2) {
    $k %= $n;
    my $jacobi = 1;
    while $k {
        while $k %% 2 {
            $k div= 2;
            $jacobi *= -1 if $n % 8 == 3 | 5;
        }
        ($k, $n) = $n, $k;
        $jacobi *= -1 if 3 == $n%4 & $k%4;
        $k %= $n;
    }
    $n == 1 ?? $jacobi !! 0
}

# Testing

my $maxa = 30;
my $maxn = 29;

say 'n\k ', (1..$maxa).fmt: '%3d';
say '   ', '-' x 4 * $maxa;
for 1,*+2 … $maxn -> $n {
    print $n.fmt: '%3d';
    for 1..$maxa -> $k {
        print ($k J $n).fmt: '%4d';
    }
    print "\n";
}
#-------------------------------------------------------- 504 jacobsthal-numbers
my $jacobsthal = cache lazy 0, 1, * × 2 + * … *;
my $jacobsthal-lucas = lazy 2, 1, * × 2 + * … *;

say "First 30 Jacobsthal numbers:";
say $jacobsthal[^30].batch(5)».fmt("%9d").join: "\n";

say "\nFirst 30 Jacobsthal-Lucas numbers:";
say $jacobsthal-lucas[^30].batch(5)».fmt("%9d").join: "\n";

say "\nFirst 20 Jacobsthal oblong numbers:";
say (^∞).map( { $jacobsthal[$_] × $jacobsthal[$_+1] } )[^20].batch(5)».fmt("%11d").join: "\n";

say "\nFirst 20 Jacobsthal primes:";
say $jacobsthal.grep( &is-prime )[^20].join: "\n";
#----------------------------------------------------------- 505 jaro-similarity
sub jaro ($s, $t) {
    return 1 if $s eq $t;

    my $s-len = + my @s = $s.comb;
    my $t-len = + my @t = $t.comb;
    my $match-distance = ($s-len max $t-len) div 2 - 1;

    my ($matches, @s-matches, @t-matches);
    for ^@s -> $i {
        my $start = 0 max $i - $match-distance;
        my $end   = $i + $match-distance min ($t-len - 1);

        for $start .. $end -> $j {
            next if @t-matches[$j] or @s[$i] ne @t[$j];
            (@s-matches[$i], @t-matches[$j]) = (1, 1);
            $matches++ and last;
        }
    }
    return 0 unless $matches;

    my ($k, $transpositions) = (0, 0);
    for ^@s -> $i {
        next unless @s-matches[$i];
        $k++ until  @t-matches[$k];
        $transpositions++ if @s[$i] ne @t[$k];
        $k++;
    }

    ( $matches/$s-len + $matches/$t-len + (($matches - $transpositions/2) / $matches) ) / 3
}

say jaro(.key, .value).fmt: '%.3f' for
    'MARTHA' => 'MARHTA', 'DIXON' => 'DICKSONX', 'JELLYFISH' => 'SMELLYFISH',
    'I repeat myself' => 'I repeat myself', '' => '';
#------------------------------------------------------------ 506 jensens-device
sub sum($i is rw, $lo, $hi, &term) {
    my $temp = 0;
    loop ($i = $lo; $i <= $hi; $i++) {
        $temp += term;
    }
    return $temp;
}

my $i;
say sum $i, 1, 100, { 1 / $i };
#--------------------------------------------------------- 507 jewels-and-stones
sub count-jewels ( Str $j, Str $s --> Int ) {
    my %counts_of_all = $s.comb.Bag;
    my @jewel_list    = $j.comb.unique;

    return %counts_of_all ∩ @jewel_list.Bag ?? %counts_of_all{ @jewel_list }.sum !! 0;
}

say count-jewels 'aA' , 'aAAbbbb';
say count-jewels 'z'  , 'ZZ';
#-------------------------------------------------------- 508 johnsons-algorithm
# 20250614 Raku programming solution

class Edge { # Edge structure
   has Int ($.u, $.v);
   has Num $.weight;
}

sub bellman-ford(Int $num-vertices, @edges, Int $source) {
   my @dist = Inf xx $num-vertices;
   @dist[$source] = 0;

   for ^($num-vertices - 1) { # Relax edges V-1 times
      my $updated = False;
      for @edges -> $edge {
         if @dist[$edge.u] != Inf && @dist[$edge.u]+$edge.weight < @dist[$edge.v] {
            @dist[$edge.v] = @dist[$edge.u] + $edge.weight;
            $updated = True;
         }
      }
      last unless $updated;
   }

   for @edges -> $edge { # Check for negative cycles
      if @dist[$edge.u] != Inf && @dist[$edge.u] + $edge.weight < @dist[$edge.v] {
         say "Graph contains a negative weight cycle";
         return Nil;
      }
   }
   return @dist;
}

sub dijkstra(Int $num-vertices, %adj, Int $source, @h-values) {
   my @dist = Inf xx $num-vertices;
   @dist[$source] = 0;
   my @final-dist = Inf xx $num-vertices;

   my @pq = [[0, $source],]; # Priority queue: array of [distance, vertex] pairs
   my %visited;

   while @pq {
      # Sort by distance, then vertex index for stability
      @pq.sort({ $^a[0] <=> $^b[0] || $^a[1] <=> $^b[1] });
      my ($d, $u) = @pq.shift;

      # Skip if already processed or distance is outdated
      next if %visited{$u}:exists || $d > @dist[$u];

      %visited{$u} = True;

      if %adj{$u}:exists { # Relax edges
         for %adj{$u}.List -> ($v, $weight) {
            if @dist[$u] != Inf && @dist[$u] + $weight < @dist[$v] {
               @dist[$v] = @dist[$u] + $weight;
               @pq.push: [@dist[$v], $v] unless %visited{$v}:exists;
            }
         }
      }
   }

   for ^$num-vertices -> $i { # Finalize distances, updating even if previously set
      if @dist[$i] != Inf {
         @final-dist[$i] = @dist[$i] - @h-values[$source] + @h-values[$i];
      }
   }
   return @final-dist;
}

sub johnsons-algorithm(@graph) {
   my ($V, @original-edges) = @graph.elems;

   for ^$V X ^$V -> ($i, $j) { # Step 0: Build edge list
      my $weight = @graph[$i][$j];
      if $i == $j {
         if $weight != 0 {
            say "Warning: graph[$i][$i] is $weight, expected 0. Setting to 0."
         }
      } elsif $weight != Inf && $weight != 0 {
         @original-edges.push: Edge.new(u => $i, v => $j, weight => $weight.Num)
      }
   }

   my @augmented-edges = @original-edges; # Step 1: Create augmented graph
   for ^$V -> $i {
      @augmented-edges.push: Edge.new(u => $V, v => $i, weight => 0.Num);
   }

   my @h-values = bellman-ford($V + 1, @augmented-edges, $V); # Step 2: Run Bellman-Ford
   return Nil if @h-values ~~ Nil;

   @h-values = @h-values[^$V]; # Remove augmented vertex h-value

   my %reweighted-adj; # Step 3: Reweight edges
   for ^$V -> $u { %reweighted-adj{$u} = [] }
   for @original-edges -> $edge {
      if @h-values[$edge.u] == Inf || @h-values[$edge.v] == Inf {
         say "Warning: invalid h-values detected.";
      }
      my $reweight = $edge.weight + @h-values[$edge.u] - @h-values[$edge.v];
      %reweighted-adj{$edge.u}.push: [$edge.v, $reweight];
   }

   my @result = []; # Step 4: Run Dijkstra for each vertex
   for ^$V -> $u { @result[$u] = dijkstra($V, %reweighted-adj, $u, @h-values) }

   return @result;
}

my @graph = [ # Test case
   [0,    -5,   2,   3],
   [Inf,   0,   4, Inf],
   [Inf, Inf,   0,   1],
   [Inf, Inf, Inf,   0]
];

with johnsons-algorithm(@graph) {
   .say for @_
} else {
   say "Negative cycle detected in the graph."
}
#------------------------------------------------------ 509 jordan-p-lya-numbers
# 20230719 Raku programming solution

my \factorials = 1, | [\*] 1..18; # with 0!

sub JordanPolya (\limit) {
   my \ix = (factorials.keys.first: factorials[*] >= limit) // factorials.end;
   my ($k, @res) = 2, |factorials[0..ix];

   while $k < @res.elems {
      my \rk = @res[$k];
      for 2 .. @res.elems -> \l {
         my \kl = $ = @res[l] * rk;
         last if kl > limit;
         loop {
            my \p = @res.keys.first: { @res[$_] >= kl } # performance
            if p < @res.elems and @res[p] != kl {
               @res.splice: p, 0, kl
            } elsif p == @res.elems {
               @res.append: kl
            }
            kl > limit/rk ?? ( last ) !! kl *= rk
         }
      }
      $k++
   }
   return @res[1..*]
}

my @result = JordanPolya 2**30 ;
say "First 50 Jordan-Pólya numbers:";
say [~] $_>>.fmt('%5s') for @result[^50].rotor(10);
print "\nThe largest Jordan-Pólya number before 100 million: ";
say @result.first: * < 100_000_000, :end;
#---------------------------------------------------------- 510 josephus-problem
sub Execute(@prisoner, $k) {
    until @prisoner == 1 {
	@prisoner.=rotate($k - 1);
	@prisoner.shift;
    }
}

my @prisoner = ^41;
Execute @prisoner, 3;
say "Prisoner {@prisoner} survived.";

# We don't have to use numbers.  Any list will do:

my @dalton = <Joe Jack William Averell Rantanplan>;
Execute @dalton, 2;
say "{@dalton} survived.";
#----------------------------------------------------------- 511 jump-anywhere-2
    my @list = lazy gather for ^100 -> $i {
        if $i.is-prime {
            say "Taking prime $i";
            take $i;
        }
    }

    say @list[5];
#----------------------------------------------------------- 512 jump-anywhere-4
    sub foo() { fail "oops" }
    my $failure = foo;
    say "Called foo";
    say "foo not true" unless $failure;
    say "foo not defined" unless $failure.defined;
    say "incremented foo" if $failure++; # exception
#----------------------------------------------------------- 513 jump-anywhere-5
  sub foo($i) {
      if $i == 0 {
          die "Are you sure you want /0?";
      }
      say "Dividing by $i";
      1/$i.Num + 0; # Fighting hard to make this fail
  }

  for ^10 -> $n {
      say "1/$n  = " ~ foo($n);
  }

  CATCH {
      when ~$_ ~~ m:s/Are you sure/ { .resume; #`(yes, I'm sure) }
  }
#----------------------------- 514 just-in-time-processing-on-a-character-stream
#`[
Set srand to set the encode / decode "key".
Need to use the same "key" and same implementation
of Raku to encode / decode. Gain "security" by
exchanging "keys" by a second channel. Default
"key" is "Raku"
]

unit sub MAIN ($key = 'Raku');

srand $key.comb(/<.alnum>/).join.parse-base(36) % 2**63;

my @stream = (flat "\n", ' ' .. '~').roll(*);

sub jit-encode (Str $str) {
    my $i = 0;
    my $last = 0;
    my $enc = '';
    for $str.comb -> $c {
        my $h;
        my $l = '';
        ++$i until $i > 1 && $c eq @stream[$i];
        my $o = $i - $last;
        $l    = $o % 26;
        $h    = $o - $l if $o >= 26;
        $l   += 10;
        $enc ~= ($h ?? $h.base(36).uc !! '') ~ ($l.base(36).lc);
        $last = $i;
    }
    my $block = 60;
    $enc.comb($block).join: "\n"
}

sub jit-decode (Str $str is copy) {
    $str.=subst("\n", '', :g);
    $str ~~ m:g/((.*?) (<:Ll>))/;
    my $dec = '';
    my $i = 0;
    for $/.List -> $l {
        my $o = ($l[0][1].Str.parse-base(36) - 10 // 0) +
                ($l[0][0].Str.parse-base(36) // 0);
        $i += $o;
        $dec ~= @stream[$i];
    }
    $dec
}

my $secret = q:to/END/;
In my opinion, this task is pretty silly.

'Twas brillig, and the slithy toves
    Did gyre and gimble in the wabe.

!@#$%^&*()_+}{[].,><\|/?'";:1234567890
END

say "== Secret: ==\n$secret";

say "\n== Encoded: ==";
say my $enc = jit-encode($secret);

say "\n== Decoded: ==";
say jit-decode($enc);
#----------------------------------------------------------- 515 kahan-summation
constant ε = (1e0, */2e0 … *+1e0==1e0)[*-1];

sub kahan (*@nums) {
    my $summ = my $c = 0e0;
    for @nums -> $num {
        my $y = $num - $c;
        my $t = $summ + $y;
        $c = ($t - $summ) - $y;
        $summ = $t;
    }
    $summ
}

say 'Epsilon:    ', ε;

say 'Simple sum: ', ((1e0 + ε) - ε).fmt: "%.16f";

say 'Kahan sum:  ', kahan(1e0, ε, -ε).fmt: "%.16f";
#-------------------------------------------------------- 516 kaprekar-numbers-1
sub kaprekar( Int $n ) {
    my $sq = $n ** 2;
    for 0 ^..^ $sq.chars -> $i {
        my $x = +$sq.substr(0, $i);
        my $y = +$sq.substr($i) || return;
        return True if $x + $y == $n;
    }
    False;
}

print 1;
print " $_" if .&kaprekar for ^10000;
print "\n";
#--------------------------------------- 517 kernighans-large-earthquake-problem
$_ = @*ARGS[0] ?? @*ARGS[0].IO !! q:to/END/;
    8/27/1883    Krakatoa            8.8
    5/18/1980    MountStHelens       7.6
    3/13/2009    CostaRica           5.1
    END

map { .say if .words[2] > 6 }, .lines;
#---------------------------------------------------- 518 knapsack-problem-0-1-1
my class KnapsackItem { has $.name; has $.weight; has $.unit; }

multi sub pokem ([],           $,  $v = 0) { $v }
multi sub pokem ([$,  *@],     0,  $v = 0) { $v }
multi sub pokem ([$i, *@rest], $w, $v = 0) {
  my $key = "{+@rest} $w $v";
  (state %cache){$key} or do {
    my @skip = pokem @rest, $w, $v;
    if $w >= $i.weight { # next one fits
      my @put = pokem @rest, $w - $i.weight, $v + $i.unit;
      return (%cache{$key} = |@put, $i.name).list if @put[0] > @skip[0];
    }
    return (%cache{$key} = |@skip).list;
  }
}

my $MAX_WEIGHT = 400;
my @table = flat map -> $name,  $weight,  $unit {
     KnapsackItem.new: :$name, :$weight, :$unit;
},
    'map',                      9, 150,
    'compass',                 13,  35,
    'water',                  153, 200,
    'sandwich',                50, 160,
    'glucose',                 15,  60,
    'tin',                     68,  45,
    'banana',                  27,  60,
    'apple',                   39,  40,
    'cheese',                  23,  30,
    'beer',                    52,  10,
    'suntan cream',            11,  70,
    'camera',                  32,  30,
    'T-shirt',                 24,  15,
    'trousers',                48,  10,
    'umbrella',                73,  40,
    'waterproof trousers',     42,  70,
    'waterproof overclothes',  43,  75,
    'note-case',               22,  80,
    'sunglasses',               7,  20,
    'towel',                   18,  12,
    'socks',                    4,  50,
    'book',                    30,  10;

my ($value, @result) = pokem @table, $MAX_WEIGHT;
say "Value = $value\nTourist put in the bag:\n  " ~ @result;
#---------------------------------------------------- 519 knapsack-problem-0-1-2
my $raw = q:to/TABLE/;
    map                      9  150
    compass                 13   35
    water                  153  200
    sandwich                50  160
    glucose                 15   60
    tin                     68   45
    banana                  27   60
    apple                   39   40
    cheese                  23   30
    beer                    52   10
    suntancream             11   70
    camera                  32   30
    T-shirt                 24   15
    trousers                48   10
    umbrella                73   40
    waterproof trousers     42   70
    waterproof overclothes  43   75
    note-case               22   80
    sunglasses               7   20
    towel                   18   12
    socks                    4   50
    book                    30   10
TABLE

my (@name, @weight, @value);

for $raw.lines.sort({-($_ ~~ m/\d+/)}).comb(/\S+[\s\S+]*/) -> $n, $w, $v {
    @name.push:   $n;
    @weight.push: $w;
    @value.push:  $v;
}

my $sum = 400;

my @subset;

sub optimal ($item, $sub-sum) {
    return 0, [] if $item < 0;
    return |@subset[$item][$sub-sum] if @subset[$item][$sub-sum];

    my @next = optimal($item-1, $sub-sum);

    if @weight[$item] > $sub-sum {
        @subset[$item][$sub-sum] = @next
    } else {
        my @skip = optimal($item-1, $sub-sum - @weight[$item]);

        if (@next[0] > @skip[0] + @value[$item] ) {
            @subset[$item][$sub-sum] = @next;
        } else {
            @subset[$item][$sub-sum] = @skip[0] + @value[$item], [|@skip[1], @name[$item]];
        }
    }

    |@subset[$item][$sub-sum]
}

my @solution = optimal(@name.end, $sum);
put "@solution[0]: ", @solution[1].sort.join(', ');
#------------------------------------------------ 520 knapsack-problem-bounded-2
my $raw = qq:to/TABLE/;
map             9       150     1
compass         13      35      1
water           153     200     2
sandwich        50      60      2
glucose         15      60      2
tin             68      45      3
banana          27      60      3
apple           39      40      3
cheese          23      30      1
beer            52      10      1
suntancream     11      70      1
camera          32      30      1
T-shirt         24      15      2
trousers        48      10      2
umbrella        73      40      1
w_trousers      42      70      1
w_overcoat      43      75      1
note-case       22      80      1
sunglasses       7      20      1
towel           18      12      2
socks            4      50      1
book            30      10      2
TABLE

my @items;
for split(["\n", /\s+/], $raw, :skip-empty) -> $n,$w,$v,$q {
    @items.push: %{ name => $n, weight => $w, value => $v, quant => $q}
}

my $max_weight = 400;

sub pick ($weight, $pos) {
    state %cache;
    return 0, 0 if $pos < 0 or $weight <= 0;

    my $key = $weight ~ $pos;
    %cache{$key} or do {
        my %item = @items[$pos];
        my ($bv, $bi, $bw, @bp) = (0, 0, 0);

        for 0 .. %item{'quant'} -> $i {
            last if $i * %item{'weight'} > $weight;
            my ($v, $w, @p) = pick($weight - $i * %item{'weight'}, $pos - 1);
            next if ($v += $i * %item{'value'}) <= $bv;

            ($bv, $bi, $bw, @bp) = ($v, $i, $w, |@p);
        }
        %cache{$key} = $bv, $bw + $bi * %item{'weight'}, |@bp, $bi;
    }
}

my ($v, $w, @p) = pick($max_weight, @items.end);
{ say "{@p[$_]} of @items[$_]{'name'}" if @p[$_] } for 0 .. @p.end;
say "Value: $v Weight: $w";
#----------------------------------------------- 521 knapsack-problem-continuous
class KnapsackItem {
  has $.name;
  has $.weight is rw;
  has $.price is rw;
  has $.ppw;

  method new (Str $n, Rat $w, Int $p) {
    self.bless(:name($n), :weight($w), :price($p), :ppw($w/$p))
  }

  method cut-maybe ($max-weight) {
    return False if $max-weight > $.weight;
    $.price = $max-weight / $.ppw;
    $.weight = $.ppw * $.price;
    return True;
  }

  method gist () { sprintf "%8s %1.2f   %3.2f",
                            $.name,
                                $.weight,
                                        $.price }
}

my $max-w = 15;
say    "Item    Portion Value";

.say for gather
    for < beef    3.8 36
          pork    5.4 43
          ham     3.6 90
          greaves 2.4 45
          flitch  4.0 30
          brawn   2.5 56
          welt    3.7 67
          salami  3.0 95
          sausage 5.9 98 >
        ==> map({ KnapsackItem.new($^a, $^b, $^c) })
        ==> sort *.ppw
    {
        my $last-one = .cut-maybe($max-w);
        take $_;
        $max-w -= .weight;
        last if $last-one;
    }
#------------------------------------------------ 522 knapsack-problem-unbounded
class KnapsackItem {
  has $.volume;
  has $.weight;
  has $.value;
  has $.name;

  method new($volume,$weight,$value,$name) {
    self.bless(:$volume, :$weight, :$value, :$name)
  }
};

my KnapsackItem $panacea .= new: 0.025, 0.3, 3000, "panacea";
my KnapsackItem $ichor   .= new: 0.015, 0.2, 1800, "ichor";
my KnapsackItem $gold    .= new: 0.002, 2.0, 2500, "gold";
my KnapsackItem $maximum .= new: 0.25,  25,  0   , "max";

my $max_val = 0;
my @solutions;
my %max_items;

for $panacea, $ichor, $gold -> $item {
    %max_items{$item.name} = floor min
                            $maximum.volume / $item.volume,
             $maximum.weight / $item.weight;
}

for 0..%max_items<panacea>
       X 0..%max_items<ichor>
           X 0..%max_items<gold>
 -> ($p, $i, $g)
{
  next if $panacea.volume * $p + $ichor.volume * $i + $gold.volume * $g > $maximum.volume;
  next if $panacea.weight * $p + $ichor.weight * $i + $gold.weight * $g > $maximum.weight;
  given $panacea.value * $p + $ichor.value * $i + $gold.value * $g {
    if $_ > $max_val { $max_val = $_; @solutions = (); }
    when $max_val    { @solutions.push: $[$p,$i,$g] }
  }
}

say "maximum value is $max_val\npossible solutions:";
say "panacea\tichor\tgold";
.join("\t").say for @solutions;
#------------------------------------------ 523 knuth-morris-pratt-string-search
# 20220810 Raku programming solution

sub kmp_search (@S where *.Bool, @W where *.Bool) {

   sub kmp_table (@W where *.Bool) {
      loop (my ($pos,$cnd,@T) = 1,0,-1 ; $pos < @W.elems ; ($pos, $cnd)>>++) {
         if @W[$pos] eq @W[$cnd] {
            @T[$pos]  = @T[$cnd]
         } else {
            @T[$pos]  = $cnd;
            while $cnd ≥ 0 and @W[$pos] ne @W[$cnd] { $cnd = @T[$cnd] }
         }
      }
      @T[$pos] = $cnd;
      return @T
   }

   return gather loop (my ($j,$k,@T) = 0,0, |kmp_table @W; $j < @S.elems; ) {
      if @W[$k] eq @S[$j] {
         ($j, $k)>>++;
         if $k == @W.elems {
	    take $j - $k;
            $k = @T[$k]
         }
      } else {
         ($j, $k)>>++ if ($k = @T[$k]) < 0
      }
   }
}

my @texts = [
   "GCTAGCTCTACGAGTCTA",
   "GGCTATAATGCGTA",
   "there would have been a time for such a word",
   "needle need noodle needle",
   "BharôtভাৰতBharôtভারতIndiaBhāratભારતBhāratभारतBhārataಭಾರತBhāratभारतBhāratamഭാരതംBhāratभारतBhāratभारतBharôtôଭାରତBhāratਭਾਰਤBhāratamभारतम्Bārataபாரதம்BhāratamഭാരതംBhāratadēsamభారతదేశం",
   "InhisbookseriesTheArtofComputerProgrammingpublishedbyAddisonWesleyDKnuthusesanimaginarycomputertheMIXanditsassociatedmachinecodeandassemblylanguagestoillustratetheconceptsandalgorithmsastheyarepresented",
   "Nearby farms grew a half acre of alfalfa on the dairy's behalf, with bales of all that alfalfa exchanged for milk.",
];

my @pats = ["TCTA", "TAATAAA", "word", "needle", "ഭാരതം", "put", "and", "alfalfa"];

say "text$_ = @texts[$_]" for @texts.keys ;
say();

for @pats.keys {
   my \j = $_ < 6 ?? $_ !! $_-1 ; # for searching text5 twice
   say "Found '@pats[$_]' in 'text{j}' at indices ", kmp_search @texts[j].comb, @pats[$_].comb
}
#-------------------------------------------------------- 524 kolakoski-sequence
sub kolakoski (*@seed) {
    my $k = @seed[0] == 1 ?? 1 !! 0;
    my @k = flat @seed[0] == 1 ?? (1, @seed[1] xx @seed[1]) !! @seed[0] xx @seed[0],
      { $k++; @seed[$k % @seed] xx @k[$k] } … *
}

sub rle (*@series) { @series.join.subst(/((.)$0*)/, -> { $0.chars }, :g).comb».Int }

# Testing
for [1, 2], 20,
    [2, 1], 20,
    [1, 3, 1, 2], 30,
    [1, 3, 2, 1], 30
  -> @seed, $terms {
    say "\n## $terms members of the series generated from { @seed.perl } is:\n   ",
    my @kolakoski = kolakoski(@seed)[^$terms];
    my @rle = rle @kolakoski;
    say "   Looks like a Kolakoski sequence?: ", @rle[*] eqv @kolakoski[^@rle];
}
#------------------------------------------------------------------ 525 kosaraju
sub kosaraju (%k) {
    my %g = %k.keys.sort Z=> flat ^%k;
    my %h = %g.invert;
    my %visited;
    my @stack;
    my @transpose;
    my @connected;

    sub visit ($u) {
        unless %visited{$u} {
            %visited{$u} = True;
            for |%k{$u} -> $v {
                visit($v);
                @transpose[%g{$v}].push: $u;
            }
            @stack.push: $u;
        }
    }

    sub assign ($u, $root) {
        if %visited{$u} {
            %visited{$u}   = False;
            @connected[%g{$u}] = $root;
            assign($_, $root) for |@transpose[%g{$u}];
        }
    }

    .&visit for %g.keys;
    assign($_, $_) for @stack.reverse;

    (|%g{@connected}).pairs.categorize( *.value, :as(*.key) ).values.map: { %h{|$_} };
}

# TESTING

-> $test { say "\nStrongly connected components: ", |kosaraju($test).sort } for

# Same test data as all other entries, converted to a hash of lists
(((1),(2),(0),(1,2,4),(3,5),(2,6),(5),(4,6,7)).pairs.hash),

# Same layout test data with named vertices instead of numbered.
(
 %(:Andy<Bart>,
   :Bart<Carl>,
   :Carl<Andy>,
   :Dave<Bart Carl Earl>,
   :Earl<Dave Fred>,
   :Fred<Carl Gary>,
   :Gary<Fred>,
   :Hank<Earl Gary Hank>)
)
#--------------------------------------------------------- 526 kronecker-product
sub kronecker_product ( @a, @b ) {
    return (@a X @b).map: { .[0].list X* .[1].list };
}

.say for kronecker_product([ <1 2>, <3 4> ],
                           [ <0 5>, <6 7> ]);
say '';
.say for kronecker_product([ <0 1 0>,   <1 1 1>,   <0 1 0>  ],
                           [ <1 1 1 1>, <1 0 0 1>, <1 1 1 1>]);
#------------------------------------------------------------------ 527 l-system
# L-system functionality
role Lindenmayer {
    has %.rules;
    method succ {
        self.comb.map( { %!rules{$^c} // $c } ).join but Lindenmayer(%!rules)
    }
}

# Testing
my $rabbits = 'I' but Lindenmayer({I => 'M', M => 'MI'});

.say for $rabbits++ xx 6;
#---------------------------------------------------- 528 lagrange-interpolation
# 20231020 Raku programming solution

class Point { has Rat ($.x, $.y) }

sub add(@p1, @p2) { return @p1 <<+>> @p2 } # Add two polynomials.

sub multiply(@p1, @p2) { # Multiply two polynomials.
   my @prod;
   for ^+@p1 X ^+@p2 -> ($i, $j) { @prod[$i + $j] += @p1[$i] * @p2[$j] }
   return @prod;
}

# Multiply a polynomial by a scalar.
sub scalarMultiply(@poly, $x) { return @poly.map: * × $x }

# Divide a polynomial by a scalar.
sub scalarDivide(@poly, $x) { return scalarMultiply(@poly, 1/$x) }

# rosettacode.org/wiki/Horner%27s_rule_for_polynomial_evaluation#Raku
sub evalPoly(@coefs, $x) { return ([o] map { $_ + $x × * }, @coefs.reverse)(0) }

sub lagrange(@pts) {
   my ($c, @polys) = @pts.elems;
   for ^$c -> $i {
      my @poly = 1;
      for ^$c -> $j {
         next if $i == $j;
         @poly = multiply @poly, [ -@pts[$j].x, 1 ]
      }
      @polys[$i] = scalarDivide @poly, evalPoly(@poly.reverse, @pts[$i].x)
   }
   my @sum = 0;
   for ^$c -> $i { @sum = add @sum, scalarMultiply @polys[$i], @pts[$i].y }
   return @sum;
}


my @pts = map { Point.new: x=>.[0].Rat,y=>.[1].Rat }, [<1 1>,<2 4>,<3 1>,<4 5>];

say [~] lagrange(@pts).kv.rotor(2).reverse.map: -> ($expo, $coef) {
   "{ '+' if $coef ≥ 0 }$coef.nude.join('/') " ~ do given $expo {
      when 0  { " " }
      when 1  { "𝑥 " }
      default { "𝑥^$_ " }
   }
}
#--------------------------------------------------------------- 529 lah-numbers
constant @factorial = 1, |[\*] 1..*;

sub Lah (Int \n, Int \k) {
    return @factorial[n] if k == 1;
    return 1 if k == n;
    return 0 if k > n;
    return 0 if k < 1 or n < 1;
    (@factorial[n] * @factorial[n - 1]) / (@factorial[k] * @factorial[k - 1]) / @factorial[n - k]
}

my $upto = 12;

my $mx = (1..$upto).map( { Lah($upto, $_) } ).max.chars;

put 'Unsigned Lah numbers:  L(n, k):';
put 'n\k', (0..$upto)».fmt: "%{$mx}d";

for 0..$upto -> $row {
    $row.fmt('%-3d').print;
    put (0..$row).map( { Lah($row, $_) } )».fmt: "%{$mx}d";
}

say "\nMaximum value from the L(100, *) row:";
say (^100).map( { Lah 100, $_ } ).max;
#---------------------------------------- 530 largest-int-from-concatenated-ints
sub maxnum(*@x) {
    [~] @x.sort: -> $a, $b { $b ~ $a leg $a ~ $b }
}

say maxnum <1 34 3 98 9 76 45 4>;
say maxnum <54 546 548 60>;
#---------------------------------- 531 largest-number-divisible-by-its-digits-1
my $magic-number = 9 * 8 * 7;                        # 504

my $div = 9876432 div $magic-number * $magic-number; # largest 7 digit multiple of 504 < 9876432

for $div, { $_ - $magic-number } ... * -> $test {    # only generate multiples of 504
    next if $test ~~ / <[05]> /;                     # skip numbers containing 0 or 5
    next if $test ~~ / (.).*$0 /;                    # skip numbers with non unique digits

    say "Found $test";                               # Found a solution, display it
    for $test.comb {
        printf "%s / %s = %s\n", $test, $_, $test / $_;
    }
    last
}
#---------------------------------- 532 largest-number-divisible-by-its-digits-2
my $hex = 'FEDCBA987654321';        # largest possible hex number
my $magic-number = [lcm] 1 .. 15;   # find least common multiple
my $div = :16($hex) div $magic-number * $magic-number;

# hunt for target stepping backwards in multiples of the lcm
my $target = ($div, * - $magic-number ... 0).race.first: -> \test {
    my \num= test.base(16);
    (num.contains('0') || num.comb.Bag.values.max > 1) ?? False !! True
};
my $hexnum = $target.base(16);

say "Found $hexnum"; # Found a solution, display it

say ' ' x 12, 'In base 16', ' ' x 36, 'In base 10';
for $hexnum.comb {
    printf "%s / %s = %s  |  %d / %2d = %19d\n",
        $hexnum, $_, ($target / :16($_)).base(16),
        $target, :16($_), $target / :16($_);}
#------------------------------------------------- 533 largest-product-in-a-grid
my @matrix = q:to/END/.lines».words;
  08 02 22 97 38 15 00 40 00 75 04 05 07 78 52 12 50 77 91 08
  49 49 99 40 17 81 18 57 60 87 17 40 98 43 69 48 04 56 62 00
  81 49 31 73 55 79 14 29 93 71 40 67 53 88 30 03 49 13 36 65
  52 70 95 23 04 60 11 42 69 24 68 56 01 32 56 71 37 02 36 91
  22 31 16 71 51 67 63 89 41 92 36 54 22 40 40 28 66 33 13 80
  24 47 32 60 99 03 45 02 44 75 33 53 78 36 84 20 35 17 12 50
  32 98 81 28 64 23 67 10 26 38 40 67 59 54 70 66 18 38 64 70
  67 26 20 68 02 62 12 20 95 63 94 39 63 08 40 91 66 49 94 21
  24 55 58 05 66 73 99 26 97 17 78 78 96 83 14 88 34 89 63 72
  21 36 23 09 75 00 76 44 20 45 35 14 00 61 33 97 34 31 33 95
  78 17 53 28 22 75 31 67 15 94 03 80 04 62 16 14 09 53 56 92
  16 39 05 42 96 35 31 47 55 58 88 24 00 17 54 24 36 29 85 57
  86 56 00 48 35 71 89 07 05 44 44 37 44 60 21 58 51 54 17 58
  19 80 81 68 05 94 47 69 28 73 92 13 86 52 17 77 04 89 55 40
  04 52 08 83 97 35 99 16 07 97 57 32 16 26 26 79 33 27 98 66
  88 36 68 87 57 62 20 72 03 46 33 67 46 55 12 32 63 93 53 69
  04 42 16 73 38 25 39 11 24 94 72 18 08 46 29 32 40 62 76 36
  20 69 36 41 72 30 23 88 34 62 99 69 82 67 59 85 74 04 36 16
  20 73 35 29 78 31 90 01 74 31 49 71 48 86 81 16 23 57 05 54
  01 70 54 71 83 51 54 69 16 92 33 48 61 43 52 01 89 19 67 48
END

my $terms = 4;

say "Largest product of $terms adjacent elements: " ~ max flat (^@matrix).map: {
    @matrix.rotor($terms => -$terms+1).flat»[$_].batch($terms)».reduce(&[*]), # vertical
    @matrix[$_].rotor($terms => -$terms+1)».reduce(&[*]);                     # horizontal
}
#----------------------------------------------- 534 last-friday-of-each-month-1
sub MAIN (Int $year = Date.today.year) {
    my @fri;
    for Date.new("$year-01-01") .. Date.new("$year-12-31") {
        @fri[.month] = .Str if .day-of-week == 5;
    }
    .say for @fri[1..12];
}
#------------------------------------------------------------ 535 last-list-item
say ' Original ', my @list = 6, 81, 243, 14, 25, 49, 123, 69, 11;

say push @list: get(min @list) + get(min @list) while @list > 1;

sub get ($min) {
    @list.splice: @list.first(* == $min, :k), 1;
    printf " %3d ", $min;
    $min;
}
#----------------------------------------------------- 536 least-common-multiple
say 3 lcm 4;            # infix
say [lcm] 1..20;        # reduction
say ~(1..10 Xlcm 1..10) # cross
#--------------------------------------------------------- 537 left-factorials-1
sub prefix:<!> ($k) { (constant l = 0, |[\+] 1, (|[\*] 1..*))[$k] }

$ = !10000; # Pre-initialize

.say for ( 0 … 10, 20 … 110 ).hyper(:4batch).map: { sprintf "!%d  = %s", $_, !$_ };
.say for (1000, 2000 … 10000).hyper(:4batch).map: { sprintf "!%d has %d digits.", $_, chars !$_ };
#--------------------------------------------------------- 538 left-factorials-2
constant leftfact = 0, |[\+] 1, (|[\*] 1..*);

$ = leftfact[10000]; # Pre-initialize

.say for ( 0 … 10, 20 … 110 ).hyper(:4batch).map: { sprintf "!%d  = %s", $_, leftfact[$_] };
.say for (1000, 2000 … 10000).hyper(:4batch).map: { sprintf "!%d has %d digits.", $_, chars leftfact[$_] };
#----------------------------------------------------- 539 lempel-ziv-complexity
# 20251001 Raku programming solution

say "want - got  as dotted notation";

for q:to/END/.lines
   "AZSEDRFTGYGUJIJOKB" 	16
   "ABCABCABCABCABCABC" 	4
   "111011111001111011111001" 	6
   "101001010010111110" 	5
   "1001111011000010" 	6
   "1010101010" 	3
   "1010101010101010" 	3
   "1001111011000010000010" 	7
   "100111101100001000001010" 	8
   "0001101001000101" 	6
   "1111111" 	2
   "0001" 	2
   "010" 	3
   "1" 	1
   "" (the empty string) 	0
   "01011010001101110010" 	7
   "ABCDEFGHIJKLMNOPQRSTUVWXYZ" 	26
   "HELLO WORLD! HELLO WORLD! HELLO WORLD! HELLO WORLD!" 	11
END
-> $line {
   $line ~~ /\"(.*)\" \h* (\d+)/;
   my ($string, $want) = $0 // '', $1 // 0;
   if $string.chars == 0 { printf "%4d - %2d\n", 0, 0 andthen next }

   my $pos = 0;
   my @parts = gather while $pos < $string.chars {
      if $string ~~ m:pos($pos)/ (.+?) <!{
            my $target = ~$0;
	        my $prefix = $/.prematch ~ $target;
	        $prefix ~~ / $target . /}> / {
         take ~$0;
         $pos = $/.to;
      } else {
         take $string.substr($pos) andthen last
      }
   }
   printf "%4d - %2d   %s\n", $want, @parts.elems, @parts.join('.');
}
#--------------------------------------- 540 length-of-an-arc-between-two-angles
sub arc ( Real \a1, Real \a2, :r(:$radius) = 1 ) {
    ( ([-] (a2, a1).map((* + τ) % τ)) + τ ) % τ × $radius
}

sub postfix:<°> (\d) { d × τ / 360 }
sub postfix:<ᵍ> (\g) { g × τ / 400 }

say 'Task example: from 120° counter-clockwise to 10° with 10 unit radius';
say arc(:10radius, 120°, 10°), ' engineering units';

say "\nSome test examples:";
for \(120°, 10°), # radian magnitude (unit radius)
    \(10°, 120°), # radian magnitude (unit radius)
    \(:radius(10/π), 180°, -90°), # 20 unit circumference for ease of comparison
    \(0°, -90°, :r(10/π),),       #  ↓  ↓  ↓  ↓  ↓  ↓  ↓
    \(:radius(10/π), 0°, 90°),
    \(π/4, 7*π/4, :r(10/π)),
    \(175ᵍ, -45ᵍ, :r(10/π)) {  # test gradian parameters
    printf "Arc length: %8s  Parameters: %s\n", arc(|$_).round(.000001), $_.raku
}
#---------------------------------------------------------- 541 leonardo-numbers
sub 𝑳 ( $𝑳0 = 1, $𝑳1 = 1, $𝑳add = 1 ) { $𝑳0, $𝑳1, { $^n2 + $^n1 + $𝑳add } ... * }

# Part 1
say "The first 25 Leonardo numbers:";
put 𝑳()[^25];

# Part 2
say "\nThe first 25 numbers using 𝑳0 of 0, 𝑳1 of 1, and adder of 0:";
put 𝑳( 0, 1, 0 )[^25];
#-------------------------------------------- 542 levenshtein-distance-alignment
sub align ( Str $σ, Str $t ) {
    my @s = flat *, $σ.comb;
    my @t = flat *, $t.comb;

    my @A;
    @A[$_][ 0]<d s t> = $_, @s[1..$_].join, '-' x $_ for ^@s;
    @A[ 0][$_]<d s t> = $_, '-' x $_, @t[1..$_].join for ^@t;

    for 1 ..^ @s X 1..^ @t -> (\i, \j) {
	if @s[i] ne @t[j] {
	    @A[i][j]<d> = 1 + my $min =
	    min @A[i-1][j]<d>, @A[i][j-1]<d>, @A[i-1][j-1]<d>;
	    @A[i][j]<s t> =
	    @A[i-1][j]<d> == $min ??  (@A[i-1][j]<s t> Z~ @s[i], '-') !!
	    @A[i][j-1]<d> == $min ??  (@A[i][j-1]<s t> Z~ '-', @t[j]) !!
	    (@A[i-1][j-1]<s t> Z~ @s[i], @t[j]);
	} else {
	    @A[i][j]<d s t> = @A[i-1][j-1]<d s t> Z~ '', @s[i], @t[j];
	}
    }

    return @A[*-1][*-1]<s t>;
}

.say for align 'rosettacode', 'raisethysword';
#------------------------------------------------------ 543 levenshtein-distance
sub levenshtein-distance ( Str $s, Str $t --> Int ) {
    my @s = *, |$s.comb;
    my @t = *, |$t.comb;

    my @d;
    @d[$_;  0] = $_ for ^@s.end;
    @d[ 0; $_] = $_ for ^@t.end;

    for 1..@s.end X 1..@t.end -> ($i, $j) {
        @d[$i; $j] = @s[$i] eq @t[$j]
            ??   @d[$i-1; $j-1]    # No operation required when eq
            !! ( @d[$i-1; $j  ],   # Deletion
                 @d[$i  ; $j-1],   # Insertion
                 @d[$i-1; $j-1],   # Substitution
               ).min + 1;
    }

    @d[*-1][*-1];
}

for <kitten sitting>, <saturday sunday>, <rosettacode raisethysword> -> ($s, $t) {
    say "Levenshtein distance('$s', '$t') == ", levenshtein-distance($s, $t)
}
#-------------------------------------------------- 544 line-circle-intersection
sub LineCircularOBJintersection(@P1, @P2, @Centre, \Radius) {
   my @d = @P2 »-« @P1 ;           # d
   my @f = @P1 »-« @Centre ;       # c

   my \a = [+] @d»²;               # d dot d
   my \b = 2 * ([+] @f »*« @d);    # 2 * f dot d
   my \c = ([+] @f»²) - Radius²;   # f dot f - r²
   my \Δ =  b²-(4*a*c);            # discriminant

   if (Δ < 0) {
      return [];
   } else {
      my (\t1,\t2) = (-b - Δ.sqrt)/(2*a), (-b + Δ.sqrt)/(2*a);
      if 0 ≤ t1|t2 ≤ 1 {
         return @P1 »+« ( @P2 »-« @P1 ) »*» t1, @P1 »+« ( @P2 »-« @P1 ) »*» t2
      } else {
         return []
      }
   }
}

my \DATA = [
   [ <-10 11>, < 10 -9>, <3 -5>, 3 ],
   [ <-10 11>, <-11 12>, <3 -5>, 3 ],
   [ <  3 -2>, <  7 -2>, <3 -5>, 3 ],
   [ <  3 -2>, <  7 -2>, <0  0>, 4 ],
   [ <  0 -3>, <  0  6>, <0  0>, 4 ],
   [ <  6  3>, < 10  7>, <4  2>, 5 ],
   [ <  7  4>, < 11 18>, <4  2>, 5 ],
   [ <5  2 −2.26 >, <0.77 2 4>, <1 4 0>, 4 ]
];

for DATA {
   my @solution = LineCircularOBJintersection $_[0] , $_[1] , $_[2], $_[3];
   say "For data set: ", $_;
   say "Solution(s) is/are: ", @solution.Bool ?? @solution !! "None";
}
#--------------------------------------------- 545 linear-congruential-generator
constant modulus = 2**31;
sub bsd  {
    $^seed, ( 1103515245 * * + 12345 ) % modulus ... *
}
sub ms   {
    map * +> 16, (
	$^seed, ( 214013 * * + 2531011 ) % modulus ... *
    )
}

say 'BSD LCG first 10 values (first one is the seed):';
.say for bsd(0)[^10];

say "\nMS LCG first 10 values (first one is the seed):";
.say for ms(0)[^10];
#------------------------------------------------------- 546 list-comprehensions
my $n = 20;
say gather for 1..$n -> $x {
         for $x..$n -> $y {
           for $y..$n -> $z {
             take $x,$y,$z if $x*$x + $y*$y == $z*$z;
           }
         }
       }
#------------------------------------------------------------- 547 list-division
for #       list                 parts
  <94 94 13 77 35 10 51 27 60>,    6,
  <19 46 43 17 94>,                1,
  <93 88 40 88 30 68 84 25>,       3,
  <88 94 10 27 54 14>,             3,
  <31 19 63 57 57 74 50 14 38>,    4,
  <72 57 89 55 36 84 10 95 99 35>, 7,
  <23 49 57>,                     10,
  [1],                             2,
  [],                              2
   -> @list, $parts {
      say "<{@list}> divided into $parts parts:\n{@list.&divide($parts).gist}\n";
}

say "<{'a'..'z'}> divided into $_ parts:\n{('a'..'z').&divide($_).gist}\n" for 2, 3, 5, 11, 13, 30;

sub divide (@list, Int $parts where * > 0) {
    note "Warning: parts ($parts) is greater than list elements ({+@list})." if $parts > +@list;
    my ($remainder, $size) = (+@list).polymod($parts);
    my ($begin, $end) = 0, $size;
    ++$end and $remainder-- if $remainder;
    gather for ^$parts {
        take @list[$begin..^$end];
        $begin = $end;
        $end += $size;
        ++$end and $remainder-- if $remainder;
    }
}
#---------------------------------------------------------- 548 literals-integer
say 255;
say 0d255;
say 0xff;
say 0o377;
say 0b1111_1111;

say :10<255>;
say :16<ff>;
say :8<377>;
say :2<1111_1111>;
say :3<100110>;
say :4<3333>;
say :12<193>;
say :36<73>;
#--------------------------------------------------------- 549 literals-string-2
say qq:to/END/;
    Your ad here.
    END
#-------------------------------------------------------- 550 logical-operations
sub logic($a,$b) {
    say "$a && $b is ", $a && $b;     # short-circuiting
    say "$a || $b is ", $a || $b;     # short-circuiting
    say "$a ^^ $b is ", $a ^^ $b;
    say "!$a is ",     !$a;

    say "$a ?& $b is ", $a ?& $b;     # non-short-circuiting
    say "$a ?| $b is ", $a ?| $b;     # non-short-circuiting
    say "$a ?^ $b is ", $a ?^ $b;     # non-short-circuiting

    say "$a +& $b is ", $a +& $b;     # numeric bitwise
    say "$a +| $b is ", $a +| $b;     # numeric bitwise
    say "$a +^ $b is ", $a +^ $b;     # numeric bitwise

    say "$a ~& $b is ", $a ~& $b;     # buffer bitwise
    say "$a ~| $b is ", $a ~| $b;     # buffer bitwise
    say "$a ~^ $b is ", $a ~| $b;     # buffer bitwise

    say "$a & $b is ", $a & $b;       # junctional/autothreading
    say "$a | $b is ", $a | $b;       # junctional/autothreading
    say "$a ^ $b is ", $a ^ $b;       # junctional/autothreading

    say "$a and $b is ", ($a and $b); # loose short-circuiting
    say "$a or $b is ",  ($a or $b);  # loose short-circuiting
    say "$a xor $b is ", ($a xor $b);
    say "not $a is ",    (not $a);
}

logic(3,10);
#------------------------------------ 551 logistic-curve-fitting-in-epidemiology
my $K  = 7_800_000_000; #  population
my $n0 = 27;            #  cases @ day 0

my @Apr05 = <
         27      27      27      44      44      59      59      59      59      59
         59      59      59      60      60      61      61      66      83     219
        239     392     534     631     897    1350    2023    2820    4587    6067
       7823    9826   11946   14554   17372   20615   24522   28273   31491   34933
      37552   40540   43105   45177   60328   64543   67103   69265   71332   73327
      75191   75723   76719   77804   78812   79339   80132   80995   82101   83365
      85203   87024   89068   90664   93077   95316   98172  102133  105824  109695
     114232  118610  125497  133852  143227  151367  167418  180096  194836  213150
     242364  271106  305117  338133  377918  416845  468049  527767  591704  656866
     715353  777796  851308  928436 1000249 1082054 1174652
>;

my @May11 = <
         27      27      27      44      44      59      59      59      59      59
         59      59      59      60      60      61      61      66      83     219
        239     392     534     631     897    1350    2023    2820    4587    6067
       7823    9826   11946   14554   17372   20615   24522   28273   31491   34933
      37552   40540   43105   45177   60328   64543   67103   69265   71332   73327
      75191   75723   76719   77804   78812   79339   80132   80995   82101   83365
      85203   87026   89068   90865   93077   95316   98172  102133  105824  109695
     114235  118613  125497  133853  143259  154774  167418  180094  194843  213149
     242374  271116  305235  338235  377968  416881  468092  527839  591796  656834
     715377  777187  851587  928491 1006063 1087822 1174306 1245601 1316988 1391881
    1476792 1563819 1653160 1734868 1807256 1873639 1953786 2033745 2117297 2199460
    2278484 2350993 2427353 2513399 2579823 2657910 2731217 2832750 2915977 2981542
    3054404 3131487 3216467 3308341 3389459 3468047 3545486 3624789 3714816 3809262
    3899379 3986931 4063525
>;

sub logistic-func ($rate, @y) {
    my $sq = 0;
    for ^@y -> $time {
        my $ert = exp($rate * $time);
        my $δt = ($n0 * $ert) / (1 + $n0 * ($ert-1) / $K) - @y[$time];
        $sq += $δt²;
    }
    $sq
}

sub solve (&f, $guess, \ε, @y) {
    my $fₙ-minus;
    my $fₙ-plus;
    my $rate   = $guess;
    my $fₙ     = f $rate, @y;
    my $Δ      = $rate;
    my $factor = 2;
    while $Δ > ε {
        ($fₙ-minus = f $rate - $Δ, @y) < $fₙ ??
        do {
            $fₙ    = $fₙ-minus;
            $rate -= $Δ;
            $Δ    *= $factor;
        } !!
        ($fₙ-plus = f $rate + $Δ, @y) < $fₙ ??
        do {
            $fₙ    = $fₙ-plus;
            $rate += $Δ;
            $Δ    *= $factor;
        } !!
        $Δ /= $factor
    }
    $rate
}

for @Apr05, 'Dec 31 - Apr 5',
    @May11, 'Dec 31 - May 11' -> @y, $period {
    my $rate = solve(&logistic-func, 0.5, 0, @y);
    my $R0   = exp(12 * $rate);
    say "\nFor period: $period";
    say "Instantaneous rate of growth: r = " , $rate.fmt('%08f');
    say "Reproductive rate: R0 = ", $R0.fmt('%08f');
}
#------------------------------------------ 552 long-literals-with-continuations
my %periodic;
%periodic<revision-date> = Date.new(2020,3,23);
%periodic<table> = |<

         Hydrogen  1.0079     H             Helium  4.0026    He
          Lithium  6.941     Li          Beryllium  9.0122    Be
            Boron  10.811     B             Carbon  12.0107    C
         Nitrogen  14.0067    N             Oxygen  15.9994    O
         Fluorine  18.9984    F               Neon  20.1797   Ne
           Sodium  22.9897   Na          Magnesium  24.305    Mg
         Aluminum  26.9815   Al            Silicon  28.0855   Si
       Phosphorus  30.9738    P             Sulfur  32.065     S
         Chlorine  35.453    Cl          Potassium  39.0983    K
            Argon  39.948    Ar            Calcium  40.078    Ca
         Scandium  44.9559   Sc           Titanium  47.867    Ti
         Vanadium  50.9415    V           Chromium  51.9961   Cr
        Manganese  54.938    Mn               Iron  55.845    Fe
           Nickel  58.6934   Ni             Cobalt  58.9332   Co
           Copper  63.546    Cu               Zinc  65.39     Zn
          Gallium  69.723    Ga          Germanium  72.64     Ge
          Arsenic  74.9216   As           Selenium  78.96     Se
          Bromine  79.904    Br            Krypton  83.8      Kr
         Rubidium  85.4678   Rb          Strontium  87.62     Sr
          Yttrium  88.9059    Y          Zirconium  91.224    Zr
          Niobium  92.9064   Nb         Molybdenum  95.94     Mo
       Technetium  98        Tc          Ruthenium  101.07    Ru
          Rhodium  102.9055  Rh          Palladium  106.42    Pd
           Silver  107.8682  Ag            Cadmium  112.411   Cd
           Indium  114.818   In                Tin  118.71    Sn
         Antimony  121.76    Sb             Iodine  126.9045   I
        Tellurium  127.6     Te              Xenon  131.293   Xe
           Cesium  132.9055  Cs             Barium  137.327   Ba
        Lanthanum  138.9055  La             Cerium  140.116   Ce
     Praseodymium  140.9077  Pr          Neodymium  144.24    Nd
       Promethium  145       Pm           Samarium  150.36    Sm
         Europium  151.964   Eu         Gadolinium  157.25    Gd
          Terbium  158.9253  Tb         Dysprosium  162.5     Dy
          Holmium  164.9303  Ho             Erbium  167.259   Er
          Thulium  168.9342  Tm          Ytterbium  173.04    Yb
         Lutetium  174.967   Lu            Hafnium  178.49    Hf
         Tantalum  180.9479  Ta           Tungsten  183.84     W
          Rhenium  186.207   Re             Osmium  190.23    Os
          Iridium  192.217   Ir           Platinum  195.078   Pt
             Gold  196.9665  Au            Mercury  200.59    Hg
         Thallium  204.3833  Tl               Lead  207.2     Pb
          Bismuth  208.9804  Bi           Polonium  209       Po
         Astatine  210       At              Radon  222       Rn
         Francium  223       Fr             Radium  226       Ra
         Actinium  227       Ac       Protactinium  231.0359  Pa
          Thorium  232.0381  Th          Neptunium  237       Np
          Uranium  238.0289   U          Americium  243       Am
        Plutonium  244       Pu             Curium  247       Cm
        Berkelium  247       Bk        Californium  251       Cf
      Einsteinium  252       Es            Fermium  257       Fm
      Mendelevium  258       Md           Nobelium  259       No
    Rutherfordium  261       Rf         Lawrencium  262       Lr
          Dubnium  262       Db            Bohrium  264       Bh
       Seaborgium  266       Sg         Meitnerium  268       Mt
      Roentgenium  272       Rg            Hassium  277       Hs
     Darmstadtium  ???       Ds        Copernicium  ???       Cn
         Nihonium  ???       Nh          Flerovium  ???       Fl
        Moscovium  ???       Mc        Livermorium  ???       Lv
       Tennessine  ???       Ts          Oganesson  ???       Og

>.words.map: { (:name($^a), :weight($^b), :symbol($^c)).hash };

put 'Revision date: ',                                   %periodic<revision-date>;
put 'Last element by position (nominally by weight): ',  %periodic<table>.tail.<name>;
put 'Total number of elements: ',                        %periodic<table>.elems;
put 'Last element sorted by full name: ',                %periodic<table>.sort( *.<name> ).tail.<name>;
put 'Longest element name: ',                            %periodic<table>.sort( *.<name>.chars ).tail.<name>;
put 'Shortest element name: ',                           %periodic<table>.sort( -*.<name>.chars ).tail.<name>;
put 'Symbols for elements whose name starts with "P": ', %periodic<table>.grep( *.<name>.starts-with('P') )».<symbol>;
put "Elements with molecular weight between 20 & 40:\n ",%periodic<table>.grep( {+.<weight> ~~ Numeric and 20 < .<weight> < 40} )».<name>;
put "SCRN: ",                                            %periodic<table>[87,17,92]».<symbol>.join.tclc;
#------------------------------------------------------- 553 long-multiplication
sub num_to_groups ( $num ) { $num.flip.comb(/.**1..4/)».flip     };
sub groups_to_num ( @g   ) { [~] flat @g.pop, @g.reverse».fmt('%04d') };

sub long_multiply ( Str $x, Str $y ) {
    my @group_sums;
    for flat num_to_groups($x).pairs X num_to_groups($y).pairs -> $xp, $yp {
        @group_sums[ $xp.key + $yp.key ] += $xp.value * $yp.value;
    }

    for @group_sums.keys -> $k {
        next if @group_sums[$k] < 10000;
        @group_sums[$k+1] += @group_sums[$k].Int div 10000;
        @group_sums[$k] %= 10000;
    }

    return groups_to_num @group_sums;
}

my $str = '18446744073709551616';
long_multiply( $str, $str ).say;

# cross-check with native implementation
say +$str * +$str;
#----------------------------------------------------------------- 554 long-year
sub is-long ($year) { Date.new("$year-12-28").week[1] == 53 }

# Testing
say   "Long years in the 20th century:\n", (1900..^2000).grep: &is-long;
say "\nLong years in the 21st century:\n", (2000..^2100).grep: &is-long;
say "\nLong years in the 22nd century:\n", (2100..^2200).grep: &is-long;
#----------------------------------------------------- 555 longest-common-prefix
multi lcp()    { '' }
multi lcp($s)  { ~$s }
multi lcp(*@s) { substr @s[0], 0, [+] [\and] [Zeqv] |@s».ords }

use Test;
plan 8;

is lcp("interspecies","interstellar","interstate"), "inters";
is lcp("throne","throne"), "throne";
is lcp("throne","dungeon"), '';
is lcp("cheese"), "cheese";
is lcp(''), '';
is lcp(), '';
is lcp("prefix","suffix"), '';
is lcp("foo","foobar"), 'foo';
#---------------------------------------------- 556 longest-common-subsequence-1
say lcs("thisisatest", "testing123testing");sub lcs(Str $xstr, Str $ystr) {
    return "" unless $xstr && $ystr;

    my ($x, $xs, $y, $ys) = $xstr.substr(0, 1), $xstr.substr(1), $ystr.substr(0, 1), $ystr.substr(1);
    return $x eq $y
        ?? $x ~ lcs($xs, $ys)
        !! max(:by{ $^a.chars }, lcs($xstr, $ys), lcs($xs, $ystr) );
}

say lcs("thisisatest", "testing123testing");
#---------------------------------------------- 557 longest-common-subsequence-2
sub lcs(Str $xstr, Str $ystr) {
    my ($xlen, $ylen) = ($xstr, $ystr)>>.chars;
    my @lengths = map {[(0) xx ($ylen+1)]}, 0..$xlen;

    for $xstr.comb.kv -> $i, $x {
        for $ystr.comb.kv -> $j, $y {
            @lengths[$i+1][$j+1] = $x eq $y ?? @lengths[$i][$j]+1 !! (@lengths[$i+1][$j], @lengths[$i][$j+1]).max;
        }
    }

    my @x = $xstr.comb;
    my ($x, $y) = ($xlen, $ylen);
    my $result = "";
    while $x != 0 && $y != 0 {
        if @lengths[$x][$y] == @lengths[$x-1][$y] {
            $x--;
        }
        elsif @lengths[$x][$y] == @lengths[$x][$y-1] {
            $y--;
        }
        else {
            $result = @x[$x-1] ~ $result;
            $x--;
            $y--;
        }
    }

    return $result;
}

say lcs("thisisatest", "testing123testing");
#---------------------------------------------- 558 longest-common-subsequence-3
sub lcs(Str $xstr, Str $ystr) {
    my (@a, @b) := ($xstr, $ystr)».comb;
    my (%positions, @Vs, $lcs);

    for @a.kv -> $i, $x { %positions{$x} +|= 1 +< ($i % @a) }

    my $S = +^ 0;
    for (0 ..^ @b) -> $j {
        my $u = $S +& (%positions{@b[$j]} // 0);
        @Vs[$j] = $S = ($S + $u) +| ($S - $u)
    }

    my ($i, $j) = @a-1, @b-1;
    while ($i ≥ 0 and $j ≥ 0) {
        unless (@Vs[$j] +& (1 +< $i)) {
            $lcs [R~]= @a[$i] unless $j and ^@Vs[$j-1] +& (1 +< $i);
            $j--
        }
        $i--
    }
    $lcs
}

say lcs("thisisatest", "testing123testing");
#------------------------------------------------ 559 longest-common-substring-2
sub substrings ($s)       { (flat (0..$_ X 1..$_).grep:{$_ ≥ [+] @_}).map: { $s.substr($^a, $^b) } given $s.chars }
sub infix:<LCS>($s1, $s2) { ([∩] ($s1, $s2)».&substrings).keys.sort(*.chars).tail }

my $first  = 'thisisatest';
my $second = 'testing123testing';
say "The longest common substring between '$first' and '$second' is '{$first LCS $second}'.";
#----------------------------------------------------- 560 longest-common-suffix
sub longest-common-suffix ( *@words ) {
    return '' unless +@words;
    my $min = @words».chars.min;
    for 1 .. * {
        return @words[0].substr(* - $min) if $_ > $min;
        next if @words».substr(* - $_).Set == 1;
        return @words[0].substr(* - $_ + 1);
    }
}

say "{$_.raku} - LCS: >{longest-common-suffix $_}<" for
  <Sunday Monday Tuesday Wednesday Thursday Friday Saturday>,
  <Sondag Maandag Dinsdag Woensdag Donderdag Vrydag Saterdag dag>,
  ( 2347, 9312347, 'acx5g2347', 12.02347 ),
  <longest common suffix>,
  ('one, Hey!', 'three, Hey!', 'ale, Hey!', 'me, Hey!'),
  'suffix',
  ''
#------------------------------------------ 561 longest-increasing-subsequence-1
sub lis(@d) {
    my @l = [].item xx @d;
    @l[0].push: @d[0];
    for 1 ..^ @d -> $i {
        for ^$i -> $j {
            if @d[$j] < @d[$i] && @l[$i] < @l[$j] + 1 {
                @l[$i] = [ @l[$j][] ]
            }
        }
        @l[$i].push: @d[$i];
    }
    return max :by(*.elems), @l;
}

say lis([3,2,6,4,5,1]);
say lis([0,8,4,12,2,10,6,14,1,9,5,13,3,11,7,15]);
#------------------------------------------ 562 longest-increasing-subsequence-2
sub lis(@deck is copy) {
    my @S = [@deck.shift() => Nil].item;
    for @deck -> $card {
        with first { @S[$_][*-1].key > $card }, ^@S -> $i {
            @S[$i].push: $card => @S[$i-1][*-1] // Nil
        } else {
            @S.push: [ $card => @S[*-1][*-1] // Nil ].item
        }
    }
    reverse map *.key, (
        @S[*-1][*-1], *.value ...^ !*.defined
    )
}

say lis <3 2 6 4 5 1>;
say lis <0 8 4 12 2 10 6 14 1 9 5 13 3 11 7 15>;
#----------------------------------------------------- 563 look-and-say-sequence
.say for ('1', *.subst(/(.)$0*/, { .chars ~ .[0] }, :g) ... *)[^15];
#-------------------------------- 564 loop-over-multiple-arrays-simultaneously-1
for <a b c> Z <A B C> Z 1, 2, 3 -> ($x, $y, $z) {
   say $x, $y, $z;
}
#-------------------------------- 565 loop-over-multiple-arrays-simultaneously-2
.say for <a b c> Z~ <A B C> Z~ 1, 2, 3;
#-------------------------------- 566 loop-over-multiple-arrays-simultaneously-3
.say for [Z~] <a b c>, <A B C>, (1,2,3);
#-------------------------------- 567 loop-over-multiple-arrays-simultaneously-4
.say for zip :with(&infix:<~>), <a b c>, <A B C>, (1,2,3);
#-------------------------------- 568 loop-over-multiple-arrays-simultaneously-7
.put for roundrobin <a b c>, 'A'..'G', ^5;
#---------------------------------------------------------- 569 loops-continue-1
for 1 .. 10 {
    .print;
    if $_ %% 5 {
        print "\n";
        next;
    }
    print ', ';
}
#---------------------------------------------------------- 570 loops-continue-2
$_.join(", ").say for [1..5], [6..10];
#---------------------------------------------------------- 571 loops-do-while-1
my $val = 0;
repeat {
    say ++$val;
} while $val % 6;
#---------------------------------------------------------- 572 loops-do-while-2
my $val = 0;
repeat {
    say ++$val;
} until $val %% 6;
#---------------------------------------------------------- 573 loops-do-while-3
my $val = 0;
repeat while $val % 6 {
    say ++$val;
}
#-------------------------------------------------------- 574 loops-downward-for
for 10 ... 0 {
    .say;
}
#--------------------------------------------------------------- 575 loops-for-1
for ^5 {

	for 0..$_ {
		print "*";
	}
	
	print "\n";

}
#--------------------------------------------------------------- 576 loops-for-2
say '*' x $_ for 1..5;
#--------------------------------------------------------------- 577 loops-for-3
([\~] "*" xx 5).join("\n").say;
#----------------------------------------- 578 loops-for-with-a-specified-step-1
for 2, 4 ... 8 {
    print "$_, ";
}

say 'whom do we appreciate?';
#----------------------------------------- 579 loops-for-with-a-specified-step-3
.say for <17/32 π banana 👀 :d(7) 🦋>;
#------------------------------- 580 loops-increment-loop-index-within-loop-body
# the actual sequence logic
my @seq = grep *.is-prime, (42, { .is-prime ?? $_+<1 !! $_+1 } … *);

# display code
say (1+$_).fmt("%-4s"), @seq[$_].flip.comb(3).join(',').flip.fmt("%20s") for ^42;
#----------------------------------------------------- 581 loops-n-plus-one-half
for 1 .. 10 {
    .print;
    last when 10;
    print ', ';
}

print "\n";
#------------------------------------------------------------- 582 loops-while-1
my $n = 1024; while $n > 0 { say $n; $n div= 2 }
#------------------------------------------------------------- 583 loops-while-2
loop (my $n = 1024; $n > 0; $n +>= 1) { say $n }
#------------------------------------------------------------- 584 loops-while-3
.say for 1024, 512, 256 ... 1
#------------------------------------------------ 585 loops-with-multiple-ranges
sub comma { ($^i < 0 ?? '-' !! '') ~ $i.abs.flip.comb(3).join(',').flip }

my \x     =  5;
my \y     = -5;
my \z     = -2;
my \one   =  1;
my \three =  3;
my \seven =  7;

my $j = flat
  ( -three, *+three … 3³         ),
  ( -seven, *+x     …^ * > seven ),
  ( 555   .. 550 - y             ),
  ( 22,     *-three …^ * < -28   ),
  ( 1927  .. 1939                ),
  ( x,      *+z     …^ * < y     ),
  ( 11**x .. 11**x + one         );

put 'j sequence: ', $j;
put '       Sum: ', comma [+] $j».abs;
put '   Product: ', comma ([\*] $j.grep: so +*).first: *.abs > 2²⁷;

# Or, an alternate method for generating the 'j' sequence, employing user-defined
# operators to preserve the 'X to Y by Z' layout of the example code.
# Note that these operators will only work for monotonic sequences.

sub infix:<to> { $^a ... $^b }
sub infix:<by> { $^a[0, $^b.abs ... *] }

$j = cache flat
    -three  to          3**3  by  three ,
    -seven  to         seven  by      x ,
       555  to     (550 - y)            ,
        22  to           -28  by -three ,
      1927  to          1939  by    one ,
         x  to             y  by      z ,
     11**x  to (11**x + one)            ;

put "\nLiteral minded variant:";
put '       Sum: ', comma [+] $j».abs;
put '   Product: ', comma ([\*] $j.grep: so +*).first: *.abs > 2²⁷;
#-------------------------------------------------------- 586 loops-wrong-ranges
# Given sequence definitions
#   start  stop  inc.   Comment
for   -2,    2,    1, # Normal
      -2,    2,    0, # Zero increment
      -2,    2,   -1, # Increments away from stop value
      -2,    2,   10, # First increment is beyond stop value
       2,   -2,    1, # Start more than stop: positive increment
       2,    2,    1, # Start equal stop: positive increment
       2,    2,   -1, # Start equal stop: negative increment
       2,    2,    0, # Start equal stop: zero increment
       0,    0,    0, # Start equal stop equal zero: zero increment

# Additional "problematic" sequences
       1,  Inf,    3, # Endpoint literally at infinity
       0,    π,  τ/8, # Floating point numbers
     1.4,    *, -7.1  # Whatever

  -> $start, $stop, $inc {
    my $seq = flat ($start, *+$inc … $stop);
    printf "Start: %3s, Stop: %3s, Increment: %3s | ", $start, $stop.Str, $inc;
    # only show up to the first 15 elements of possibly infinite sequences
    put $seq[^15].grep: +*.defined
}

# For that matter the start and end values don't need to be numeric either. Both
# or either can be a function, list, or other object. Really anything that a
# "successor" function can be defined for and produces a value.
say "\nDemonstration of some other specialized sequence operator functionality:";
# Start with a list, iterate by multiplying the previous 3 terms together
# and end with a term defined by a function.
put 1, -.5, 2.sqrt, * × * × * … *.abs < 1e-2;

# Start with an array, iterate by rotating, end when 0 is in the last place.
say [0,1,2,3,4,5], *.rotate(-1).Array … !*.tail;

# Iterate strings backwards.
put 'xp' … 'xf';
#---------------------------------------------------------- 587 lu-decomposition
for (  [1, 3, 5], # Test Matrices
       [2, 4, 7],
       [1, 1, 0]
    ),
    (  [11,  9, 24,  2],
       [ 1,  5,  2,  6],
       [ 3, 17, 18,  1],
       [ 2,  5,  7,  1]
    )
    -> @test {
    say-it 'A Matrix', @test;
    say-it( .[0], @(.[1]) ) for 'P Matrix', 'Aʼ Matrix', 'L Matrix', 'U Matrix' Z, lu @test;
}

sub lu (@a) {
    die unless @a.&is-square;
    my $n  = @a;
    my @P  = pivotize @a;
    my @Aʼ = mmult @P, @a;
    my @L  = matrix-ident $n;
    my @U  = matrix-zero  $n;
    for ^$n X ^$n -> ($i,$j) {
        if $j ≥ $i { @U[$i;$j] =  @Aʼ[$i;$j] - [+] map { @U[$_;$j] × @L[$i;$_] }, ^$i              }
        else       { @L[$i;$j] = (@Aʼ[$i;$j] - [+] map { @U[$_;$j] × @L[$i;$_] }, ^$j) / @U[$j;$j] }
    }
    @P, @Aʼ, @L, @U;
}

sub pivotize (@m) {
    my $size = @m;
    my @id   = matrix-ident $size;
    for ^$size -> $i {
        my $max = @m[$i;$i];
        my $row = $i;
        for $i ..^ $size -> $j {
            if @m[$j;$i] > $max {
                $max = @m[$j;$i];
                $row = $j;
            }
        }
        @id[$row, $i] = @id[$i, $row] if $row != $i;
    }
    @id
}

sub is-square (@m) { so @m == all @m }

sub matrix-zero ($n, $m = $n) { map { [ flat 0 xx $n ] }, ^$m }

sub matrix-ident ($n) { map { [ flat 0 xx $_, 1, 0 xx $n - 1 - $_ ] }, ^$n }

sub mmult(@a,@b) {
    my @p;
    for ^@a X ^@b[0] -> ($r, $c) {
        @p[$r;$c] += @a[$r;$_] × @b[$_;$c] for ^@b;
    }
    @p
}

sub rat-int ($num) {
    return $num unless $num ~~ Rat;
    return $num.narrow if $num.narrow ~~ Int;
    $num.nude.join: '/';

}

sub say-it ($message, @array) {
    say "\n$message";
    $_».&rat-int.fmt("%7s").say for @array;
}
#-------------------------------------------------- 588 lucas-carmichael-numbers
# 20231224 Raku programming solution

sub primorial($n) { [*] ((2..*).grep: *.is-prime)[^$n] }
sub divceil($x, $y) { ($x %% $y ?? 0 !! 1) + $x div $y } # ceil(x/y)

sub LC_in_range ($A is copy, $B, $k) {

   my ($max_p, @LC) = Int(sqrt($B + 1) - 1);
   $A = max(primorial($k + 1) +> 1, $A);

   sub SUB($m, $L, $lo is copy, $k) {

      if $k == 1 {

         my $hi = min($B div $m, $max_p);
         $lo = max($lo, divceil($A, $m));

         my $t = $L - expmod($m, -1, $L);
         $t += $L while $t < $lo;
         return if $t > $hi;

         for $t, $t+$L ... $hi -> $p {
            if $p.is-prime {
               my $n = $m * $p;
               @LC.push($n) if ($n + 1) %% ($p + 1);
            }
         }
         return;
      }

      for $lo .. Int(($B div $m)**(1/$k)) -> $p {
         if $p.is-prime and ($m gcd ($p + 1)) == 1 {
            SUB($m * $p, ($L lcm ($p + 1)), $p + 1, $k - 1)
         }
      }
   };

   SUB(1, 1, 3, $k);

   return @LC.sort;
}

sub LC_with_n_primes ($n) {
   return if $n < 3;

   my $y = 2 * ( my $x = primorial($n + 1) +> 1);

   loop {
      my @LC = LC_in_range($x, $y, $n);
      return @LC[0] if @LC.Bool;
      $x = $y + 1;
      $y = 2 * $x;
   }
}

sub LC_count ($A, $B) {
   my $count = 0;
   for 3 .. Inf -> $k {
      last if primorial($k + 1) / 2 > $B;
      $count += LC_in_range($A, $B, $k).elems
   }
   return $count;
}

say "Least Lucas-Carmichael number with n prime factors:";

for 3 .. 12 -> $n { printf("%2d: %d\n", $n, LC_with_n_primes($n)) }

say "\nNumber of Lucas-Carmichael numbers less than 10^n:";

my $acc = 0;
for 1 .. 10 -> $n {
   my $c = LC_count(10**($n - 1), 10**$n);
   printf("%2d: %s\n", $n, $acc + $c);
   $acc += $c
}
#------------------------------------------------------------- 589 ludic-numbers
constant @ludic = gather {
        my @taken = take 1;
        my @rotor;

        for 2..* -> $i {
            loop (my $j = 0; $j < @rotor; $j++) {
                --@rotor[$j] or last;
            }
            if $j < @rotor {
                @rotor[$j] = @taken[$j+1];
            }
            else {
                push @taken, take $i;
                push @rotor, @taken[$j+1];
            }
        }
    }

say @ludic[^25];
say "Number of Ludic numbers <= 1000: ", +(@ludic ...^ * > 1000);
say "Ludic numbers 2000..2005: ", @ludic[1999..2004];

my \l250 = set @ludic ...^ * > 250;
say "Ludic triples < 250: ", gather
    for l250.keys.sort -> $a {
        my $b = $a + 2;
        my $c = $a + 6;
        take "<$a $b $c>" if $b ∈ l250 and $c ∈ l250;
    }
#------------------------------------------ 590 luhn-test-of-credit-card-numbers
sub luhn-test ($number --> Bool) {
    my @digits = $number.comb.reverse;
    my $sum = @digits[0,2...*].sum
            + @digits[1,3...*].map({ |($_ * 2).comb }).sum;
    return $sum %% 10;
}

# And we can test it like this:

use Test;

my @cc-numbers =
    '49927398716'       => True,
    '49927398717'       => False,
    '1234567812345678'  => False,
    '1234567812345670'  => True;

plan @cc-numbers.elems;

for @cc-numbers».kv -> ($cc, $expected-result) {
    is luhn-test(+$cc), $expected-result,
        "$cc {$expected-result ?? 'passes' !! 'does not pass'} the Luhn test.";
}
#---------------------------------------------------------- 591 lunar-arithmetic
# The operators
sub infix:<🌙+> ($a, $b = 0) { # addition
    +([Zmax] ('0'x$b.chars~$a).comb,('0'x$a.chars~$b).comb).join;
}

sub infix:<🌙×> ($a, $b = 9) { # multiplication
    [🌙+] $b.flip.comb.kv.map: -> $k,$v {$a.comb.map(* min $v).join ~ '0'x$k}
}

# The task
for (976, 348), (23, 321), (232, 35), (123, 32192, 415, 8) {
    say '     Lunar add: ' ~ (.join: ' 🌙+ ') ~ ' == ' ~ (.join: ' 🌙+ ').EVAL;
    say 'Lunar multiply: ' ~ (.join: ' 🌙× ') ~ ' == ' ~ (.join: ' 🌙× ').EVAL;
    say '';
}

say "First 20 distinct lunar even numbers:\n" ~ (^Inf).map(* 🌙× 2).unique[^20];
say "\nFirst 20 lunar square numbers:\n"      ~ (my @squares = (^Inf).map:{$_ 🌙× $_})[^20];
say "\nFirst 20 lunar factorial numbers:\n"   ~ (1..*).map({[🌙×] 1..$_})[^20];

# Stretch
say "\nFirst number whose lunar square is smaller than the previous: " ~
(1..Inf).first: {@squares[$_ - 1] > @squares[$_]};
#--------------------------------------------------------------- 592 lyndon-word
# 20240211 Raku programming solution

sub nextword($n, $w, $alphabet) {
   my $x = ($w x ($n div $w.chars + 1)).substr(0, $n);
   while $x.Bool && $x.substr(*-1) eq $alphabet.substr(*-1) {
      $x.substr-rw(*-1) = ''
   }
   if $x.Bool {
      my $next_char_index  = ($alphabet.index($x.substr(*-1)) // 0) + 1;
      $x.substr-rw(*-1, 1) = $alphabet.substr($next_char_index, 1);
   }
   return $x;
}

.say for sub ($n, $alphabet) {
   my $w = $alphabet.substr(0, 1);
   return gather while $w.chars <= $n {
      take $w;
      last unless $w = nextword($n, $w, $alphabet);
   }
}(5, '01');
#----------------------------------------------------------- 593 lzw-compression
# 20200421 Updated Raku programming solution ; add unicode support

sub compress(Str $uncompressed --> Seq)  {
    my $dict-size = 256;
    my %dictionary = (.chr => .chr for ^$dict-size);

    my $w = "";
    gather {
  for $uncompressed.encode('utf8').list.chrs.comb -> $c {
      my $wc = $w ~ $c;
      if %dictionary{$wc}:exists { $w = $wc }
      else {
    take %dictionary{$w};
    %dictionary{$wc} = +%dictionary;
    $w = $c;
      }
  }

  take %dictionary{$w} if $w.chars;
    }
}

sub decompress(@compressed --> Str) {
    my $dict-size = 256;
    my %dictionary = (.chr => .chr for ^$dict-size);

    my $w = shift @compressed;
    ( Blob.new: flat ( gather {
  take $w;
  for @compressed -> $k {
      my $entry;
      if %dictionary{$k}:exists { take $entry = %dictionary{$k} }
      elsif $k == $dict-size    { take $entry = $w ~ $w.substr(0,1) }
      else                      { die "Bad compressed k: $k" }

      %dictionary{$dict-size++} = $w ~ $entry.substr(0,1);
      $w = $entry;
  }
    }  )».ords ).decode('utf-8')
}

say my @compressed = compress('TOBEORNOTTOBEORTOBEORNOT');
say decompress(@compressed);

@compressed = compress('こんにちは𝒳𝒴𝒵こんにちは𝒳𝒴𝒵こんにちは𝒳𝒴𝒵');
say decompress(@compressed);
#-------------------------------------------------------------- 594 magic-8-ball
put 'Please enter your question or a blank line to quit.';

["It is certain", "It is decidedly so", "Without a doubt", "Yes, definitely",
 "You may rely on it", "As I see it, yes", "Most likely", "Outlook good",
 "Signs point to yes", "Yes", "Reply hazy, try again", "Ask again later",
 "Better not tell you now", "Cannot predict now", "Concentrate and ask again",
 "Don't bet on it", "My reply is no", "My sources say no", "Outlook not so good",
 "Very doubtful"].roll.put while prompt('? : ').chars;
#------------------------------------------------------------- 595 magic-numbers
my \Δ = $ = 1;
my @magic = flat 0, [1..9], {last if .not; ++Δ; [(.flat X~ 0..9).grep: * %% Δ]}…*;

put "There are {@magic.eager.elems} magic numbers in total.";
put "\nThe largest is {@magic.tail}.";
put "\nThere are:";
put "{(+.value).fmt: "%4d"} with {.key.fmt: "%2d"} digit{1 == +.key ?? '' !! 's'}"
    for sort @magic.classify: {.chars};
{
    my $pan-digital = ($_..9).join.comb.Bag;
    put "\nAll magic numbers that are pan-digital in $_ through 9 with no repeats: " ~
    @magic.grep( { .comb.Bag eqv $pan-digital } );
} for 1, 0;
#------------------------------------------------------- 596 magnanimous-numbers
my @magnanimous = lazy flat ^10, (10 .. 1001).map( {
    my int $last;
    (1 ..^ .chars).map: -> \c { $last = 1 and last unless (.substr(0,c) + .substr(c)).is-prime }
    next if $last;
    $_
} ),

(1002 .. ∞).map: {
     # optimization for numbers > 1001; First and last digit can not both be even or both be odd
    next if (.substr(0,1) + .substr(*-1)) %% 2;
    my int $last;
    (1 ..^ .chars).map: -> \c { $last = 1 and last unless (.substr(0,c) + .substr(c)).is-prime }
    next if $last;
    $_
}

put 'First 45 magnanimous numbers';
put @magnanimous[^45]».fmt('%3d').batch(15).join: "\n";

put "\n241st through 250th magnanimous numbers";
put @magnanimous[240..249];

put "\n391st through 400th magnanimous numbers";
put @magnanimous[390..399];
#------------------------------------------------ 597 main-step-of-gost-28147-89
# sboxes from http://en.wikipedia.org/wiki/GOST_(block_cipher)
constant sbox =
    [4, 10, 9, 2, 13, 8, 0, 14, 6, 11, 1, 12, 7, 15, 5, 3],
    [14, 11, 4, 12, 6, 13, 15, 10, 2, 3, 8, 1, 0, 7, 5, 9],
    [5, 8, 1, 13, 10, 3, 4, 2, 14, 15, 12, 7, 6, 0, 9, 11],
    [7, 13, 10, 1, 0, 8, 9, 15, 14, 4, 6, 12, 11, 2, 5, 3],
    [6, 12, 7, 1, 5, 15, 13, 8, 4, 10, 9, 14, 0, 3, 11, 2],
    [4, 11, 10, 0, 7, 2, 1, 13, 3, 6, 8, 5, 9, 12, 15, 14],
    [13, 11, 4, 1, 3, 15, 5, 9, 0, 10, 14, 7, 6, 8, 2, 12],
    [1, 15, 13, 0, 5, 7, 10, 4, 9, 2, 3, 14, 6, 11, 8, 12];

sub infix:<rol³²>(\y, \n) { (y +< n) % 2**32 +| (y +> (32 - n)) }

sub ГОСТ-round(\R, \K) {
    my \a = (R + K) % 2**32;
    my \b = :16[ sbox[$_][(a +> (4 * $_)) % 16] for 7...0 ];
    b rol³² 11;
}

sub feistel-step(&F, \L, \R, \K) { R, L +^ F(R, K) }

my @input = 0x21, 0x04, 0x3B, 0x04, 0x30, 0x04, 0x32, 0x04;
my @key   = 0xF9, 0x04, 0xC1, 0xE2;

my ($L,$R) = @input.reverse.map: { :256[$^a,$^b,$^c,$^d] }
my ($K   ) = @key  .reverse.map: { :256[$^a,$^b,$^c,$^d] }

($L,$R) = feistel-step(&ГОСТ-round, $L, $R, $K);

say [ ($L +< 32 + $R X+> (0, 8 ... 56)) X% 256 ].fmt('%02X');
#----------------------------------------------------------- 598 man-or-boy-test
sub A($k is copy, &x1, &x2, &x3, &x4, &x5) {
    $k <= 0
        ?? x4() + x5()
        !! (my &B = { A(--$k, &B, &x1, &x2, &x3, &x4) })();
};

say A(10, {1}, {-1}, {-1}, {1}, {0});
#---------------------------------------------------------- 599 mandelbrot-set-1
constant MAX-ITERATIONS = 64;
my $width = +(@*ARGS[0] // 800);
my $height = $width + $width %% 2;
say "P2";
say "$width $height";
say MAX-ITERATIONS;

sub cut(Range $r, UInt $n where $n > 1 --> Seq) {
    $r.min, * + ($r.max - $r.min) / ($n - 1) ... $r.max
}

my @re = cut(-2 .. 1/2, $width);
my @im = cut( 0 .. 5/4, 1 + ($height div 2)) X* 1i;

sub mandelbrot(Complex $z is copy, Complex $c --> Int) {
    for 1 .. MAX-ITERATIONS {
        $z = $z*$z + $c;
        return $_ if $z.abs > 2;
    }
    return 0;
}

my @lines = hyper for @im X+ @re {
  mandelbrot(0i, $_);
}.rotor($width);

.put for @lines[1..*].reverse;
.put for @lines;
#----------------------------------------------------------------- 600 map-range
sub getmapper(Range $a, Range  $b) {
  my ($a1, $a2) = $a.bounds;
  my ($b1, $b2) = $b.bounds;
  return -> $s { $b1 + (($s-$a1) * ($b2-$b1) / ($a2-$a1)) }
}

my &mapper = getmapper(0 .. 10, -1 .. 0);
for ^11 -> $x {say "$x maps to &mapper($x)"}
#---------------------------------------------------------- 601 marching-squares
# 20220708 Raku programming solution

enum <E N W S>;
my (@dx,@dy) := (1,0,-1,0), (0,-1,0,1);
my \example   = ((0, 0, 0, 0, 0),
                 (0, 0, 0, 0, 0),
                 (0, 0, 1, 1, 0),
                 (0, 0, 1, 1, 0),
                 (0, 0, 0, 1, 0),
                 (0, 0, 0, 0, 0));

printf("X: %d, Y: %d, Path: %s\n", identifyPerimeter(example));

sub identifyPerimeter(\data) {

   my (\height,\width) = { .elems, .first.elems }(data);

   for ^width X ^height -> (\x,\y) {
      if data[y;x] {
         my ($cx,$cy,$directions,$previous) = x, y;
         repeat {
            my $mask;
            for (0,0,1),(1,0,2),(0,1,4),(1,1,8) -> (\dx,\dy,\b) {
	       my ($mx,$my) = $cx+dx,$cy+dy;
	       $mask += b if all $mx>1, $my>1, data[$my-1;$mx-1]
            }
            given do given $mask {
               when * ∈ ( 1,  5, 13 ) { N }
               when * ∈ ( 2,  3,  7 ) { E }
               when * ∈ ( 4, 12, 14 ) { W }
               when * ∈ ( 8, 10, 11 ) { S }
               when * ∈ (     6     ) { $previous == N ?? W !! E }
               when * ∈ (     9     ) { $previous == E ?? N !! S }
            } {
	       $directions ~= $previous = $_ ;
	       ($cx,$cy) <<+=<< (@dx[.value], @dy[.value])
	    }
         } until $cx==x and $cy==y ;
         return x, -y, $directions
      }
   }
   return -1, -1, "Not found!"
}
#----------------------------------------------- 602 matrix-chain-multiplication
sub matrix-mult-chaining(@dimensions) {
    my @cp;
    # @cp has a dual function:
    # * the upper triangle of the diagonal matrix stores the cost (c) for
    #   multiplying matrices $i and $j in @cp[$j][$i], where $j > $i
    # * the lower triangle stores the path (p) that was used for the lowest cost
    #   multiplication to get from $i to $j.

    # a matrix never needs to be multiplied with itself, so it has cost 0
    @cp[$_][$_] = 0 for @dimensions.keys;
    my @path;

    my $n = @dimensions.end;
    for 1 .. $n -> $chain-length {
        for 0 .. $n - $chain-length - 1 -> $start {
            my $end = $start + $chain-length;
            @cp[$end][$start] = Inf;  # until we find a better connection
            for $start .. $end - 1 -> $step {
                my $new-cost = @cp[$step][$start]
                             + @cp[$end][$step + 1]
                             + [*] @dimensions[$start, $step+1, $end+1];
                if $new-cost < @cp[$end][$start] {
                    @cp[$end][$start] = $new-cost; # cost
                    @cp[$start][$end] = $step;     # path
                }
            }
       }
    }

    sub find-path(Int $start, Int $end) {
        if $start == $end {
            take 'A' ~ ($start + 1);
        } else {
            take '(';
            find-path($start, @cp[$start][$end]);
            find-path(@cp[$start][$end] + 1, $end);
            take ')';
        }
    }

   return @cp[$n-1][0], gather { find-path(0, $n - 1) }.join;
}

say matrix-mult-chaining(<1 5 25 30 100 70 2 1 100 250 1 1000 2>);
say matrix-mult-chaining(<1000 1 500 12 1 700 2500 3 2 5 14 10>);
#-------------------------------------------- 603 matrix-exponentiation-operator
subset SqMat of Array where { .elems == all(.[]».elems) }

multi infix:<*>(SqMat $a, SqMat $b) {[
    for ^$a -> $r {[
        for ^$b[0] -> $c {
            [+] ($a[$r][] Z* $b[].map: *[$c])
        }
    ]}
]}

multi infix:<**> (SqMat $m, Int $n is copy where { $_ >= 0 }) {
    my $tmp = $m;
    my $out = [for ^$m -> $i { [ for ^$m -> $j { +($i == $j) } ] } ];
    loop {
        $out = $out * $tmp if $n +& 1;
        last unless $n +>= 1;
        $tmp = $tmp * $tmp;
    }

    $out;
}

multi show (SqMat $m) {
    my $size = $m.map( *.list».chars ).flat.max;
    say .fmt("%{$size}s", ' ') for $m.list;
}

my @m = [1, 2, 0],
        [0, 3, 1],
        [1, 0, 0];

for 0 .. 10 -> $order {
    say "### Order $order";
    show @m ** $order;
}
#--------------------------------------------------- 604 matrix-multiplication-1
sub mmult(@a,@b) {
    my @p;
    for ^@a X ^@b[0] -> ($r, $c) {
        @p[$r][$c] += @a[$r][$_] * @b[$_][$c] for ^@b;
    }
    @p;
}

my @a = [1,  1,  1,   1],
        [2,  4,  8,  16],
        [3,  9, 27,  81],
        [4, 16, 64, 256];

my @b = [  4  , -3  ,  4/3,  -1/4 ],
        [-13/3, 19/4, -7/3,  11/24],
        [  3/2, -2  ,  7/6,  -1/4 ],
        [ -1/6,  1/4, -1/6,   1/24];

.say for mmult(@a,@b);
#------------------------------------------------------ 605 matrix-transposition
# Transposition can be done with the reduced zip meta-operator
# on list-of-lists data structures

say [Z] (<A B C D>, <E F G H>, <I J K L>);

# For native shaped arrays, a more traditional procedure of copying item-by-item
# Here the resulting matrix is also a native shaped array

my @a[3;4] =
  [
    [<A B C D>],
    [<E F G H>],
    [<I J K L>],
  ];

(my $n, my $m) = @a.shape;
my @b[$m;$n];
for ^$m X ^$n -> (\i, \j) {
   @b[i;j] = @a[j;i];
}

say @b;
#------------------------------------------------- 606 matrix-with-two-diagonals
sub dual-diagonal($n) { ([1, |(0 xx $n-1)], *.rotate(-1) … *[*-1]).map: { [$_ Z|| .reverse] } }

.say for dual-diagonal(6);
say '';
.say for dual-diagonal(7);
#------------------------------------------------- 607 maximum-triangle-path-sum
my $triangle = q|         55
                        94 48
                       95 30 96
                     77 71 26 67
                    97 13 76 38 45
                  07 36 79 16 37 68
                 48 07 09 18 70 26 06
               18 72 79 46 59 79 29 90
              20 76 87 11 32 07 07 49 18
            27 83 58 35 71 11 25 57 29 85
           14 64 36 96 27 11 58 56 92 18 55
         02 90 03 60 48 49 41 46 33 36 47 23
        92 50 48 02 36 59 42 79 72 20 82 77 42
      56 78 38 80 39 75 02 71 66 66 01 03 55 72
     44 25 67 84 71 67 11 61 40 57 58 89 40 56 36
   85 32 25 85 57 48 84 35 47 62 17 01 01 99 89 52
  06 71 28 75 94 48 37 10 23 51 06 48 53 18 74 98 15
27 02 92 23 08 71 76 84 15 52 92 63 81 10 44 10 69 93|;


my @rows = $triangle.lines.map: { [.words] }
while @rows > 1 {
    my @last := @rows.pop;
    @rows[*-1] = (@rows[*-1][] Z+ (@last Zmax @last[1..*])).List;
}
put @rows;


# Here's a more FPish version. We define our own operator and the use it in the reduction metaoperator form, [op], which turns any infix into a list operator.
sub infix:<op>(@a,@b) { (@a Zmax @a[1..*]) Z+ @b }
put [op] $triangle.lines.reverse.map: { [.words] }


# Or, instead of using reverse, one could also define the op as right-associative.
sub infix:<rop>(@a,@b) is assoc('right') { @a Z+ (@b Zmax @b[1..*]) }
put [rop] $triangle.lines.map: { [.words] }
#------------------------------------------------------------ 608 mayan-calendar
my @sacred = <Imix’ Ik’ Ak’bal K’an Chikchan Kimi Manik’ Lamat Muluk Ok
              Chuwen Eb Ben Hix Men K’ib’ Kaban Etz’nab’ Kawak Ajaw>;

my @civil = <Pop Wo’ Sip Sotz’ Sek Xul Yaxk’in Mol Ch’en Yax Sak’ Keh
             Mak K’ank’in Muwan’ Pax K’ayab Kumk’u Wayeb’>;

my %correlation = :GMT({
    :gregorian(Date.new('2012-12-21')),
    :round([3,19,263,8]),
    :long(1872000)
});

sub mayan-calendar-round ($date) { .&tzolkin, .&haab given $date }

sub offset ($date, $factor = 'GMT') { Date.new($date) - %correlation{$factor}<gregorian> }

sub haab ($date, $factor = 'GMT') {
    my $index = (%correlation{$factor}<round>[2] + offset $date) % 365;
    my ($day, $month);
    if $index > 360 {
        $day = $index - 360;
        $month = @civil[18];
        if $day == 5 {
            $day = 'Chum';
            $month = @civil[0];
        }
    } else {
        $day = $index % 20;
        $month = @civil[$index div 20];
        if $day == 0 {
            $day = 'Chum';
            $month = @civil[(1 + $index) div 20];
        }
    }
    $day, $month
}

sub tzolkin ($date, $factor = 'GMT') {
    my $offset = offset $date;
    1 + ($offset + %correlation{$factor}<round>[0]) % 13,
    @sacred[($offset + %correlation{$factor}<round>[1]) % 20]
}

sub lord ($date, $factor = 'GMT') {
    'G' ~ 1 + (%correlation{$factor}<round>[3] + offset $date) % 9
}

sub mayan-long-count ($date, $factor = 'GMT') {
    my $days = %correlation{$factor}<long> + offset $date;
    reverse $days.polymod(20,18,20,20);
}

# HEADER
say ' Gregorian   Tzolk’in         Haab’             Long           Lord of ';
say '   Date       # Name       Day Month            Count         the Night';
say '-----------------------------------------------------------------------';

# DATES
<
1963-11-21
2004-06-19
2012-12-18
2012-12-21
2019-01-19
2019-03-27
2020-02-29
2020-03-01
2071-05-16
>.map: -> $date {
    printf "%10s   %2s %-9s %4s %-10s     %-14s %6s\n", Date.new($date),
      flat mayan-calendar-round($date), mayan-long-count($date).join('.'), lord($date);
}
#---------------------------------------------------------- 609 mayan-numerals-1
### Formatting ###
my $t-style = '"border-collapse: separate; text-align: center; border-spacing: 3px 0px;"';
my $c-style = '"border: solid black 2px;background-color: #fffff0;border-bottom: double 6px;'~
  'border-radius: 1em;-moz-border-radius: 1em;-webkit-border-radius: 1em;'~
  'vertical-align: bottom;width: 3.25em;"';
my $joiner = '<br>';

sub display ($num, @digits) { join "\n", "\{| style=$t-style", "|+ $num", '|-', (|@digits.map: {"| style=$c-style | $_"}), '|}' }

### Logic ###

sub mayan ($int) { $int.polymod(20 xx *).reverse.map: *.polymod(5) }

my @output = <4005 8017 326205 886205 16160025 1081439556 503491211079>.map: {
  display $_, .&mayan.map: { [flat '' xx 3, '●' x .[0], '───' xx .[1], ('Θ' if !.[0,1].sum)].tail(4).join: $joiner }
}

say @output.join: "\n$joiner\n";
#------------------------------------ 610 mcnaughton-yamada-thompson-algorithm-1
# 20250616 Raku programming solution

class State {
   has $.label is rw;        # Character label, Nil for epsilon
   has State $.edge1 is rw;  # First transition
   has State $.edge2 is rw;  # Second transition

   method new($label = Nil) { self.bless(:$label) }
}

class NFA {
   has State ($.initial, $.accept) is rw;

   method new(State $initial, State $accept) { self.bless(:$initial, :$accept) }
}

class TraditionalMYT { # Traditional approach using shunting-yard algorithm
   method shunt(Str $infix) {
      my %specials = '*' => 60, '+' => 55, '?' => 50, '.' => 40, '|' => 20;
      my ($postfix, @stack);

      for $infix.comb -> $c {
         given $c {
            when '(' { @stack.push($c) }
            when ')' {
               while @stack && @stack[*-1] ne '(' { $postfix ~= @stack.pop }
               @stack.pop if @stack; # Remove '('
            }
            when * ∈ %specials.keys {
               while @stack && @stack[*-1] ∈ %specials.keys      &&
                     %specials{$c}         ≤ %specials{@stack[*-1]} {
                  $postfix ~= @stack.pop;
               }
               @stack.push($c);
            }
            default { $postfix ~= $c }
         }
      }
      return $postfix ~= @stack.reverse.join;
   }

   method followes(State $state) {
      my $states = SetHash.new;
      my @stack = $state;

      while my $s = @stack.pop and $s ∉ $states {
         $states{$s}++;
         without $s.label { # Epsilon transition
            for ($s.edge1, $s.edge2) { @stack.push: $_ if .defined }
         }
      }
      return $states.keys.Set;
   }

   method compile-regex(Str $postfix) {
      my @nfa-stack;

      for $postfix.comb -> $c {
         @nfa-stack.push: do given $c {
            my State ($initial, $accept)».=new;
            when '*' {
               my $nfa1 = @nfa-stack.pop;
               ($initial.edge1, $nfa1.accept.edge1) = $nfa1.initial xx 2;
               ($initial.edge2, $nfa1.accept.edge2) = $accept       xx 2;
               NFA.new($initial, $accept)
            }
            when '.' {
               my ($nfa1, $nfa2)  =  @nfa-stack.splice: *-2, 2;
               $nfa1.accept.edge1 = $nfa2.initial;
               NFA.new($nfa1.initial, $nfa2.accept)
            }
            when '|' {
               my ($nfa1, $nfa2)  =  @nfa-stack.splice: *-2, 2;
               given $initial { (.edge1, .edge2) = ($nfa1,$nfa2)».initial }
               ($nfa1.accept.edge1, $nfa2.accept.edge1) = $accept xx 2;
               NFA.new($initial, $accept)
            }
            when '+' {
               my $nfa1 = @nfa-stack.pop;
               $initial.edge1 = $nfa1.initial;
               given $initial.accept { (.edge1,.edge2) = $nfa1.initial,$accept }
               NFA.new($initial, $accept)
            }
            when '?' {
               my $nfa1 = @nfa-stack.pop;
               given $initial { (.edge1, .edge2) = $nfa1.initial, $accept }
               $nfa1.accept.edge1 = $accept;
               NFA.new($initial, $accept)
            }
            default { # Literal character
               $initial = State.new($c);
               $initial.edge1 = $accept;
               NFA.new($initial, $accept)
            }
         }
      }
      return @nfa-stack[0];
   }

   method match-regex(Str $text, Str $infix) {
      my $postfix = self.shunt($infix);
      # say "Postfix: $postfix"; # Uncomment to see postfix
      my $nfa = self.compile-regex($postfix);
      my $current = self.followes($nfa.initial);

      for $text.comb -> $ch {
         my $next-states = SetHash.new;
         for $current.keys -> $state {
            if $state.label.defined && $state.label eq $ch {
               $next-states{$_}++ for self.followes($state.edge1).keys
            }
         }
         $current = $next-states.keys.Set;
      }
      return $nfa.accept ∈ $current;
   }
}

my @infixes = "a.b.c*", "a.(b|d).c*", "(a.(b|d))*", "a.(b.b)*.c";
my @strings = "", "abc", "abbc", "abcc", "abad", "abbbc";

say "=== Traditional Approach (Shunting Yard) ===";
my $traditional = TraditionalMYT.new;

for @infixes -> $infix {
   for @strings -> $string {
      say $traditional.match-regex($string, $infix) ~ "\t$infix\t$string"
   }
   say ""
}
#------------------------------------ 611 mcnaughton-yamada-thompson-algorithm-2
# 20250616 Raku programming solution

class State {
   has $.label is rw;        # Character label, Nil for epsilon
   has State $.edge1 is rw;  # First transition
   has State $.edge2 is rw;  # Second transition

   method new($label = Nil) { self.bless(:$label) }
}

class NFA {
   has State ($.initial, $.accept) is rw;

   method new(State $initial, State $accept) { self.bless(:$initial, :$accept) }
}

grammar RegexGrammar {
   token TOP { <expr> }
                                                                 # precedence
   token expr { <concat-expr>+ % '|' }   # Handle alternation       lowest

   token concat-expr { <factor>+ % '.' } # Handle concatenation     higher

   token factor { <atom> <quantifier>? } # Handle quantifiers       highest

   token atom {
      | <literal>
      | '(' <expr> ')'
   }

   token literal { <-[().*+?|]> }

   token quantifier { '*' | '+' | '?' }
}

class RegexActions {

   method literal($/) {
      my $initial = State.new(~$/);
      my $accept = State.new;
      $initial.edge1 = $accept;
      make NFA.new($initial, $accept);
   }

   method quantifier($/) {
      return make %( < * + ? > Z=> < kleene plus optional >).{~$/}
   }

   method factor($/) {
      my $nfa = $<atom>.made;
      my State ($initial, $accept)».=new;

      if $<quantifier> {
         given $<quantifier>.made {
            $initial.edge1 = $nfa.initial;
            when 'kleene' {
               $initial.edge2 = $accept;
               given $nfa.accept { (.edge1, .edge2) = $nfa.initial, $accept }
            }
            when 'plus' {
               given $nfa.accept { (.edge1, .edge2) = $nfa.initial, $accept }
            }
            when 'optional' {
               ($initial.edge2, $nfa.accept.edge1) = $accept xx 2
            }
         }
         $nfa = NFA.new($initial, $accept);
      }
      return make $nfa
   }

   method atom($/) {
       make do if $<literal> { $<literal>.made } elsif $<expr> { $<expr>.made }
   }

   method concat-expr($/) {
      my @factors = $<factor>».made;
      my $result = @factors.shift;

      for @factors -> $nfa { # Concatenation - connect NFAs in sequence
         $result.accept.edge1 = $nfa.initial;
         $result = NFA.new($result.initial, $nfa.accept);
      }
      return make $result;
   }

   method expr($/) {
      my @concat-exprs = $<concat-expr>».made;

      return do if @concat-exprs == 1 {
         make @concat-exprs[0];
      } else { # Alternation - create choice between alternatives
         my State ($initial, $accept)».=new;

         # Connect initial state to all alternatives
         given $initial { (.edge1, .edge2) = @concat-exprs[0,1]».initial }

         # Connect all alternatives to accept state
         .accept.edge1 = $accept for @concat-exprs[0,1];

         my $result = NFA.new($initial, $accept);

         # Handle more than 2 alternatives by building binary tree
         for @concat-exprs[2..*] -> $nfa {
            my State ($new-initial, $new-accept)».=new;
            given $new-initial { (.edge1, .edge2) = ($result, $nfa)».initial }
            ($result.accept.edge1, $nfa.accept.edge1) = $new-accept xx 2;
            $result = NFA.new($new-initial, $new-accept);
         }
         make $result;
      }
   }

   method TOP($/) { make $<expr>.made }
}

class GrammarMYT {
   method followes(State $state) {
      my $states = SetHash.new;
      my @stack = $state;

      while my $s = @stack.pop and $s ∉ $states {
         $states{$s}++;
         without $s.label { # Epsilon transition
            for ($s.edge1, $s.edge2) { @stack.push: $_ if .defined }
         }
      }
      return $states.keys.Set;
   }

   method match-regex(Str $text, Str $regex) {
      my $actions = RegexActions.new;
      return False unless my $parsed = RegexGrammar.parse($regex, :$actions);
      my $nfa = $parsed.made;
      my $current = self.followes($nfa.initial);

      for $text.comb -> $ch {
         my $next-states = SetHash.new;
         for $current.keys -> $state {
            if $state.label.defined && $state.label eq $ch {
               $next-states{$_}++ for self.followes($state.edge1).keys
            }
         }
         $current = $next-states.keys.Set;
      }
      return $nfa.accept ∈ $current;
   }
}

my @infixes = "a.b.c*", "a.(b|d).c*", "(a.(b|d))*", "a.(b.b)*.c";
my @strings = "", "abc", "abbc", "abcc", "abad", "abbbc";

say "=== Grammar-based Approach ===";
my $grammar-based = GrammarMYT.new;

for @infixes -> $infix {
   for @strings -> $string {
      say $grammar-based.match-regex($string, $infix) ~ "\t$infix\t$string"
   }
   say ""
}
#--------------------------------------------------------- 612 mcnuggets-problem
sub Mcnugget-number(*@counts) {
   my int @valid = @counts.grep(* > 0).unique.sort;
   return '∞' unless @valid;
   return '∞' if ([gcd] @valid) > 1;
   return 0 if (my int $min = @valid[0]) == 1;

   my int $max = @valid[*-1];
   my int @ring = 1, |(0 xx $max-1);
   my int ($streak, $largest-non, $ptr) = 1, 0, 0;

   loop (my int $n = 1; ; $n++) {
      $ptr = 0 if ++$ptr == $max;
      my Bool $is-reachable = False;

      for @valid -> int $c {
         last if $c > $n;
         my int $lookback = ($ptr - $c) % $max;
         if @ring[$lookback] { $is-reachable = True and last }
      }
      ( @ring[$ptr] = $is-reachable ).Bool
         ?? ( return $largest-non if ++$streak >= $min )
         !! ($streak, $largest-non) = 0, $n
   }
}

for (6,9,20), (6,7,20), (1,3,20), (10,5,18), (5,17,44), (2,4,6), (3,6,15),
    (12,14,17),(12,13,34),(5,9,21),(10,18,21),(71,98,99),(4,30,16),(12,12,13),
    (6,15,1),(11,13,17,19)
-> $counts {
   my $res = Mcnugget-number(|$counts);
   put "Maximum non-Mcnugget using {$counts.join(', ')} is: $res";
}
#----------------------------------------------------------------------- 613 md4
sub md4($str) {
    my buf8 $buf .= new: $str.encode;
    my $buf-length = $buf.elems;
    $buf.push: 0x80;
    $buf.push: 0 until ($buf - (448 div 8)) %% (512 div 8);
    # raku serializes in little endian by default
    $buf.write-uint64: $buf.elems, $buf-length*8;

    my (&f, &g, &h, &r) =
      { $^x +& $^y +| +^$x +& $^z },
      { $^x +& $^y +| $x +& $^z +| $y +& $z },
      { $^x +^ $^y +^ $^z },
      # for some reason we have to type v here
      -> uint32 $v, $s { $v +< $s +| $v +> (32 - $s) }

    my uint32 ($a, $b, $c, $d) = 0x67452301, 0xefcdab89, 0x98badcfe, 0x10325476;

    loop (my $pos = 0; $pos < $buf.elems; $pos+=64) {
        my ($aa, $bb, $cc, $dd) = $a, $b, $c, $d;
        for 0, 4, 8, 12 -> $i {
            $a = r($a + f($b, $c, $d) + $buf.read-uint32($pos+($i+0)*4),  3);
            $d = r($d + f($a, $b, $c) + $buf.read-uint32($pos+($i+1)*4),  7);
            $c = r($c + f($d, $a, $b) + $buf.read-uint32($pos+($i+2)*4), 11);
            $b = r($b + f($c, $d, $a) + $buf.read-uint32($pos+($i+3)*4), 19);
        }
        for 0, 1, 2, 3 -> $i {
            $a = r($a + g($b, $c, $d) + $buf.read-uint32($pos+($i+0 )*4) + 0x5a827999,  3);
            $d = r($d + g($a, $b, $c) + $buf.read-uint32($pos+($i+4 )*4) + 0x5a827999,  5);
            $c = r($c + g($d, $a, $b) + $buf.read-uint32($pos+($i+8 )*4) + 0x5a827999,  9);
            $b = r($b + g($c, $d, $a) + $buf.read-uint32($pos+($i+12)*4) + 0x5a827999, 13);
        }
        for 0, 2, 1, 3 -> $i {
            $a = r($a + h($b, $c, $d) + $buf.read-uint32($pos+($i+0 )*4) + 0x6ed9eba1,  3);
            $d = r($d + h($a, $b, $c) + $buf.read-uint32($pos+($i+4 )*4) + 0x6ed9eba1,  9);
            $c = r($c + h($d, $a, $b) + $buf.read-uint32($pos+($i+8 )*4) + 0x6ed9eba1, 11);
            $b = r($b + h($c, $d, $a) + $buf.read-uint32($pos+($i+12)*4) + 0x6ed9eba1, 15);
        }
        ($a,$b,$c,$d) Z[+=] ($aa,$bb,$cc,$dd);
    }

    reduce { $^buf.write-uint32: $buf.elems, $^x; $buf }, buf8.new, $a, $b, $c, $d;
}

CHECK {
  use Test;
  plan 1;
  is md4('Rosetta Code').list.fmt('%02X'), 'A5 2B CF C6 A0 D0 D3 00 CD C5 DD BF BE FE 47 8B';
}
#-------------------------------------------------------- 614 md5-implementation
proto md5($msg) returns Blob is export {*}
multi md5(Str $msg) { samewith $msg.encode }
multi md5(Blob $msg) {
    reduce { $^buf.write-uint32: $buf.end + 1, $^int, LittleEndian },
    buf8.new,
    |reduce -> Blob $blob, blob32 $X {
        blob32.new: $blob Z+
        reduce -> $b, $i {
            blob32.new:
            $b[3],
            $b[1] +
            -> uint32 \x, \n { (x +< n) +| (x +> (32-n)) }(
                ($b[0] + (
                        { ($^x +& $^y) +| (+^$x +& $^z) },
                        { ($^x +& $^z) +| ($^y +& +^$z) },
                        { $^x +^ $^y +^ $^z },
                        { $^y +^ ($^x +| +^$^z) }
                    )[$i div 16](|$b[1..3]) +
                    (blob32.new: map &floor ∘ * * 2**32 ∘ &abs ∘ &sin ∘ * + 1, ^64)[$i] +
                    $X[(Blob.new: 16 X[R%] flat ($++, 5*$++ + 1, 3*$++ + 5, 7*$++) Xxx 16)[$i]]
                ) mod 2**32,
                (flat < 7 12 17 22 5 9 14 20 4 11 16 23 6 10 15 21 >.rotor(4) Xxx 4)[$i]
            ),
        $b[1],
        $b[2]
        }, $blob, |^64;
    },
    (blob32.new: 0x67452301, 0xefcdab89, 0x98badcfe, 0x10325476),
    |map { blob32.new: @$_ },
    {
        $^b.push(blob8.new(@$_).read-uint32(0)) for (@$msg, 0x80, 0x00 xx (-($msg.elems + 1 + 8) % 64))
        .flat.rotor(4);
        $b.write-uint64: $b.elems, 8*$msg.elems, LittleEndian;
        $b;
    }(buf32.new)
    .rotor(16);
}

CHECK {
  use Test;

  for 'd41d8cd98f00b204e9800998ecf8427e', '',
      '0cc175b9c0f1b6a831c399e269772661', 'a',
      '900150983cd24fb0d6963f7d28e17f72', 'abc',
      'f96b697d7cb7938d525a2f31aaf161d0', 'message digest',
      'c3fcd3d76192e4007dfb496cca67e13b', 'abcdefghijklmnopqrstuvwxyz',
      'd174ab98d277d9f5a5611c2c9f419d9f', 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789',
      '57edf4a22be3c955ac49da2e2107b67a', '12345678901234567890123456789012345678901234567890123456789012345678901234567890'
        -> $expected, $msg {
          my $digest = md5($msg).list».fmt('%02x').join;
          is($digest, $expected, "$digest is MD5 digest of '$msg'");
        }
  done-testing;
}
#-------------------------------------------------- 615 meissel-mertens-constant
# 20221011 Raku programming solution

my $s;
.is-prime and $s += log(1-1/$_)+1/$_ for 2 .. 10**8;
say $s + .57721566490153286
#---------------------------------------------- 616 merge-and-aggregate-datasets
my @names = map { ( <PATIENT_ID LASTNAME> Z=> .list ).hash },
    ( 1001, 'Hopper'  ),
    ( 4004, 'Wirth'   ),
    ( 3003, 'Kemeny'  ),
    ( 2002, 'Gosling' ),
    ( 5005, 'Kurtz'   ),
;
my @visits = map { ( <PATIENT_ID VISIT_DATE SCORE> Z=> .list ).hash },
    ( 2002, '2020-09-10', 6.8 ),
    ( 1001, '2020-09-17', 5.5 ),
    ( 4004, '2020-09-24', 8.4 ),
    ( 2002, '2020-10-08', Nil ),
    ( 1001,         Nil , 6.6 ),
    ( 3003, '2020-11-12', Nil ),
    ( 4004, '2020-11-05', 7.0 ),
    ( 1001, '2020-11-19', 5.3 ),
;

my %v = @visits.classify: *.<PATIENT_ID>;

my @result = gather for @names -> %n {
    my @p = %v{ %n.<PATIENT_ID> }<>;

    my @dates  = @p».<VISIT_DATE>.grep: *.defined;
    my @scores = @p».<     SCORE>.grep: *.defined;

    take {
        %n,
        LAST_VISIT => ( @dates.max          if @dates  ),
        SCORE_AVG  => ( @scores.sum/@scores if @scores ),
        SCORE_SUM  => ( @scores.sum         if @scores ),
    };
}

my @out_field_names = <PATIENT_ID LASTNAME LAST_VISIT SCORE_SUM SCORE_AVG>;
my @rows = @result.sort(*.<PATIENT_ID>).map(*.{@out_field_names});
say .map({$_ // ''}).fmt('%-10s', ' | ') for @out_field_names, |@rows;
#--------------------------------------------------------- 617 metaprogramming-1
sub postfix:<!> { [*] 1..$^n }
say 5!;  # prints 120
#--------------------------------------------------------- 618 metaprogramming-2
use MONKEY-TYPING; # Needed to do runtime augmentation of a base class.

augment class List {
    method nsort { self.list.sort: {$^a.lc.subst(/(\d+)/, -> $/ {0 ~ $0.chars.chr ~ $0 }, :g) ~ "\x0" ~ $^a} }
};

say ~<a201st a32nd a3rd a144th a17th a2 a95>.nsort;
say ~<a201st a32nd a3rd a144th a17th a2 a95>.sort;
#------------------------------------------------------ 619 mian-chowla-sequence
my @mian-chowla = 1, |(2..Inf).map: -> $test {
    state $index = 1;
    state %sums  = 2 => 1;
    my $next;
    my %these;
    @mian-chowla[^$index].map: { ++$next and last if %sums{$_ + $test}:exists; ++%these{$_ + $test} };
    next if $next;
    ++%sums{$test + $test};
    %sums.push: %these;
    ++$index;
    $test
};

put "First 30 terms in the Mian–Chowla sequence:\n", @mian-chowla[^30];
put "\nTerms 91 through 100:\n", @mian-chowla[90..99];
#----------------------------------------------------- 620 middle-three-digits-1
sub middle-three($n) {
    given $n.abs {
        when .chars < 3  { "$n is too short" }
        when .chars %% 2 { "$n has an even number of digits" }
        default          { "The three middle digits of $n are: ", .substr: (.chars - 3)/2, 3 }
    }
}

say middle-three($_) for <
    123 12345 1234567 987654321 10001 -10001 -123 -100 100 -12345
    1 2 -1 -10 2002 -2002 0
>;
#----------------------------------------------------- 621 middle-three-digits-2
for [\~] ^10 { say "$_ => $()" if m/^^(\d+) <(\d**3)> (\d+) $$ <?{ $0.chars == $1.chars}> / }
#----------------------------------------------- 622 miller-rabin-primality-test
# the expmod-function from: http://rosettacode.org/wiki/Modular_exponentiation
sub expmod(Int $a is copy, Int $b is copy, $n) {
	my $c = 1;
	repeat while $b div= 2 {
		($c *= $a) %= $n if $b % 2;
		($a *= $a) %= $n;
	}
	$c;
}

subset PrimeCandidate of Int where { $_ > 2 and $_ % 2 };

my Bool multi sub is_prime(Int $n, Int $k)            { return False; }
my Bool multi sub is_prime(2, Int $k)                 { return True; }
my Bool multi sub is_prime(PrimeCandidate $n, Int $k) {
	my Int $d = $n - 1;
	my Int $s = 0;

	while $d %% 2 {
		$d div= 2;
		$s++;
	}

	for (2 ..^ $n).pick($k) -> $a {
		my $x = expmod($a, $d, $n);

		# one could just write "next if $x == 1 | $n - 1"
		# but this takes much more time in current rakudo/nom
		next if $x == 1 or $x == $n - 1;

		for 1 ..^ $s {
			$x = $x ** 2 mod $n;
			return False if $x == 1;
			last if $x == $n - 1;
		}
		return False if $x !== $n - 1;
	}

	return True;
}

say (1..1000).grep({ is_prime($_, 10) }).join(", ");
#---------------------------------------------------------- 623 minesweeper-game
enum Tile-Type <Empty Mine>;

class Tile {
    has Tile-Type $.type;
    has $.face is rw;
    method Str { with $!face { ~$!face } else { '.' } }
}

class Field {
    has @.grid;
    has Int $.width;
    has Int $.height;
    has Int $.mine-spots;
    has Int $.empty-spots;

    method new (Int $height, Int $width, Rat $mines-ratio=0.1) {

        my $mine-spots = round $width*$height*$mines-ratio;
        my $empty-spots = $width*$height - $mine-spots;

        my @grid;
        for ^$height X ^$width -> ($y, $x) {
            @grid[$y][$x] = Tile.new(type => Empty);
        }
        for (^$height).pick($mine-spots) Z (^$width).pick($mine-spots) -> ($y, $x) {
            @grid[$y][$x] = Tile.new( type => Mine);
        }
        self.bless(:$height, :$width, :@grid, :$mine-spots, :$empty-spots);
    }

    method open( $y, $x) {
        return if @!grid[$y][$x].face.defined;

        self.end-game("KaBoom") if @!grid[$y][$x].type ~~ Mine;

        my @neighbors = gather do
	    take [$y+.[0],$x+.[1]]
		if 0 <= $y + .[0] < $!height && 0 <= $x + .[1] < $!width
		 for [-1,-1],[+0,-1],[+1,-1],
		     [-1,+0],        [+1,+0],
		     [-1,+1],[+0,+1],[+1,+1];

        my $mines = +@neighbors.grep: { @!grid[.[0]][.[1]].type ~~ Mine };

        $!empty-spots--;
        @!grid[$y][$x].face = $mines || ' ';

        if $mines == 0 {
            self.open(.[0], .[1]) for @neighbors;
        }
        self.end-game("You won") if $!empty-spots == 0;
    }

    method end-game(Str $msg ) {
        for ^$!height X ^$!width -> ($y, $x) {
            @!grid[$y][$x].face = '*' if @!grid[$y][$x].type ~~ Mine
        }
        die $msg;
    }

    method mark ( $y, $x) {
        if !@!grid[$y][$x].face.defined {
            @!grid[$y][$x].face = "⚐";
            $!mine-spots-- if @!grid[$y][$x].type ~~ Mine;
        }
	elsif !@!grid[$y][$x].face eq "⚐" {
            undefine @!grid[$y][$x].face;
            $!mine-spots++ if @!grid[$y][$x].type ~~ Mine;
        }
        self.end-game("You won") if $!mine-spots == 0;
    }

    constant @digs = |('a'..'z') xx *;

    method Str {
        [~] flat '  ', @digs[^$!width], "\n",
	         ' ┌', '─' xx $!width, "┐\n",
	    join '', do for ^$!height -> $y {
	      $y, '│', @!grid[$y][*],   "│\n"; },
	         ' └', '─' xx $!width, '┘';
	}

    method valid ($y, $x) {
        0 <= $y < $!height && 0 <= $x < $!width
    }
}

sub a2n($a) { $a.ord > 64 ?? $a.ord % 32 - 1 !! +$a }

my $f = Field.new(6,10);

loop {
    say ~$f;
    my @w = prompt("[open loc|mark loc|loc]: ").words;
    last unless @w;
    unshift @w, 'open' if @w < 2;
    my ($x,$y) = $0, $1 if @w[1] ~~ /(<alpha>)(<digit>)|$1=<digit>$0=<alpha>/;
    $x = a2n($x);
    given @w[0] {
	when !$f.valid($y,$x) { say "invalid coordinates" }
	when /^o/ { $f.open($y,$x)   }
	when /^m/ { $f.mark($y,$x)   }
	default     { say "invalid cmd" }
    }
    CATCH {
	say "$_: end of game.";
	last;
    }
}

say ~$f;
#---------- 624 minimum-number-of-cells-after-before-above-and-below-nxn-squares
sub distance-to-edge (\N) {
   my $c = ceiling N / 2;
   my $f = floor   N / 2;
   my @ul = ^$c .map: -> $x { [ ^$c .map: { min($x, $_) } ] }
   @ul[$_].append: reverse @ul[$_; ^$f] for ^$c;
   @ul.push: [ reverse @ul[$_] ] for reverse ^$f;
   @ul
}

for 0, 1, 2, 6, 9, 23 {
    my @dte = .&distance-to-edge;
    my $max = chars max flat @dte».Slip;

    say "\n$_ x $_ distance to nearest edge:";
    .fmt("%{$max}d").say for @dte;
}
#-------------------------------------------- 625 minimum-numbers-of-three-lists
say [Zmin] (5,45,23,21,67), (43,22,78,46,38), (9,98,12,98,53);
#----------------- 626 minimum-positive-multiple-in-base-10-using-only-0-and-1-1
say $_ , ': ', (1..*).map( *.base(2) ).first: * %% $_ for flat 1..10, 95..105; # etc.
#----------------- 627 minimum-positive-multiple-in-base-10-using-only-0-and-1-2
sub Ed-Pegg-jr (\n) {
    return 1 if n == 1;
    my ($count, $power-mod-n) = 0, 1;
    my @oom-mod-n = 0; # orders of magnitude of 10 mod n
    my @dig-mod = 0;   # 1 to n + oom mod n
    for 1..n -> \i {
        @oom-mod-n[i] = $power-mod-n;
        for 1..n -> \j {
            my \k = (j + $power-mod-n - 1) % n + 1;
            @dig-mod[k] = i if @dig-mod[j] and @dig-mod[j] != i and !@dig-mod[k];
        }
        @dig-mod[$power-mod-n + 1] ||= i;
        ($power-mod-n *= 10) %= n;
        last if @dig-mod[1];
    }
    my ($b10, $remainder) = '', n;
    while $remainder {
        my $place = @dig-mod[$remainder % n + 1];
        $b10 ~= '0' x ($count - $place) if $count > $place;
        $count = $place - 1;
        $b10 ~= '1';
        $remainder = (n + $remainder - @oom-mod-n[$place]) % n;
    }
    $b10 ~ '0' x $count
}

printf "%5s: %28s  %s\n", 'Number', 'B10', 'Multiplier';

for flat 1..10, 95..105, 297, 576, 594, 891, 909, 999, 1998, 2079, 2251, 2277, 2439, 2997, 4878 {
    printf "%6d: %28s  %s\n", $_, my $a = Ed-Pegg-jr($_), $a / $_;
}
#------------------------------------------------------------ 628 minimum-primes
say ([Zmax] <5 45 23 21 67>, <43 22 78 46 38>, <9 98 12 54 53>)».&next-prime[^5];

sub next-prime { ($^m..*).first: &is-prime }
#------------------------------------------ 629 minkowski-question-mark-function
# 20201120 Raku programming solution

my \MAXITER = 151;

sub minkowski(\x) {

   return x.floor + minkowski( x - x.floor ) if x > 1 || x < 0 ;

   my $y = my $p = x.floor;
   my ($q,$s,$d) = 1 xx 3;
   my $r = $p + 1;

   loop {
      last if ( $y + ($d /= 2)  == $y )        ||
              ( my $m = $p + $r) <  0 | $p < 0 ||
              ( my $n = $q + $s) <  0           ;
      x < $m/$n ?? ( ($r,$s) = ($m, $n) ) !! ( $y += $d; ($p,$q) = ($m, $n) );
   }
   return $y + $d
}

sub minkowskiInv($x is copy) {

   return $x.floor + minkowskiInv($x - $x.floor) if  $x > 1 || $x < 0 ;

   return $x if $x == 1 || $x == 0 ;

   my @contFrac = 0;
   my $i = my $curr = 0 ; my $count = 1;

   loop {
      $x *= 2;
      if $curr == 0 {
         if $x < 1 {
            $count++
         } else {
            $i++;
            @contFrac.append: 0;
            @contFrac[$i-1] = $count;
            ($count,$curr) = 1,1;
            $x--;
         }
      } else {
         if $x > 1 {
            $count++;
            $x--;
         } else {
            $i++;
            @contFrac.append: 0;
            @contFrac[$i-1] = $count;
            ($count,$curr) = 1,0;
         }
      }
      if $x == $x.floor { @contFrac[$i] = $count ; last }
      last if $i == MAXITER;
    }
    my $ret = 1 / @contFrac[$i];
    loop (my $j = $i - 1; $j ≥ 0; $j--) { $ret = @contFrac[$j] + 1/$ret }
    return 1 / $ret
}

printf "%19.16f %19.16f\n", minkowski(0.5*(1 + 5.sqrt)), 5/3;
printf "%19.16f %19.16f\n", minkowskiInv(-5/9), (13.sqrt-7)/6;
printf "%19.16f %19.16f\n", minkowski(minkowskiInv(0.718281828)),
   minkowskiInv(minkowski(0.1213141516171819))
#---------------------------------------------------- 630 modular-exponentiation
sub expmod(Int $a is copy, Int $b is copy, $n) {
    my $c = 1;
    repeat while $b div= 2 {
        ($c *= $a) %= $n if $b % 2;
        ($a *= $a) %= $n;
    }
    $c;
}

say expmod
    2988348162058574136915891421498819466320163312926952423791023078876139,
    2351399303373464486466122544523690094744975233415544072992656881240319,
    10**40;
#--------------------------------------------------------- 631 monads-list-monad
multi bind (@list, &code) { @list.map: &code };

multi bind ($item, &code) { $item.&code };

sub divisors (Int $int) { gather for 1 .. $int { .take if $int %% $_ } }

put (^10).&bind(* + 3).&bind(&divisors)».&bind(*.base: 2).join: "\n";
#------------------------------------------------------ 632 monads-maybe-monad-1
my $monad = <42>;
say 'Is $monad an Int?: ', $monad ~~ Int;
say 'Is $monad a  Str?: ', $monad ~~ Str;
say 'Wait, what? What exactly is $monad?: ', $monad.^name;
#------------------------------------------------------ 633 monads-maybe-monad-2
# Build a Nothing type. When treated as a string it returns the string 'Nothing'.
# When treated as a Numeric, returns the value 'Nil'.
class NOTHING {
    method Str { 'Nothing' }
    method Numeric { Nil }
}

# A generic instance of a Nothing type.
my \Nothing = NOTHING.new;

# A reimplementation of the square-root function. Could just use the CORE one
# but this more fully shows how multi-dispatch candidates are added.

# Handle positive numbers & 0
multi root (Numeric $n where * >= 0) { $n.sqrt }
# Handle Negative numbers (Complex number handling is built in.)
multi root (Numeric $n where * <  0) { $n.Complex.sqrt }
# Else return Nothing
multi root ($n) { Nothing }

# Handle numbers > 0
multi ln (Real $n where * > 0) { log $n, e }
# Else return Nothing
multi ln ($n) { Nothing }

# Handle fraction where the denominator != 0
multi recip (Numeric $n where * != 0) { 1/$n }
# Else return Nothing
multi recip ($n) { Nothing }

# Helper formatting routine
sub center ($s) {
    my $pad = 21 - $s.Str.chars;
    ' ' x ($pad / 2).floor ~ $s ~ ' ' x ($pad / 2).ceiling;
}

# Display the "number" the reciprocal, the root, natural log and the 3 functions
# composed together.
put ('"Number"', 'Reciprocal', 'Square root', 'Natural log', 'Composed')».&center;

# Note how it handles the last two "values". The string 'WAT' is not numeric at
# all; but Ethiopic number 30, times vulgar fraction 1/7, is.
put ($_, .&recip, .&root, .&ln, .&(&ln o &root o &recip) )».&center
  for -2, -1, -0.5, 0, exp(-1), 1, 2, exp(1), 3, 4, 5, 'WAT', ፴ × ⅐;
#------------------------------------------------------- 634 monads-writer-monad
# 20200508 Raku programming solution

class Writer { has Numeric $.value ; has Str $.log }

sub Bind (Writer \v, &code) {
   my \n = v.value.&code;
   Writer.new: value => n.value, log => v.log ~ n.log
};

sub Unit(\v, \s) { Writer.new: value=>v, log=>sprintf "%-17s: %.12f\n",s,v}

sub root(\v) { Unit v.sqrt, "Took square root" }

sub addOne(\v) { Unit v+1, "Added one" }

sub half(\v) { Unit v/2, "Divided by two" }

say Unit(5, "Initial value").&Bind(&root).&Bind(&addOne).&Bind(&half).log;
#------------------------------------------------------ 635 montgomery-reduction
sub montgomery-reduce($m, $a is copy) {
    for 0..$m.msb {
        $a += $m if $a +& 1;
        $a +>= 1
    }
    $a % $m
}

my $m  = 750791094644726559640638407699;
my $t1 = 323165824550862327179367294465482435542970161392400401329100;

my $r1 = 440160025148131680164261562101;
my $r2 = 435362628198191204145287283255;

my $x1 = 540019781128412936473322405310;
my $x2 = 515692107665463680305819378593;

say "Original x1:       ", $x1;
say "Recovered from r1: ", montgomery-reduce($m, $r1);
say "Original x2:       ", $x2;
say "Recovered from r2: ", montgomery-reduce($m, $r2);

print "\nMontgomery  computation x1**x2 mod m: ";
my $prod = montgomery-reduce($m, $t1/$x1);
my $base = montgomery-reduce($m, $t1);

for $x2, {$_ +> 1} ... 0 -> $exponent {
    $prod = montgomery-reduce($m, $prod * $base) if $exponent +& 1;
    $base = montgomery-reduce($m, $base * $base);
}

say montgomery-reduce($m, $prod);
say "Built-in op computation x1**x2 mod m: ", $x1.expmod($x2, $m);
#---------------------------------------------------------------- 636 morse-code
my %m = ' ', '_ _ ',
|<
    ! ---.
    " .-..-.
    $ ...-..-
    ' .----.
    ( -.--.
    ) -.--.-
    + .-.-.
    , --..--
    - -....-
    . .-.-.-
    / -..-.
    : ---...
    ; -.-.-.
    = -...-
    ? ..--..
    @ .--.-.
    [ -.--.
    ] -.--.-
    _ ..--.-
    0 -----
    1 .----
    2 ..---
    3 ...--
    4 ....-
    5 .....
    6 -....
    7 --...
    8 ---..
    9 ----.
    A .-
    B -...
    C -.-.
    D -..
    E .
    F ..-.
    G --.
    H ....
    I ..
    J .---
    K -.-
    L .-..
    M --
    N -.
    O ---
    P .--.
    Q --.-
    R .-.
    S ...
    T -
    U ..-
    V ...-
    W .--
    X -..-
    Y -.--
    Z --..
>.map: -> $c, $m is copy {
    $m.=subst(rx/'-'/, 'BGAAACK!!! ', :g);
    $m.=subst(rx/'.'/, 'buck ', :g);
    $c => $m ~ '_';
}

say prompt("Gimme a string: ").uc.comb.map: { %m{$_} // "<scratch> " }
#------------------------------------------------------------- 637 mosaic-matrix
sub checker ($n) { (^$n).map: { 1 xx $n Z× (flat ($_ %% 2, $_ % 2) xx *) } }

.put for checker 7;
put '';
.put for checker 8;
#----------------------------------------------------- 638 mosers-circle-problem
sub moser (\n) { 1/24 * (n⁴ - 6*n³ +23*n² - 18*n + 24) }

sub binomial { [×] ($^n … 0) Z/ 1 .. $^p }

sub binomial-transform (*@seq) {
    @seq.keys.map: -> \n { sum (0..n).map: -> \k { binomial(n,k) × @seq[k] } }
}

sub pascals-triangle { [1], {[0, |$_ Z+ |$_, 0]} … * }

sub bernoullis-triangle { [1], {[0, |$_ Z+ |$_, 2 ** $++]} … * }


put "The first 20 values of Moser's circle problem calculated in different ways:\n
Direct calculation of a 4th order equation:\n", (1..20).map: &moser;

put "\nUsing binomial sums:\n", (1..Inf).map({binomial($_,4) + binomial($_,2) + 1})[^20];

put "\nUsing a binomial transform:\n", binomial-transform(1, 1, 1, 1, 1, 0 xx *)[^20];

put "\nPartial sums of Pascal's triangle:\n", pascals-triangle[^20].map: { quietly sum .[^5] };

put "\nFifth column of Bernoulli's triangle:\n", bernoullis-triangle[^20].map: {.[4] // .tail};
#-------------------------------------------- 639 most-frequent-k-chars-distance
# Fairly straightforward implementation, actually returns a list of pairs
# which can be joined to make a string or manipulated further.

sub mfkh ($string, \K = 2) {
    my %h;
    $string.comb.kv.map: { %h{$^v}[1] //= $^k; %h{$^v}[0]++ };
    %h.sort( { -$_.value[0], $_.value[1] } ).head(K).map( { $_.key => $_.value[0] } );
}

# lets try running 150 or so words from unixdic.txt through it to see
# how many unique hash values it comes up with.

my @test-words = <
    aminobenzoic arginine asinine biennial biennium brigantine brinkmanship
    britannic chinquapin clinging corinthian declination dickinson dimension
    dinnertime dionysian diophantine dominican financial financier finessing
    fingernail fingerprint finnish giovanni hopkinsian inaction inalienable
    inanimate incaution incendiary incentive inception incident incidental
    incinerate incline inclusion incommunicable incompletion inconceivable
    inconclusive incongruity inconsiderable inconsiderate inconspicuous
    incontrovertible inconvertible incurring incursion indefinable indemnify
    indemnity indeterminacy indian indiana indicant indifferent indigene
    indigenous indigent indispensable indochina indochinese indoctrinate
    indonesia inequivalent inexplainable infantile inferential inferring
    infestation inflammation inflationary influential information infringe
    infusion ingenious ingenuity ingestion ingredient inhabitant inhalation
    inharmonious inheritance inholding inhomogeneity inkling inoffensive
    inordinate inorganic inputting inseminate insensible insincere insinuate
    insistent insomnia insomniac insouciant installation instinct instinctual
    insubordinate insubstantial insulin insurrection intangible intelligent
    intensify intensive interception interruption intestinal intestine
    intoxicant introduction introversion intrusion invariant invasion inventive
    inversion involution justinian kidnapping kingpin lineprinter liniment
    livingston mainline mcginnis minion minneapolis minnie pigmentation
    pincushion pinion quinine quintessential resignation ruination seminarian
    triennial wilkinson wilmington wilsonian wineskin winnie winnipeg
>;

say @test-words.map( { join '', mfkh($_)».kv } ).Bag;
#--------------------------------------------------- 640 move-to-front-algorithm
sub encode ( Str $word ) {
    my @sym = 'a' .. 'z';
    gather for $word.comb -> $c {
	die "Symbol '$c' not found in @sym" if $c eq @sym.none;
        @sym[0 .. take (@sym ... $c).end] .= rotate(-1);
    }
}

sub decode ( @enc ) {
    my @sym = 'a' .. 'z';
    [~] gather for @enc -> $pos {
        take @sym[$pos];
        @sym[0..$pos] .= rotate(-1);
    }
}

use Test;
plan 3;
for <broood bananaaa hiphophiphop> -> $word {
    my $enc = encode($word);
    my $dec = decode($enc);
    is $word, $dec, "$word.fmt('%-12s') ($enc[])";
}
#--------------------------------------------------- 641 multi-dimensional-array
# Raku supports multi dimension arrays natively. There are no arbitrary limits on the number of dimensions or maximum indices. Theoretically, you could have an infinite number of dimensions of infinite length, though in practice more than a few dozen dimensions gets unwieldy. An infinite maximum index is a fairly common idiom though. You can assign an infinite lazy list to an array and it will only produce the values when they are accessed.

my @integers = 1 .. Inf; # an infinite array containing all positive integers

say @integers[100000]; #100001 (arrays are zero indexed.)

# Multi dimension arrays may be predeclared which constrains the indices to the declared size:

my @dim5[3,3,3,3,3];

#Creates a preallocated 5 dimensional array where each branch has 3 storage slots and constrains the size to the declared size.
#It can then be accessed like so:

@dim5[0;1;2;1;0] = 'Raku';

say @dim5[0;1;2;1;0]; # prints 'Raku'

#@dim5[0;1;2;1;4] = 'error'; # runtime error: Index 4 for dimension 5 out of range (must be 0..2)

# Note that the dimensions do not _need_ to be predeclared / allocated. Raku will auto-vivify the necessary storage slots on first access.

my @a2;

@a2[0;1;2;1;0] = 'Raku';

@a2[0;1;2;1;4] = 'not an error';

# It is easy to access array "slices" in Raku.

my @b = map { [$_ X~ 1..5] }, <a b c d>;

.say for @b;
# [a1 a2 a3 a4 a5]
# [b1 b2 b3 b4 b5]
# [c1 c2 c3 c4 c5]
# [d1 d2 d3 d4 d5]

say @b[*;2]; # Get the all of the values in the third "column"
# (a3 b3 c3 d3)

# By default, Raku can store any object in an array, and it is not very compact. You can constrain the type of values that may be stored which can allow the optimizer to store them much more efficiently.

my @c = 1 .. 10; # Stores integers, but not very compactly since there are no constraints on what the values _may_ be

my uint16 @d = 1 .. 10 # Since there are and only can be unsigned 16 bit integers, the optimizer will use a much more compact memory layout.

# Indices must be a positive integer. Negative indices are not permitted, fractional indices will be truncated to an integer.
#------------------------------------------------------------ 642 multifactorial
for 1 .. 5 -> $degree {
    sub mfact($n) { [*] $n, *-$degree ...^ * <= 0 };
    say "$degree: ", map &mfact, 1..10
}
#----------------------------------------------------- 643 multiplication-tables
(my $f = "%{$_}s" given my $width = ($_**2).chars ) given my $max = 12;

say '×'.fmt($f)  ~ ' ┃ ' ~ (1..$max).fmt($f);
say '━' x $width ~ '━╋'  ~ '━' x $max × (1+$width);

for 1..$max -> $i {
    say $i.fmt($f) ~ ' ┃ ' ~ ( $i ≤ $_ ?? $i×$_ !! '' for 1..$max ).fmt($f);
}
#---------------------------------------------------------------- 644 multisplit
sub multisplit($str, @seps) { $str.split: / ||@seps /, :v }

my @chunks = multisplit 'a!===b=!=c==d', < == != = >;

# Print the strings.
say @chunks».Str.raku;

# Print the positions of the separators.
for grep Match, @chunks -> $s {
    say "{$s.fmt: '%2s'} from {$s.from.fmt: '%2d'} to {$s.to.fmt: '%2d'}";
}
#-------------------------------------------------------- 645 munchausen-numbers
sub is_munchausen ( Int $n ) {
    constant @powers = 0, |map { $_ ** $_ }, 1..9;
    $n == @powers[$n.comb].sum;
}
.say if .&is_munchausen for 1..5000;
#---------------------------------------------------------- 646 mutual-recursion
multi F(0) { 1 }; multi M(0) { 0 }
multi F(\𝑛) { 𝑛 - M(F(𝑛 - 1)) }
multi M(\𝑛) { 𝑛 - F(M(𝑛 - 1)) }

say map &F, ^20;
say map &M, ^20;
#------------------------------------------------------------ 647 n-body-problem
# Simple Vector implementation
multi infix:<+>(@a, @b) { @a Z+ @b }
multi infix:<->(@a, @b) { @a Z- @b }
multi infix:<*>($r, @a) { $r X* @a }
multi infix:</>(@a, $r) { @a X/ $r }
sub norm { sqrt [+] @_ X** 2 }

# Runge-Kutta stuff
sub runge-kutta(&yp) {
    return -> \t, \y, \δt {
        my $a = δt * yp( t, y );
        my $b = δt * yp( t + δt/2, y + $a/2 );
        my $c = δt * yp( t + δt/2, y + $b/2 );
        my $d = δt * yp( t + δt, y + $c );
        ($a + 2*($b + $c) + $d) / 6;
    }
}

# gravitational constant
constant G = 6.674e-11;
# astronomical unit
constant au = 150e9;

# time constants in seconds
constant year = 365.25*24*60*60;
constant month = 21*24*60*60;

# masses in kg
constant $ma = 2e30;     # Sun
constant $mb = 6e24;     # Earth
constant $mc = 7.34e22;  # Moon

my &dABC = runge-kutta my &f = sub ( $t, @ABC ) {
    my @a = @ABC[0..2];
    my @b = @ABC[3..5];
    my @c = @ABC[6..8];

    my $ab = norm(@a - @b);
    my $ac = norm(@a - @c);
    my $bc = norm(@b - @c);

    return [
        flat
        @ABC[@(9..17)],
        map G * *,
        $mb/$ab**3 * (@b - @a) + $mc/$ac**3 * (@c - @a),
        $ma/$ab**3 * (@a - @b) + $mc/$bc**3 * (@c - @b),
        $ma/$ac**3 * (@a - @c) + $mb/$bc**3 * (@b - @c);
    ];
}

loop (
    my ($t, @ABC) = 0,
        0, 0, 0,                                 # Sun position
        au, 0, 0,                                # Earth position
        0.998*au, 0, 0,                          # Moon position
        0, 0, 0,                                 # Sun speed
        0, 2*pi*au/year, 0,                      # Earth speed
        0, 2*pi*(au/year + 0.002*au/month), 0    # Moon speed
    ;
    $t < .2;
    ($t, @ABC) »+=« (.01, dABC($t, @ABC, .01))
) {
    printf "t = %.02f : %s\n", $t, @ABC.fmt("%+.3e");
}
#---------------------------------- 648 n-queens-minimum-and-knights-and-bishops
# 20220705 Raku programming solution

my (@board, @diag1, @diag2, @diag1Lookup, @diag2Lookup, $n, $minCount, $layout);

my %limits   = ( my @pieces = <Q B K> ) Z=> 7,7,6; # >>=>>> 10;
my %names    = @pieces Z=> <Queens Bishops Knights>;

sub isAttacked(\piece, \row, \col) {
   given piece {
      when 'Q' {
         (^$n)>>.&{ return True if @board[$_;col] || @board[row;$_] }
	 return True if @diag1Lookup[@diag1[row;col]] ||
	                @diag2Lookup[@diag2[row;col]]
      }
      when 'B' {
         return True if @diag1Lookup[@diag1[row;col]] ||
                        @diag2Lookup[@diag2[row;col]]
      }
      default { # 'K'
         return True if (
            @board[row;col] or
            row+2 < $n && col-1 >= 0 && @board[row+2;col-1] or
            row-2 >= 0 && col-1 >= 0 && @board[row-2;col-1] or
            row+2 < $n && col+1 < $n && @board[row+2;col+1] or
            row-2 >= 0 && col+1 < $n && @board[row-2;col+1] or
            row+1 < $n && col+2 < $n && @board[row+1;col+2] or
            row-1 >= 0 && col+2 < $n && @board[row-1;col+2] or
            row+1 < $n && col-2 >= 0 && @board[row+1;col-2] or
            row-1 >= 0 && col-2 >= 0 && @board[row-1;col-2]
	 )
      }
   }
   return False
}

sub attacks(\piece, \row, \col, \trow, \tcol) {
   given piece {
      when 'Q' { row==trow || col==tcol || abs(row - trow)==abs(col - tcol) }
      when 'B' { abs(row - trow) == abs(col - tcol) }
      default  { my (\rd,\cd) = ((trow - row),(tcol - col))>>.abs; # when 'K'
                 (rd == 1 && cd == 2) || (rd == 2 && cd == 1)               }
   }
}

sub storeLayout(\piece) {
   $layout = [~] @board.map: -> @row {
      [~] ( @row.map: { $_ ??  piece~' ' !! '. ' } ) , "\n"
   }
}

sub placePiece(\piece, \countSoFar, \maxCount) {
   return if countSoFar >= $minCount;
   my ($allAttacked,$ti,$tj) = True,0,0;
   for ^$n X ^$n -> (\i,\j) {
      unless isAttacked(piece, i, j) {
         ($allAttacked,$ti,$tj) = False,i,j andthen last
      }
      last unless $allAttacked
   }
   if $allAttacked {
      $minCount = countSoFar;
      storeLayout(piece);
      return
   }
   if countSoFar <= maxCount {
      my ($si,$sj) = $ti,$tj;
      if piece eq 'K' {
         ($si,$sj) >>-=>> 2;
         $si = 0 if $si < 0;
         $sj = 0 if $sj < 0;
      }
      for ($si..^$n) X ($sj..^$n) -> (\i,\j) {
         unless isAttacked(piece, i, j) {
            if (i == $ti && j == $tj) || attacks(piece, i, j, $ti, $tj) {
               @board[i][j] = True;
               unless piece eq 'K' {
	          (@diag1Lookup[@diag1[i;j]],@diag2Lookup[@diag2[i;j]])=True xx *
               }
               placePiece(piece, countSoFar+1, maxCount);
               @board[i][j] = False;
               unless piece eq 'K' {
                  (@diag1Lookup[@diag1[i;j]],@diag2Lookup[@diag2[i;j]])=False xx *
               }
            }
	 }
      }
   }
}

for @pieces -> \piece {
   say %names{piece}~"\n=======\n";
   loop ($n = 1 ; ; $n++) {
      @board = [ [ False xx $n ] xx $n ];
      unless piece eq 'K' {
         @diag1 = ^$n .map: { $_ ... $n+$_-1 } ;
         @diag2 = ^$n .map: { $n+$_-1 ... $_ } ;
	 @diag2Lookup = @diag1Lookup = [ False xx 2*$n-1 ]
      }
      $minCount = 2³¹ - 1; # golang: math.MaxInt32
      my \nSQ   = $n*$n;
      for 1..nSQ -> \maxCount {
         placePiece(piece, 0, maxCount);
         last if $minCount <= nSQ
      }
      printf("%2d x %-2d : %d\n", $n, $n, $minCount);
      if $n == %limits{piece} {
         printf "\n%s on a %d x %d board:\n", %names{piece}, $n, $n;
         say $layout andthen last
      }
   }
}
#---------------------------------------------------------- 649 n-queens-problem
sub MAIN(\N = 8) {
    sub collision(@field, $row) {
        for ^$row -> $i {
            my $distance = @field[$i] - @field[$row];
            return True if $distance == any(0, $row - $i, $i - $row);
        }
        False;
    }
    sub search(@field, $row) {
        return @field if $row == N;
        for ^N -> $i {
            @field[$row] = $i;
            return search(@field, $row + 1) || next
                unless collision(@field, $row);
        }
        ()
    }
    for 0 .. N / 2 {
        if search [$_], 1 -> @f {
            say @f;
            last;
        }
    }
}
#---------------------------------------------------------- 650 n-smooth-numbers
sub smooth-numbers (*@list) {
    cache my \Smooth := gather {
        my %i = (flat @list) Z=> (Smooth.iterator for ^@list);
        my %n = (flat @list) Z=> 1 xx *;

        loop {
            take my $n := %n{*}.min;

            for @list -> \k {
                %n{k} = %i{k}.pull-one * k if %n{k} == $n;
            }
        }
    }
}

sub abbrev ($n) {
   $n.chars > 50 ??
   $n.substr(0,10) ~ "...({$n.chars - 20} digits omitted)..." ~ $n.substr(* - 10) !!
   $n
}

my @primes = (2..*).grep: *.is-prime;

my $start = 3000;

for ^@primes.first( * > 29, :k ) -> $p {
    put join "\n", "\nFirst 25, and {$start}th through {$start+2}nd {@primes[$p]}-smooth numbers:",
    $(smooth-numbers(|@primes[0..$p])[^25]),
    $(smooth-numbers(|@primes[0..$p])[$start - 1 .. $start + 1]».&abbrev);
}

$start = 30000;

for 503, 509, 521 -> $p {
    my $i = @primes.first( * == $p, :k );
    put "\n{$start}th through {$start+19}th {@primes[$i]}-smooth numbers:\n" ~
    smooth-numbers(|@primes[0..$i])[$start - 1 .. $start + 18];
}
#---------------------------------------------------------- 651 names-to-numbers
my $phrases-with-numbers = q:to/END/;
One Hundred and One Dalmatians
Two Thousand and One: A Space Odyssey

Four  Score  And  Seven  Years  Ago
twelve dozen is one hundred forty-four, aka one gross
two hundred pairs of socks
Always give one hundred and ten percent effort
Change due: zero dollars and thirty-seven cents

One hour, fifty-nine minutes, forty point two seconds
π ≅ three point one four one five nine
END

my $pure-numbers = q:to/END/;
Twenty Nineteen
Two Thousand Nineteen
Two Thousand Zero Hundred and Nineteen
Two Thousand Ten Nine

one thousand one
ninety nine thousand nine hundred ninety nine
five hundred and twelve thousand, six hundred and nine
two billion, one hundred

One Thousand One Hundred Eleven
Eleven Hundred Eleven
one hundred eleven billion one hundred eleven
Eight Thousand Eight Hundred Eighty-Eight
Eighty-Eight Hundred Eighty-Eight

Forty-two quintillion, one quadrillion, two trillion, three billion, four million, five thousand six
END

my %nums = (
    zero        => 0,     one        => 1,     two         => 2,     three    => 3,
    four        => 4,     five       => 5,     six         => 6,     seven    => 7,
    eight       => 8,     nine       => 9,     ten         => 10,    eleven   => 11,
    twelve      => 12,    thirteen   => 13,    fourteen    => 14,    fifteen  => 15,
    sixteen     => 16,    seventeen  => 17,    eighteen    => 18,    nineteen => 19,
    twenty      => 20,    thirty     => 30,    forty       => 40,    fifty    => 50,
    sixty       => 60,    seventy    => 70,    eighty      => 80,    ninety   => 90,
    hundred     => 100,   thousand   => 1_000, million     => 1_000_000,
    billion     => 1_000_000_000,              trillion    => 1_000_000_000_000,
    quadrillion => 1_000_000_000_000_000,      quintillion => 1_000_000_000_000_000_000
);

# groupings:     thousand million billion  trillion quadrillion quintillion
my token groups { \d**4  | \d**7 | \d**10 | \d**13 | \d**16    | \d**19 };

# remove hyphens/spaces: leading, trailing, multiple
sub squeeze ($str is copy) { $str ~~ s:g/'-' | \s+ / /; $str .=trim }

# commify larger numbers for readabilty
sub comma { $^i.chars > 4 ?? $^i.flip.comb(3).join(',').flip !! $^i }

sub numify ($str is copy) {
    $str = squeeze $str.lc;
    $str ~~ s:g/(.)(<punct>)/$0 $1/;

    for %nums.kv -> $word, $number { $str ~~ s:g/ <|w> $word <|w> / $number / }

    $str ~~ s:g/(\d+)<ws> <?before \d>/$0/ if $str ~~ /(point )<ws>[(\d)<ws>]+$/;
    $str ~~ s:g/(\d+) <ws> 'score' / {$0 * 20} /;
    $str ~~ s:g/(\d) <ws> [','|'and'] <ws> (\d)/$0 $1/;

    $str ~~ s:g/ <|w> (\d) <ws> 100 <ws> (\d\d) <ws> (\d) <ws>     (<groups>) <|w> / {($0 * 100 + $1 + $2) * $3} /;
    $str ~~ s:g/ <|w> (\d) <ws> 100 <ws> (\d ** 1..2)     <ws>     (<groups>) <|w> / {($0 * 100 + $1) * $2}      /;
    $str ~~ s:g/ <|w> (\d) <ws> 100                       <ws>     (<groups>) <|w> / { $0 * 100 * $1}            /;
    $str ~~ s:g/ <|w>      <ws> 100 <ws> (\d\d) <ws> (\d) <ws>     (<groups>) <|w> / {($0 + 100 + $1) * $2}      /;
    $str ~~ s:g/ <|w>      <ws> 100 <ws> (\d ** 1..2)     <ws>     (<groups>) <|w> / {($0 + 100     ) * $1}      /;
    $str ~~ s:g/ <|w>      <ws> 100                       <ws>     (<groups>) <|w> / { $0 * 100}                 /;
    $str ~~ s:g/ <|w>              (\d\d) <ws> (\d)       <ws>     (<groups>) <|w> / {($0 + $1) * $2}            /;
    $str ~~ s:g/ <|w>              (\d ** 1..2)           <ws>     (<groups>) <|w> / { $0 * $1}                  /;
    $str ~~ s:g/ <|w>              (\d\d) <ws> (\d)       <ws> 100            <|w> / {($0 + $1) * 100}           /;
    $str ~~ s:g/ <|w>              (\d ** 1..2)           <ws> 100            <|w> / { $0 * 100}                 /;
    $str ~~ s:g/ <|w>              (\d ** 2)<ws>(\d ** 2)                     <|w> / { $0 * 100 + $1}            /;

    $str ~~ s:g/( [\d+<ws>]* \d+ ) / {[+] $0.split: ' '} /;

    $str ~~ s:g/(\d+) <ws> 'pairs of'         /  {$0 *  2} /;
    $str ~~ s:g/(\d+) <ws> 'dozen'            /  {$0 * 12} /;
    $str ~~ s:g/(\d+) <ws> 'point' <ws> (\d+) /   $0.$1    /;
    $str ~~ s:g/(\d+) <ws> 'percent'          /   $0%      /;
    $str ~~ s:g/(\d+) <ws> 'dollars'          / \$$0       /;
    $str ~~ s:g/(\d+) <ws> 'cents'            /   $0¢      /;

    squeeze $str;
}

say $_ ~ ' --> ' ~ .&numify        for $phrases-with-numbers.split("\n").grep: *.so;
say $_ ~ ' --> ' ~ .&numify.&comma for         $pure-numbers.split("\n").grep: *.so;
#--------------------------------------------------- 652 negative-base-numbers-1
multi sub base ( Int $value is copy, Int $radix where -37 < * < -1) {
    my $result;
    while $value {
        my $r = $value mod $radix;
        $value div= $radix;
        if $r < 0 {
            $value++;
            $r -= $radix
        }
        $result ~= $r.base(-$radix);
    }
    flip $result || ~0;
}

multi sub base ( Real $num, Int $radix where -37 < * < -1, :$precision = -15 ) {
    return '0' unless $num;
    my $value  = $num;
    my $result = '';
    my $place  = 0;
    my $upper-bound = 1 / (-$radix + 1);
    my $lower-bound = $radix * $upper-bound;

    $value = $num / $radix ** ++$place until $lower-bound <= $value < $upper-bound;

    while ($value or $place > 0) and $place > $precision {
        my $digit = ($radix * $value - $lower-bound).Int;
        $value    =  $radix * $value - $digit;
        $result ~= '.' unless $place or $result.contains: '.';
        $result ~= $digit == -$radix ?? ($digit-1).base(-$radix)~'0' !! $digit.base(-$radix);
        $place--
    }
    $result
}

multi sub parse-base (Str $str, Int $radix where -37 < * < -1) {
    return -1 * $str.substr(1).&parse-base($radix) if $str.substr(0,1) eq '-';
    my ($whole, $frac) = $str.split: '.';
    my $fraction = 0;
    $fraction = [+] $frac.comb.kv.map: { $^v.parse-base(-$radix) * $radix ** -($^k+1) } if $frac;
    $fraction + [+] $whole.flip.comb.kv.map: { $^v.parse-base(-$radix) * $radix ** $^k }
}

# TESTING
for <4 -4 0 -7  10 -2  146 -3  15 -10  -19 -10  107 -16
    227.65625 -16  2.375 -4 -1.3e2 -8 41371457.268272761 -36> -> $v, $r {
    my $nbase = $v.&base($r, :precision(-5));
    printf "%20s.&base\(%3d\) = %-11s : %13s.&parse-base\(%3d\) = %s\n",
      $v, $r, $nbase, "'$nbase'", $r, $nbase.&parse-base($r);
}

# 'Illegal' negative-base value
say q|  '-21'.&parse-base(-10) = |, '-21'.&parse-base(-10);
#---------------------------------------------------------- 653 neighbour-primes
my @primes = grep &is-prime, ^Inf;
my $last_p = @primes.first: :k, * >= 500;
my $last_q = $last_p + 1;

my @cousins = @primes.head( $last_q )
                     .rotor( 2 => -1 )
                     .map(-> (\p, \q) { p, q, p*q+2 } )
                     .grep( *.[2].is-prime );

say .fmt('%6d') for @cousins;
#----------------------------------------------------------- 654 nested-function
sub make-List ($separator = ') '){
    my $count = 1;

    sub make-Item ($item) { "{$count++}$separator$item" }

    join "\n", <first second third>».&make-Item;
}

put make-List('. ');
#----------------------------------------------------- 655 nested-templated-data
say join "\n  ", '##PAYLOADS:', |my @payloads = 'Payload#' X~ ^7;

for [
     (((1, 2),
       (3, 4, 1),
       5),),

     (((1, 2),
       (10, 4, 1),
       5),)
    ] {
    say "\n      Template: ", $_.raku;
    say "Data structure: { @payloads[|$_].raku }";
}
#------------------------------------------------------- 656 next-special-primes
sub is-special ( ($previous, $gap) ) {
    state @primes = grep *.is-prime, 2..*;
    shift @primes while @primes[0] <= $previous + $gap;
    return ( @primes[0], @primes[0] - $previous );
}

my @specials = (2, 0), &is-special … *;

my $limit = @specials.first: :k, *.[0] > 1050;

say .fmt('%4d') for @specials.head($limit);
#------------------------------------------------------------- 657 nice-primes-1
sub digroot ($r) { .tail given $r, { [+] .comb } ... { .chars == 1 } }
my @is-nice = lazy (0..*).map: { .&is-prime && .&digroot.&is-prime ?? $_ !! False };
say @is-nice[500 ^..^ 1000].grep(*.so).batch(11)».fmt("%4d").join: "\n";
#------------------------------------------------------------- 658 nice-primes-2
sub digroot ($r) { ($r, { .comb.sum } … { .chars == 1 }).tail }
sub is-nice ($_) { .is-prime && .&digroot.is-prime }
say (500 ^..^ 1000).grep( *.&is-nice ).batch(11)».fmt("%4d").join: "\n";
#------------------------------------------------------------------ 659 nim-game
say my $tokens = 12, " tokens remaining.\n";

loop {
    my $player = trim prompt "How many tokens do you want to remove; 1, 2 or 3? : ";
    say "Nice try. $tokens tokens remaining.\n" and
    next unless $player eq any <1 2 3>;
    $tokens -= 4;
    say "Computer takes {4 - $player}.\n$tokens tokens remaining.\n";
    say "Computer wins." and last if $tokens <= 0;
}
#--------------------------------------------------------- 660 nimber-arithmetic
sub infix:<⊕> (Int $x, Int $y) { $x +^ $y }

sub infix:<⊗> (Int $x, Int $y) {
    return $x × $y if so $x|$y < 2;
    my $h = exp $x.lsb, 2;
    return ($h ⊗ $y) ⊕ (($x ⊕ $h) ⊗ $y) if $x > $h;
    return ($y ⊗ $x) if $y.lsb < $y.msb;
    return $x × $y unless my $comp = $x.lsb +& $y.lsb;
    $h = exp $comp.lsb, 2;
    (($x +> $h) ⊗ ($y +> $h)) ⊗ (3 +< ($h - 1))
}

# TESTING

my $upto = 26;

for <⊕>, &infix:<⊕>,
    <⊗>, &infix:<⊗>
  -> $op, &f {

    put " $op │", ^$upto .fmt('%3s'), "\n───┼", '────' x $upto;
    -> $r { put $r.fmt('%2s'), ' │', ^$upto .map: { &f($r, $_).fmt('%3s')} } for ^$upto;
    put "\n";
}

put "21508 ⊕ 42689 = ", 21508 ⊕ 42689;
put "21508 ⊗ 42689 = ", 21508 ⊗ 42689;

put "2150821508215082150821508 ⊕ 4268942689426894268942689 = ", 2150821508215082150821508 ⊕ 4268942689426894268942689;
put "2150821508215082150821508 ⊗ 4268942689426894268942689 = ", 2150821508215082150821508 ⊗ 4268942689426894268942689;
#------------------------------------------------------------------- 661 nktglaw
# 20260701 Raku programming solution

sub ($x           ,$v,$m,   $d){ my$p=$m*$v;my (\a,    \b)=($x,$d    ) X*$p;
 my @S =            "M"~    "oving toward stable "~    "state",      "Stab"
  ~"le e"             ~     ""~      ~"qu"      ~""     ~"il"        ~""
  ~"ibrium"           ,     "M"      ~"ov"      ~""     ~"in"       ~""
  ~"g awa"~           ''    ~        "y f"        ~     "rom"      ~""
  ~''   ~" st"        ~              "abl"              ~"e "  ~''~''               ~"state";
  my     @M=''        ~              "Mas"              ~"s varia"                 ~''    ~'tion'
  ~        " re"      ~              "sis"              ~"ts mov"                 ~'em'    ~'ent'
  ,         "No m"    ~              "ass"              ~ " variati"              ~''       ~''
  ~           "on "   ~              "eff"              ~"ect","Mass"             ~''       ~''
  ~            "varia"~              "tio"              ~"n s"   ~"up"             ~'p'    ~''
  ~             "prts"~              "mov"              ~"eme"     ~"t";             printf
  ''              ~"p"~              ": "~              "%g\n"     ~ "NKT"          ~
  ~                "g1"              ~": "              ~"%g"        ~"\nNK"      ~''
~"T"~               "g"             ~"2: "~            "%g\nT"~        "enden"    ~"cy1: %s\nTe"
                                                                                  ~"ndency2: %s\n",
                                                                                  $p,            a,b
                                                                                 ,@S[             a.
                                                                                  sign          +1],
                                                                                   @M[ b.sign +1]}(
                                                                                      2,3,4,-.5)
#----------------------------------------------- 662 non-continuous-subsequences
sub non_continuous_subsequences ( *@list ) {
    @list.combinations.grep: { 1 != all( .[ 0 ^.. .end] Z- .[0 ..^ .end] ) }
}

say non_continuous_subsequences( 1..3 )».gist;
say non_continuous_subsequences( 1..4 )».gist;
say non_continuous_subsequences(   ^4 ).map: {[<a b c d>[.list]].gist};
#----------------------------------------------- 663 non-decimal-radices-input-1
say 0b11011;  # -> 27
say 0o11011;  # -> 4617
say 0d11011;  # -> 11011
say 0x11011;  # -> 69649
#----------------------------------------------- 664 non-decimal-radices-input-2
my $n = '11011';

say  :2($n); # -> 27
say  :3($n); # -> 112
say  :4($n); # -> 325
say  :5($n); # -> 756
say  :6($n); # -> 1519
say  :7($n); # -> 2752
say  :8($n); # -> 4617
say  :9($n); # -> 7300
say :10($n); # -> 11011
say :11($n); # -> 15984
say :12($n); # -> 22477
say :13($n); # -> 30772
say :14($n); # -> 41175
say :15($n); # -> 54016
say :16($n); # -> 69649
say :17($n); # -> 88452
say :18($n); # -> 110827
say :19($n); # -> 137200
say :20($n); # -> 168021
say :21($n); # -> 203764
say :22($n); # -> 244927
say :23($n); # -> 292032
say :24($n); # -> 345625
say :25($n); # -> 406276
say :26($n); # -> 474579
say :27($n); # -> 551152
say :28($n); # -> 636637
say :29($n); # -> 731700
say :30($n); # -> 837031
say :31($n); # -> 953344
say :32($n); # -> 1081377
say :33($n); # -> 1221892
say :34($n); # -> 1375675
say :35($n); # -> 1543536
say :36($n); # -> 1726309
#---------------------------------------------- 665 non-decimal-radices-output-1
say 30.base(2);   # "11110"
say 30.base(8);   # "36"
say 30.base(10);  # "30"
say 30.base(16);  # "1E"
say 30.base(30);  # "10"
#---------------------------------------------- 666 non-decimal-radices-output-2
for 0..33 -> $n {
  printf " %6b %3o %2d %2X\n", $n xx 4;
}
#----------------------------------------------------------------- 667 nonoblock
for (5, [2,1]), (5, []), (10, [8]), (5, [2,3]), (15, [2,3,2,3]) -> ($cells, @blocks) {
    say $cells, ' cells with blocks: ', @blocks ?? join ', ', @blocks !! '∅';
    my $letter = 'A';
    my $row = join '.', map { $letter++ x $_ }, @blocks;
    say "no solution\n" and next if $cells < $row.chars;
    say $row ~= '.' x $cells - $row.chars;
    say $row while $row ~~ s/^^ (\.*) <|w> (.*?) <|w> (\w+) \.<!|w> /$1$0.$2/;
    say '';
}
#--------------------------------------------------------------------- 668 nth-1
my %irregulars = <1 st 2 nd 3 rd>, (11..13 X=> 'th');

sub nth ($n) { $n ~ ( %irregulars{$n % 100} // %irregulars{$n % 10} // 'th' ) }

say .list».&nth for [^26], [250..265], [1000..1025];
#--------------------------------------------------------------------- 669 nth-2
my %irregulars = <1 ˢᵗ 2 ⁿᵈ 3 ʳᵈ>, (11..13 X=> 'ᵗʰ');

sub nth ($n) { $n ~ ( %irregulars{$n % 100} // %irregulars{$n % 10} // 'ᵗʰ' ) }

say .list».&nth for [^26], [250..265], [1000..1025];
#------------------------------------------------------------------ 670 nth-root
sub infix:<√>($n, $A) {
    .tail given $A / $n, { (($n-1) * $_+ $A / ($_** ($n-1))) / $n } ... * ≅ *;
}

use Test;
plan 9;
is-approx ($_√pi)**$_, pi for 2 .. 10;
#------------------------------------------------------------- 671 null-object-1
my $var;
say $var.WHAT;      # Any()
$var = 42;
say $var.WHAT;      # Int()
say $var.defined;   # True
$var = Nil;
say $var.WHAT;      # Any()
say $var.defined    # False
#------------------------------------------------------------- 672 null-object-2
my Mu $junction;
say $junction.WHAT;      # Mu()
$junction = 1 | 2 | 3;
say $junction.WHAT;      # Junction()
#------------------------------------------------------------- 673 null-object-3
my Str $str;
say $str.WHAT;      # Str()
$str = "I am a string.";
say $str.WHAT;      # Str()
$str = 42;          # (fails)
#------------------------------------------------------------ 674 number-names-1
constant @I = <zero one    two    three    four     five    six     seven     eight    nine
               ten  eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen>;
constant @X = <0    X      twenty thirty   forty    fifty   sixty   seventy   eighty   ninety>;
constant @C = @I X~ ' hundred';
constant @M = (<0 thousand>,
    ((<m b tr quadr quint sext sept oct non>,
    (map { ('', <un duo tre quattuor quin sex septen octo novem>).flat X~ $_ },
    <dec vigint trigint quadragint quinquagint sexagint septuagint octogint nonagint>),
    'cent').flat X~ 'illion')).flat;

sub int-name ($num) {
    if $num.substr(0,1) eq '-' { return "negative {int-name($num.substr(1))}" }
    if $num eq '0' { return @I[0] }
    my $m = 0;
    return join ', ', reverse gather for $num.flip.comb(/\d ** 1..3/) {
        my ($i,$x,$c) = .comb».Int;
        if $i or $x or $c {
            take join ' ', gather {
                if $c { take @C[$c] }
                if $x and $x == 1 { take @I[$i+10] }
                else {
                    if $x { take @X[$x] }
                    if $i { take @I[$i] }
                }
                take @M[$m] // die "WOW! ZILLIONS!\n" if $m;
            }
        }
        $m++;
    }
}

while '' ne (my $n = prompt("Number: ")) {
    say int-name($n);
}
#- 675 numbers-divisible-by-their-individual-digits-but-not-by-the-product-of-their-digits
say "{+$_} matching numbers:\n{.batch(10)».fmt('%3d').join: "\n"}" given
   (^1000).grep: -> $n { $n.contains(0) ?? False !! all |($n.comb).map($n %% *), $n % [*] $n.comb };
#--------------- 676 numbers-in-base-10-that-are-palindromic-in-bases-2-4-and-16
put "{+$_} such numbers:\n", .batch(10)».fmt('%5d').join("\n") given
(^25000).grep: -> $n { all (2,4,16).map: { $n.base($_) eq $n.base($_).flip } }
#- 677 numbers-in-base-16-representation-that-cannot-be-written-with-decimal-digits-1
put "{+$_} such numbers:\n", .batch(20)».fmt('%3d').join("\n")
    given (1..500).grep( { so any |.map: { .polymod(16 xx *) »>» 9 } } );
#- 678 numbers-in-base-16-representation-that-cannot-be-written-with-decimal-digits-2
#Filter out such numbers from a range:
put "Filter: {+$_} such numbers:\n", .batch(20)».fmt('%3d').join("\n")
    given (1..500).grep( { so all |.map: { .polymod(16 xx *) »>» 9 } } );

#Generate such numbers directly, up to a threshold:
put "\nGenerate: first {+$_}:\n", .batch(10)».map({ "{$_}({:16($_)})" })».fmt('%9s').join("\n") given
    ((1..^Inf).grep(* % 7).map( { .base(7).trans: [1..6] => ['A'..'F'] } )).grep(!*.contains: 0)[^42];

#Count such numbers directly, up to a threshold
my $upto = 500;
put "\nCount: " ~ [+] flat (map {exp($_, 6)}, 1..($upto.log(16).floor)),
+(exp($upto.log(16).floor, 16) .. $upto).grep( { so all |.map: { .polymod(16 xx *) »>» 9 } });
#- 679 numbers-k-such-that-the-last-letter-of-k-is-the-same-as-the-first-letter-of-k+1
# 20230713 Raku programming solution

###### https://rosettacode.org/wiki/Number_names#Raku

constant @I = <zero one    two    three    four     five    six     seven     eight    nine
               ten  eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen>;
constant @X = <0    X      twenty thirty   forty    fifty   sixty   seventy   eighty   ninety>;
constant @C = @I X~ ' hundred';
constant @M = (<0 thousand>,
    ((<m b tr quadr quint sext sept oct non>,
    (map { ('', <un duo tre quattuor quin sex septen octo novem>).flat X~ $_ },
    <dec vigint trigint quadragint quinquagint sexagint septuagint octogint nonagint>),
    'cent').flat X~ 'illion')).flat;

sub int-name ($num) {
    if $num.substr(0,1) eq '-' { return "negative {int-name($num.substr(1))}" }
    if $num eq '0' { return @I[0] }
    my $m = 0;
    return join ', ', reverse gather for $num.flip.comb(/\d ** 1..3/) {
        my ($i,$x,$c) = .comb».Int;
        if $i or $x or $c {
            take join ' ', gather {
                if $c { take @C[$c] }
                if $x and $x == 1 { take @I[$i+10] }
                else {
                    if $x { take @X[$x] }
                    if $i { take @I[$i] }
                }
                take @M[$m] // die "WOW! ZILLIONS!\n" if $m;
            }
        }
        $m++;
    }
}
######

my ($i, $c, $limit, $prev, @nums, @lastDigs) = 0, 0, 1000, int-name(0);

while $limit <= 1e4 {
   my $next = int-name $i+1;
   if $prev.substr(*-1) eq $next.substr(0,1) {
      if ($c < 50) { @nums.append: $i };
      @lastDigs[$i % 10] += 1;
      $c++;
      if $c == 50 {
         say "First 50 numbers:";
         say [~] $_>>.fmt('%4s') for @nums.rotor(10);
         say();
      } elsif $c == $limit {
         print "The {$c}th number is $i.\n";
         say "Breakdown by last digit of first {$c}th numbers";
         say 'N Freq';
         for 0..9 -> $d {
            say "$d {@lastDigs[$d].fmt('%4s')} ",
                '█' x (@lastDigs[$d]/@lastDigs.max*72).Int;
         }
         say();
         $limit *= 10
      }
   }
   $prev = $next;
   $i++;
}
#--------------------- 680 numbers-whose-binary-and-ternary-digit-sums-are-prime
say (^200).grep(-> $n {all (2,3).map({$n.base($_).comb.sum.is-prime}) }).batch(10)».fmt('%3d').join: "\n";
#--------------------------------- 681 numbers-with-prime-digits-whose-sum-is-13
put join ', ', sort +*, unique flat
   < 2 2 2 2 2 3 3 3 5 5 7 >.combinations
   .grep( *.sum == 13 )
   .map( { .join => $_ } )
   .map: { .value.permutations».join }
#------------------------ 682 numbers-with-same-digit-set-in-base-10-and-base-16
say "Numbers up to 100,000 which when expressed in hexadecimal and in decimal
are composed of the same digit glyphs. (All the same glyphs, all the same
quantity.)\n";
display-numbers calculated-with &infix:<eqv>, <Bag>;

say "\nNumbers up to 100,000 which when expressed in hexadecimal and in decimal
are composed from the same digit glyphs. (All the same glyphs  are present,
possibly different quantity.)\n";
display-numbers calculated-with &infix:<eqv>, <Set>;

say "\nNumbers up to 100,000 which, when expressed in hexadecimal use glyphs
that are a subset of those used when expressed in decimal. (Every glyph in
decimal is present in hexadecimal the same or fewer (possibly zero) times)\n";
display-numbers calculated-with &infix:<⊆>, <Bag>;

say "\nNumbers up to 100,000 which, when expressed in hexadecimal use glyphs
that are a subset of those used when expressed in decimal. (Every glyph in
decimal is present in hexadecimal in some quantity, possibly zero, possibly more
than in decimal)\n";
display-numbers calculated-with &infix:<⊆>, <Set>;

sub display-numbers ($_) { say .elems ~ " found:\n" ~ .batch(20)».fmt('%5d').join: "\n" }

sub calculated-with ( &op, $container ) {
    cache ^18699 .map( {:16(.Str)} ).hyper(:1000batch).grep( {
        reduce( &op, (.fmt('%x'), $_).map: { .comb."$container"() } )
    } )
}
#------------------------------------------------- 683 numeric-error-propagation
# cache of independent sources so we can make them all the same length.
# (Because Raku does not yet have a longest-zip metaoperator.)
my @INDEP;

class Approx does Numeric {
    has Real $.x;	# The mean.
    has $.c;		# The components of error.

    multi method Str  { sprintf "%g±%.3g", $!x, $.σ }
    multi method Bool { abs($!x) > $.σ }

    method variance { [+] @.c X** 2 }
    method σ { sqrt self.variance }
}

multi approx($x,$c) { Approx.new: :$x, :$c }
multi approx($x) { Approx.new: :$x, :c[0 xx +@INDEP] }

# Each ± gets its own source slot.
multi infix:<±>($a, $b) {
    .push: 0 for @INDEP; # lengthen older component lists
    my $c = [ flat 0 xx @INDEP, $b ];
    @INDEP.push: $c;	 # add new component list

    approx $a, $c;
}

multi prefix:<->(Approx $a) { approx -$a.x, [$a.c.map: -*] }

multi infix:<+>($a, Approx $b) { approx($a) + $b }
multi infix:<+>(Approx $a, $b) { $a + approx($b) }
multi infix:<+>(Approx $a, Approx $b) { approx $a.x + $b.x, [$a.c Z+ $b.c] }

multi infix:<->($a, Approx $b) { approx($a) - $b }
multi infix:<->(Approx $a, $b) { $a - approx($b) }
multi infix:<->(Approx $a, Approx $b) { approx $a.x - $b.x, [$a.c Z- $b.c] }

multi covariance(Real   $a, Real   $b) { 0 }
multi covariance(Approx $a, Approx $b) { [+] $a.c Z* $b.c }

multi infix:«<=>»(Approx $a, Approx $b) { $a.x <=> $b.x }
multi infix:<cmp>(Approx $a, Approx $b) { $a.x <=> $b.x }

multi infix:<*>($a, Approx $b) { approx($a) * $b }
multi infix:<*>(Approx $a, $b) { $a * approx($b) }
multi infix:<*>(Approx $a, Approx $b) {
    approx $a.x * $b.x,
           [$a.c.map({$b.x * $_}) Z+ $b.c.map({$a.x * $_})];
}

multi infix:</>($a, Approx $b) { approx($a) / $b }
multi infix:</>(Approx $a, $b) { $a / approx($b) }
multi infix:</>(Approx $a, Approx $b) {
    approx $a.x / $b.x,
           [ $a.c.map({ $_ / $b.x }) Z+ $b.c.map({ $a.x * $_ / $b.x / $b.x }) ];
}

multi sqrt(Approx $a) {
    my $x = sqrt($a.x);
    approx $x, [ $a.c.map: { $_ / 2 / $x } ];
}

multi infix:<**>(Approx $a, Real $b) { $a ** approx($b) }
multi infix:<**>(Approx $a is copy, Approx $b) {
	my $ax = $a.x;
	my $bx = $b.x;
	my $fbx = floor $b.x;
	if $ax < 0 {
	    if $fbx != $bx or $fbx +& 1 {
		die "Can't take power of negative number $ax";
	    }
	    $a = -$a;
	}
	exp($b * log $a);
}

multi exp(Approx $a) {
	my $x = exp($a.x);
	approx $x, [ $a.c.map: { $x * $_ } ];
}

multi log(Approx $a) {
	my $x0 = $a.x;
	approx log($x0), [ $a.c.map: { $_ / $x0 }];
}

# Each ± sets up an independent source component.
my $x1 = 100 ± 1.1;
my $x2 = 200 ± 2.2;
my $y1 = 50  ± 1.2;
my $y2 = 100 ± 2.3;

# The standard task.
my $z1 = sqrt(($x1 - $x2) ** 2 + ($y1 - $y2) ** 2);
say "distance: $z1\n";

# Just showing off.
my $a = $x1 + $x2;
my $b = $y1 - 2 * $x2;
say "covariance between $a and $b: ", covariance($a,$b);
#-------------------------------------------------- 684 numeric-separator-syntax
# Any numeric input value may use an underscore as a grouping/separator character.
# May occur in nearly any position, in any* number. * See restrictions below.

# Int
say 1_2_3;  # 123

# Binary Int
say 0b1_0_1_0_1; # 21

# Hexadecimal Int
say 0xa_bc_d; # 43981

# Rat
say 1_2_3_4.2_5; # 1234.25

# Num
say 6.0_22e4; # 60220

# There are some restrictions on the placement.
# An underscore may not be on an edge boundary, or next to another underscore.
# The following are all syntax errors.

# say _1234.25;
# say 1234_.25;
# say 1234._25;
# say 1234.25_;
# say 12__34.25;
#---------------------------- 685 numerical-integration-adaptive-simpsons-method
sub adaptive-Simpson-quadrature(&f, $left, $right, \ε = 1e-9) {
    my $lf = f($left);
    my $rf = f($right);
    my ($mid, $midf, $whole) = Simpson-quadrature-mid(&f, $left, $lf, $right, $rf);
    return recursive-Simpsons-asr(&f, $left, $lf, $right, $rf, ε, $whole, $mid, $midf);

    sub Simpson-quadrature-mid(&g, $l, $lf, $r, $rf){
        my $mid = ($l + $r) / 2;
        my $midf = g($mid);
        ($mid, $midf, ($r - $l).abs / 6 * ($lf + 4 * $midf + $rf))
    }

    sub recursive-Simpsons-asr(&h, $a, $fa, $b, $fb, $eps, $whole, $m, $fm){
        my ($lm, $flm, $left)  = Simpson-quadrature-mid(&h, $a, $fa, $m, $fm);
        my ($rm, $frm, $right) = Simpson-quadrature-mid(&h, $m, $fm, $b, $fb);
        my $delta = $left + $right - $whole;
        $delta.abs <= 15 * $eps
            ?? $left + $right + $delta / 15
            !! recursive-Simpsons-asr(&h, $a, $fa, $m, $fm, $eps/2, $left,  $lm, $flm) +
               recursive-Simpsons-asr(&h, $m, $fm, $b, $fb, $eps/2, $right, $rm, $frm)
    }
}

my ($a, $b) = 0e0, 1e0;
my $sin = adaptive-Simpson-quadrature(&sin, $a, $b, 1e-9).round(10**-9);;
say "Simpson's integration of sine from $a to $b = $sin";
#--------------------------- 686 numerical-integration-gauss-legendre-quadrature
multi legendre-pair(    1 , $x) { $x, 1 }
multi legendre-pair(Int $n, $x) {
    my ($m1, $m2) = legendre-pair($n - 1, $x);
    my \u = 1 - 1 / $n;
    (1 + u) * $x * $m1 - u * $m2, $m1;
}

multi legendre(    0 , $ ) { 1 }
multi legendre(Int $n, $x) { legendre-pair($n, $x)[0] }

multi legendre-prime(    0 , $ ) { 0 }
multi legendre-prime(    1 , $ ) { 1 }
multi legendre-prime(Int $n, $x) {
    my ($m0, $m1) = legendre-pair($n, $x);
    ($m1 - $x * $m0) * $n / (1 - $x**2);
}

sub approximate-legendre-root(Int $n, Int $k) {
    # Approximation due to Francesco Tricomi
    my \t = (4*$k - 1) / (4*$n + 2);
    (1 - ($n - 1) / (8 * $n**3)) * cos(pi * t);
}

sub newton-raphson(&f, &f-prime, $r is copy, :$eps = 2e-16) {
    while abs(my \dr = - f($r) / f-prime($r)) >= $eps {
        $r += dr;
    }
    $r;
}

sub legendre-root(Int $n, Int $k) {
    newton-raphson(&legendre.assuming($n), &legendre-prime.assuming($n),
                   approximate-legendre-root($n, $k));
}

sub weight(Int $n, $r) { 2 / ((1 - $r**2) * legendre-prime($n, $r)**2) }

sub nodes(Int $n) {
    flat gather {
        take 0 => weight($n, 0) if $n !%% 2;
        for 1 .. $n div 2 {
            my $r = legendre-root($n, $_);
            my $w = weight($n, $r);
            take $r => $w, -$r => $w;
        }
    }
}

sub quadrature(Int $n, &f, $a, $b, :@nodes = nodes($n)) {
    sub scale($x) { ($x * ($b - $a) + $a + $b) / 2 }
    ($b - $a) / 2 * [+] @nodes.map: { .value * f(scale(.key)) }
}

say "Gauss-Legendre $_.fmt('%2d')-point quadrature ∫₋₃⁺³ exp(x) dx ≈ ",
         quadrature($_, &exp, -3, +3) for flat 5 .. 10, 20;
#--------------------------------- 687 numerical-integration-romberg-integration
# 20250707 Raku programming solution

sub Romberg(&func, $lower, $upper, $steps, $acc = 1e-8, $degree = 4, $batch = 6, :$parallel = False) {
   my ($h0, $s0) = $upper - $lower, &func($lower) + &func($upper);
   my @prev-row  = my $rr = ($s0 * $h0 / 2);

   for 1..$steps Z (2, * × 2 ... *) -> ($i, $n) {
      my ($ro, $h, $s) = $rr, $h0 / $n, $s0 / 2;

      $parallel ?? ( $s += sum ( $lower X+ ($h, 2*$h ... ($n-1)*$h) ).race(
                           :$degree, :$batch).map(&func) )
                !! ( for 1..^$n -> $j { $s += &func($lower + $j * $h) } );

      my @curr-row = $s * $h;

      $rr = do for 1..$i Z (4, * × 4 ... *) -> ($k, $f) {
         @curr-row[$k] = ($f*@curr-row[$k-1] - @prev-row[$k-1]) / ($f - 1)
      }[*-1];
      abs($rr - $ro) < $acc ?? ( last ) !! @prev-row = @curr-row
   }
   return $rr
}

# Test cases
say Romberg(&sin,  0, 1, 5).fmt("%.8f");
say Romberg(&exp, -3, 3, 5).fmt("%.8f");

#`[[[[[[ again not suitable for ATO consumption

sub expensive($x) { # Expensive function
   my $sum = 0;
   for 1..10000 {
      my $y = $x * $_;
      $sum += sin($y) * cos($y) * exp(-$y / ($_ * $_)) / ($_**3);
   }
   return $sum + ($x**20) * log($x + 1)
}

# Benchmark parallel vs sequential for steps = 5
say "\nSteps = ", my $steps = 5;
# Sequential
my $start = now;
my $result = Romberg(&expensive, 0, 1, $steps, 1e-8, 4, 6, :!parallel);
say "Sequential, Result: $result.fmt('%.8f'), Time: {now - $start} seconds";
# Parallel
$start = now;
$result = Romberg(&expensive, 0, 1, $steps, 1e-8, 4, 6, :parallel);
say "  Parallel, Result: $result.fmt('%.8f'), Time: {now - $start} seconds";

#]]]]]]
#-------------------------------- 688 numerical-integration-tanh-sinh-quadrature
# 20250703 Raku programming solution

sub Tanh-Sinh(&func, $lower, $upper, $steps, $acc = 1e-8, $degree = 4, $batch = 50, :$parallel = False) {
   my ($h, $rr, $h0, $h1) = 0.1, 0, ($upper-$lower)/2, ($lower+$upper)/2;

   for 1..$steps { # Refinement loop for increasing quadrature resolution
      my ($ro, $ss, $n) = $rr, 0, 2**$_ - 1;

      if $parallel { # Parallelized quadrature point loop
         my @results = (-$n..$n).race(batch => $batch, degree => $degree).map: -> $i {
            my ($sh, $ch) = { $_.sinh, $_.cosh }($i*$h);
            my $th = tanh($sh * pi / 2);
            my $dx = ($ch * pi / 2) / (cosh($sh * pi / 2) ** 2);
            &func($h1 + $h0 * $th) * $h * $dx
         }
         $ss = @results.sum
      } else { # Sequential quadrature point loop
         for -$n..$n -> $i {
            my ($sh, $ch) = { $_.sinh, $_.cosh }($i*$h);
            my $th = tanh($sh * pi / 2);
            my $dx = ($ch * pi / 2) / (cosh($sh * pi / 2) ** 2);
            $ss += &func($h1 + $h0 * $th) * $h * $dx
         }
      }
      $rr = $h0 * $ss;
      last if abs($rr - $ro) < $acc;
   }
   return $rr;
}

say Tanh-Sinh(&sin,  0, 1, 5).fmt("%.8f");
say Tanh-Sinh(&exp, -3, 3, 5).fmt("%.8f");

#`[[[[[[ Not suitable for ATO :-D

sub expensive($x) { # Expensive function
   my $sum = 0;
   for 1..5000 {
      my $y = $x * $_;
      $sum += sin($y) * cos($y) * exp(-$y / ($_ * $_)) / ($_**3);
   }
   return $sum + ($x**20) * log($x + 1)
}

# Benchmark parallel vs sequential for steps = 5
say "\nSteps = ", my $steps = 5;

# Sequential
my $start = now;
my $result = Tanh-Sinh(&expensive, 0, 1, $steps, 1e-8, 4, 5, :!parallel);
say "Sequential, Result: $result.fmt('%.8f'), Time: {now - $start} seconds";

# Parallel
$start = now;
$result = Tanh-Sinh(&expensive, 0, 1, $steps, 1e-8, 4, 5, :parallel);
say "  Parallel, Result: $result.fmt('%.8f'), Time: {now - $start} seconds";

# ]]]]]]
#-------------------------------------------------------------------- 689 nysiis
sub no_suffix ($name) {
    $name.uc.subst: /\h (<[JS]>R) | (<[IVX]>+) $/, '';
}

sub nysiis ($name is copy) {
    given $name .= uc {
        s:g/<-[A..Z]>//;
        s/^MAC/MCC/;
        s/^P<[FH]>/FF/;
        s/^SCH/SSS/;
        s/^KN/N/;
        s/<[IE]>E$  /Y/;
        s/<[DRN]>T$ /D/;
        s/<[RN]>D$  /D/;
        s:c(1):g/EV/AF/;
        s:c(1):g/<[AEIOU]>+/A/;
        s:c(1):g/Q/G/;
        s:c(1):g/Z/S/;
        s:c(1):g/M/N/;
        s:c(1):g/KN/N/;
        s:c(1):g/K/C/;
        s:c(1):g/SCH/S/;
        s:c(1):g/PF/F/;
        s:c(1):g/K/C/;
        s:c(1):g/H(<-[AEIOU]>)/$0/;
        s:g/(<-[AEIOU]>)H/$0/;
        s:g/(.)W/$0/;
        s/ AY$ /Y/;
        s/  S$ //;
        s/  A$ //;
        s:g/ (.)$0+ /$0/;
     }
     return $name;
}


for «
    knight      mitchell        "o'daniel"      "brown  sr"     "browne III"
    "browne IV" "O'Banion"      Mclaughlin      McCormack       Chapman
    Silva       McDonald        Lawson          Jacobs          Greene
    "O'Brien"   Morrison        Larson          Willis          Mackenzie
    Carr        Lawrence        Matthews        Richards        Bishop
    Franklin    McDaniel        Harper          Lynch           Watkins
    Carlson     Wheeler         "Louis XVI"
» {
    my $nysiis = nysiis no_suffix $_;
    if $nysiis.chars > 6 {
        $nysiis .= subst: rx/ <after .**6> .+ /, -> $/ { "[$/]" };
    }
    printf "%10s,  %s\n", $_, $nysiis;
}
#---------------------------------------------------- 690 odd-and-square-numbers
for 1..5 {
    my $max = exp $_, 10;
    put "\n{+$_} odd squares from {$max / 10} to $max:\n{ .batch(10).join: "\n" }"
    given ({(2 × $++ + 1)²} … * > $max).grep: $max / 10 ≤ * ≤ $max
}
#------------------------------------------------- 691 odd-squarefree-semiprimes
say (3..333).grep(*.is-prime).combinations(2).map( { next if (my $p = [*] $_) > 999; $p } ).flat\
    .sort.batch(20)».fmt('%3d').join: "\n";
#--------------------------------------------------------- 692 ohalloran-numbers
my @Area;

my $threshold = 1000; # a little overboard to make sure we get them all

for 1..$threshold -> $x {
    for 1..$x -> $y {
        last if $x × $y > $threshold;
        for 1..$y -> $z {
           push @Area[my $area = ($x × $y + $y × $z + $z × $x) × 2], "$x,$y,$z";
           last if $area > $threshold;
        }
    }
}

say "Even integer surface areas NOT achievable by any regular, integer dimensioned cuboid:\n" ~
   @Area[^$threshold].kv.grep( { $^key > 6 and $key %% 2 and !$^value } )»[0];
#-------------------------------------------------- 693 old-lady-swallowed-a-fly
my @victims =
    fly    => "  I don't know why S—",
    spider => "  That wriggled and jiggled and tickled inside her.",
    bird   => "  How absurd, T!",
    cat    => "  Fancy that, S!",
    dog    => "  What a hog, T!",
    goat   => "  She just opened her throat, and in walked the goat!",
    cow    => "  I don't know how S!",
    horse  => "  She's dead, of course...";

my @history = "I guess she'll die...\n";

for (flat @victims».kv) -> $victim, $_ is copy {
    say "There was an old lady who swallowed a $victim...";

    s/ «S» /she swallowed the $victim/;
    s/ «T» /to swallow a $victim!/;
    .say;
    last when /dead/;

    @history[0] ~~ s/^X/She swallowed the $victim/;
    .say for @history;
    @history.unshift($_) if @history < 5;
    @history.unshift("X to catch the $victim,");
}
#--------------------------------------------- 694 old-russian-measure-of-length
convert(1, 'meter');

say '*' x 40, "\n";

convert(1, 'milia');

sub convert (Real $magnitude, $unit) {
     my %factor =
        tochka     => 0.000254,
        liniya     => 0.00254,
        diuym      => 0.0254,
        vershok    => 0.04445,
        piad       => 0.1778,
        fut        => 0.3048,
        arshin     => 0.7112,
        sazhen     => 2.1336,
        versta     => 1066.8,
        milia      => 7467.6,
        centimeter => 0.01,
        meter      => 1.0,
        kilometer  => 1000.0,
    ;

    my $meters = $magnitude * %factor{$unit.lc};

    say "$magnitude $unit to:\n", '_' x 40;

    printf "%10s: %s\n", $_,  $meters / %factor{$_} unless $_ eq $unit.lc
      for %factor.keys.sort:{ +%factor{$_} }
}
#----------------------------------------- 695 one-dimensional-cellular-automata
class Automaton {
    has $.rule;
    has @.cells;
    has @.code = $!rule.fmt('%08b').flip.comb».Int;

    method gist { "|{ @!cells.map({+$_ ?? '#' !! ' '}).join }|" }

    method succ {
        self.new: :$!rule, :@!code, :cells(
            @!code[
                    4 «*« @!cells.rotate(-1)
                »+« 2 «*« @!cells
                »+«       @!cells.rotate(1)
            ]
        )
    }
}

#  The rule proposed for this task is rule 0b01101000 = 104

my @padding = 0 xx 5;
my Automaton $a .= new:
    rule  => 104,
    cells => flat @padding, '111011010101'.comb, @padding
;
say $a++ for ^10;


# Rule 104 is not particularly interesting so here is [[wp:Rule 90|Rule 90]],
# which shows a [[wp:Sierpinski Triangle|Sierpinski Triangle]].

say '';
@padding = 0 xx 25;
$a = Automaton.new: :rule(90), :cells(flat @padding, 1, @padding);

say $a++ for ^20;
#------------------------------------------------------------ 696 one-time-pad-2
sub s2v ($s) { $s.uc.comb(/ <[ A..Z ]> /)».ord »-» 65 }
sub v2s (@v) { (@v »%» 26 »+» 65)».chr.join }

sub hide   ($secret, $otp) { v2s(s2v($secret) »+» s2v($otp)) }
sub reveal ($hidden, $otp) { v2s(s2v($hidden) »-» s2v($otp)) }

sub otp-data ($fn, $lines) {
    my $fh = $fn.IO.open :rw;
    my $data;
    my $count = 0;
    repeat {
        my $pos = $fh.tell;
        my $line = $fh.get;
        if $line.substr(0,1) ne '-'|'#' {
            $data ~= $line;
            $fh.seek($pos);
            $fh.put: '-' ~ $line.substr(1);
            $count++;
        }
    } until $count == $lines or $fh.eof;
    note "Insufficient lines of data remaining in $fn" if $count != $lines;
    $data;
}

sub otp-size (Str $string) { ceiling $string.uc.comb(/ <[ A..Z ]> /) / 48 }

sub otp-encrypt ( $secret, $fn ) {
    my $otp-size = otp-size $secret;
    my $otp-data = otp-data($fn, $otp-size);
    my $encrypted = hide $secret, $otp-data;
    # pad encryted text out to a full line with random text
    $encrypted ~= ('A'..'Z').roll while $encrypted.chars % 48;
    join "\n", $encrypted.comb(6).rotor(8, :partial).map:
      { sprintf "{ join ' ', "%s" xx $_ }", $_ };
}

sub otp-decrypt ( $secret, $fn ) {
    my $otp-size = otp-size $secret;
    my $otp-data = otp-data($fn, $otp-size);
    my $plain-text = reveal $secret, $otp-data;
    join "\n", $plain-text.comb(6).rotor(8, :partial).map:
      { sprintf "{ join ' ', "%s" xx $_ }", $_ };
}

my $otp-encrypt-fn = 'rosettacode.1tp';
my $otp-decrypt-fn = 'rosettacopy.1tp';

my $secret = "Beware the Jabberwock, my son! The jaws that bite, the claws that catch!";

say "Secret:\n$secret\n\nEncrypted:";
say my $encrypted =   otp-encrypt $secret,    $otp-encrypt-fn;
say "\nDecrypted:\n", otp-decrypt $encrypted, $otp-decrypt-fn;
#---------------------------------------------------------- 697 one-two-primes-2
for 929,(0,1),229,(1,2),930,(1,3),931,(1,4),932,(1,5),933,(1,6),934,(1,7),935,(1,8),
    936,(1,9),937,(2,3),938,(2,7),939,(2,9),940,(3,4),941,(3,5),942,(3,7),943,(3,8),
    944,(4,7),945,(4,9),946,(5,7),947,(5,9),948,(6,7),949,(7,8),950,(7,9),951,(8,9)
  -> $oeis, $pair {

    say "\nOEIS:A036{$oeis} - Smallest n digit prime using only {$pair[0]} and {$pair[1]} (or '0' if none exists):";

    sub condense ($n) { $n.subst(/(.) {} :my $repeat=$0; ($repeat**{9..*})/, -> $/ {"($0 x {1+$1.chars}) "}) }

    sub build ($digit, $sofar='') { take $sofar and return unless $digit; build($digit-1,$sofar~$_) for |$pair }

    sub get-prime ($digits) {
        ($pair[0] ?? (gather build $digits).first: &is-prime
        !! (gather build $digits-1, $pair[1]).first: &is-prime
        ) // 0
    }

    printf "%4d: %s\n", $_, condense .&get-prime for flat 1..20, 100, 200;
}
#------------------------------------------------------- 698 openwebnet-password
sub own-password (Int $password, Int $nonce) {
    my int $n1 = 0;
    my int $n2 = $password;
    for $nonce.comb {
        given $_ {
            when 1 {
                $n1 = $n2 +& 0xFFFFFF80 +> 7;
                $n2 +<= 25;
            }
            when 2 {
                $n1 = $n2 +& 0xFFFFFFF0 +> 4;
                $n2 +<= 28;
            }
            when 3 {
                $n1 = $n2 +& 0xFFFFFFF8 +> 3;
                $n2 +<= 29;
            }
            when 4 {
                $n1 = $n2 +< 1;
                $n2 +>= 31;
            }
            when 5 {
                $n1 = $n2 +< 5;
                $n2 +>= 27;
            }
            when 6 {
                $n1 = $n2 +< 12;
                $n2 +>= 20;
            }
            when 7 {
                $n1 = $n2 +& 0x0000FF00 +| ($n2 +& 0x000000FF +< 24) +| ($n2 +& 0x00FF0000 +> 16);
                $n2 = $n2 +& 0xFF000000 +> 8;
            }
            when 8 {
                $n1 = $n2 +& 0x0000FFFF +< 16 +| $n2 +> 24;
                $n2 = $n2 +& 0x00FF0000 +> 8;
            }
            when 9  { $n1 = +^$n2 }
            default { $n1 = $n2 }
        }
        given $_ {
            when 0 {}
            when 9 {}
            default { $n1 = ($n1 +| $n2) +& 0xFFFFFFFF }
        }
        $n2 = $n1;
    }
    $n1
}

say own-password( 12345, 603356072 );
say own-password( 12345, 410501656 );
say own-password( 12345, 630292165 );
#------------------------------------------------- 699 order-by-pair-comparisons
my $ask_count = 0;
sub by_asking ( $a, $b ) {
    $ask_count++;
    constant $fmt = '%2d. Is %-6s [ less than | greater than | equal to ] %-6s? ( < = > ) ';
    constant %o = '<' => Order::Less,
                  '=' => Order::Same,
                  '>' => Order::More;

    loop {
        my $input = prompt sprintf $fmt, $ask_count, $a, $b;
        return $_ with %o{ $input.trim };
        say "Invalid input '$input'";
    }
}

my @colors = <violet red green indigo blue yellow orange>;
my @sorted = @colors.sort: &by_asking;
say (:@sorted);

die if @sorted».substr(0,1).join ne 'roygbiv';
my $expected_ask_count = @colors.elems * log(@colors.elems);
warn "Too many questions? ({:$ask_count} > {:$expected_ask_count})" if $ask_count > $expected_ask_count;
#------------------------------------------------- 700 order-disjoint-list-items
sub order-disjoint-list-items(\M, \N) {
    my \bag = N.BagHash;
    M.map: { bag{$_}-- ?? N.shift !! $_ }
}

# Testing:

for q:to/---/.comb(/ [\S+]+ % ' ' /).map({[.words]})
    the cat sat on the mat      mat cat
    the cat sat on the mat      cat mat
    A B C A B C A B C           C A C A
    A B C A B D A B E           E A D A
    A B                         B
    A B                         B A
    A B B A                     B A
    X X Y                       X
    A X                         Y A
    ---
->  $m, $n { say "\n$m ==> $n\n", order-disjoint-list-items($m, $n) }
#-------------------------------------------------------- 701 ordered-partitions
sub partition(@mask is copy) {
    my @op;
    my $last = [+] @mask or return [] xx 1;
    for @mask.kv -> $k, $v {
        next unless $v;
        temp @mask[$k] -= 1;
        for partition @mask -> @p {
            @p[$k].push: $last;
            @op.push: @p;
        }
    }
    return @op;
}

.say for reverse partition [2,0,2];
#---------------------------------------------------- 702 overloaded-operators-2
say  3    +  5;      # Int plus Int
say  3.0  +  0.5e1;  # Rat plus Num
say '3'   +  5;      # Str plus Int
say  3    + '5';     # Int plus Str
say '3'   + '5';     # Str plus Str
say '3.0' + '0.5e1'; # Str plus Str
say (2, 3, 4) + [5, 6]; # List plus Array
#---------------------------------------------------- 703 overloaded-operators-3
say  3    ~  5;      # Int concatenate Int
say  3.0  ~  0.5e1;  # Rat concatenate Num
say '3'   ~  5;      # Str concatenate Int
say  3    ~ '5';     # Int concatenate Str
say '3'   ~ '5';     # Str concatenate Str
say '3.0' ~ '0.5e1'; # Str concatenate Str
say (2, 3, 4) ~ [5, 6]; # List concatenate Array
#---------------------------------------------------- 704 overloaded-operators-4
sub infix:<⊕> (Int $x, Int $y) is equiv(&infix:<+>) { $x +^ $y }

sub infix:<⊗> (Int $x, Int $y) is equiv(&infix:<×>) {
    return $x × $y if so $x|$y < 2;
    my $h = exp $x.lsb, 2;
    return $h ⊗ $y ⊕ (($x ⊕ $h) ⊗ $y) if $x > $h;
    return $y ⊗ $x if $y.lsb < $y.msb;
    return $x × $y unless my $comp = $x.lsb +& $y.lsb;
    $h = exp $comp.lsb, 2;
    (($x +> $h) ⊗ ($y +> $h)) ⊗ (3 +< ($h - 1))
}

say 123 ⊗ 456;
#---------------------------------------------------- 705 overloaded-operators-5
class Line {
    has @.start;
    has @.end;
}

# New infix + multi to add two Lines together, for some bogus definition of add
multi infix:<+> (Line $x, Line $y) {
    Line.new(
       :start(
          sqrt($x.start[0]² + $y.start[0]²),
          sqrt($x.start[1]² + $y.start[1]²)
       ),
       :end(
          sqrt($x.end[0]² + $y.end[0]²),
          sqrt($x.end[1]² + $y.end[1]²)
       )
    )
}

# In operation:
say Line.new(:start(-4,7), :end(5,0)) + Line.new(:start(1,1), :end(2,3));
#---------------------------------------------------- 706 own-digits-power-sum-2
proto combs_with_rep (UInt, @ ) { * }
multi combs_with_rep (0,    @ ) { () }
multi combs_with_rep ($,    []) { () }
multi combs_with_rep (1,    @a) { map { $_, }, @a }
multi combs_with_rep ($n, [$head, *@tail]) {
    |combs_with_rep($n - 1, ($head, |@tail)).map({ $head, |@_ }),
    |combs_with_rep($n, @tail);
}

say sort gather {
    for 3..9 -> $d {
        for combs_with_rep($d, [^10]) -> @digits {
            .take if $d == .comb.elems and @digits.join == .comb.sort.join given sum @digits X** $d;
        }
    }
}
#-------------------------------------------------------- 707 p-value-correction
########################### Helper subs ###########################

sub adjusted (@p, $type) { "\n$type\n" ~ format adjust( check(@p), $type ) }

sub format ( @p, $cols = 5 ) {
    my $i = -$cols;
    my $fmt = "%1.10f";
    join "\n", @p.rotor($cols, :partial).map:
      { sprintf "[%2d]  { join ' ', $fmt xx $_ }", $i+=$cols, $_ };
}

sub check ( @p ) { die 'p-values must be in range 0.0 to 1.0' if @p.min < 0 or 1 < @p.max; @p }

multi ratchet ( 'up', @p ) { my $m; @p[$_] min= $m, $m = @p[$_] for ^@p; @p }

multi ratchet ( 'dn', @p ) { my $m; @p[$_] max= $m, $m = @p[$_] for ^@p .reverse; @p }

sub schwartzian ( @p, &transform, :$ratchet ) {
    my @pa = @p.map( {[$_, $++]} ).sort( -*.[0] ).map: { [transform(.[0]), .[1]] };
    @pa[*;0] = ratchet($ratchet, @pa»[0]);
    @pa.sort( *.[1] )»[0]
}

############# The various p-value correction routines #############

multi adjust( @p, 'Benjamini-Hochberg' ) {
    @p.&schwartzian: * * @p / (@p - $++) min 1, :ratchet('up')
}

multi adjust( @p, 'Benjamini-Yekutieli' ) {
    my \r = ^@p .map( { 1 / ++$ } ).sum;
    @p.&schwartzian: * * r * @p / (@p - $++) min 1, :ratchet('up')
}

multi adjust( @p, 'Hochberg' ) {
    my \m = @p.max;
    @p.&schwartzian: * * ++$ min m, :ratchet('up')
}

multi adjust( @p, 'Holm' ) {
    @p.&schwartzian: * * ++$ min 1, :ratchet('dn')
}

multi adjust( @p, 'Šidák' ) {
    @p.&schwartzian: 1 - (1 - *) ** ++$, :ratchet('dn')
}

multi adjust( @p, 'Bonferroni' ) {
    @p.map: * * @p min 1
}

# Hommel correction can't be easily reduced to a one pass transform
multi adjust( @p, 'Hommel' ) {
    my @s  = @p.map( {[$_, $++]} ).sort: *.[0] ; # sorted
    my \z  = +@p; # array si(z)e
    my @pa = @s»[0].map( * * z / ++$ ).min xx z; # p adjusted
    my @q;        # scratch array
    for (1 ..^ z).reverse -> $i {
        my @L  = 0 .. z - $i; # lower indices
        my @U  = z - $i ^..^ z; # upper indices
        my $q  = @s[@U]»[0].map( { $_ * $i / (2 + $++) } ).min;
        @q[@L] = @s[@L]»[0].map: { min $_ * $i, $q, @s[*-1][0] };
        @pa    = ^z .map: { max @pa[$_], @q[$_] }
    }
    @pa[@s[*;1].map( {[$_, $++]} ).sort( *.[0] )»[1]]
}

multi adjust ( @p, $unknown ) {
    note "\nSorry, do not know how to do $unknown correction.\n" ~
    "Perhaps you want one of these?:\n" ~
    <Benjamini-Hochberg Benjamini-Yekutieli Bonferroni Hochberg
    Holm Hommel Šidák>.join("\n");
    exit
}

########################### The task ###########################

my @p-values =
    4.533744e-01, 7.296024e-01, 9.936026e-02, 9.079658e-02, 1.801962e-01,
    8.752257e-01, 2.922222e-01, 9.115421e-01, 4.355806e-01, 5.324867e-01,
    4.926798e-01, 5.802978e-01, 3.485442e-01, 7.883130e-01, 2.729308e-01,
    8.502518e-01, 4.268138e-01, 6.442008e-01, 3.030266e-01, 5.001555e-02,
    3.194810e-01, 7.892933e-01, 9.991834e-01, 1.745691e-01, 9.037516e-01,
    1.198578e-01, 3.966083e-01, 1.403837e-02, 7.328671e-01, 6.793476e-02,
    4.040730e-03, 3.033349e-04, 1.125147e-02, 2.375072e-02, 5.818542e-04,
    3.075482e-04, 8.251272e-03, 1.356534e-03, 1.360696e-02, 3.764588e-04,
    1.801145e-05, 2.504456e-07, 3.310253e-02, 9.427839e-03, 8.791153e-04,
    2.177831e-04, 9.693054e-04, 6.610250e-05, 2.900813e-02, 5.735490e-03
;

for < Benjamini-Hochberg Benjamini-Yekutieli Bonferroni Hochberg Holm Hommel Šidák >
{
    say adjusted @p-values, $_
}
#------------------------------------------- 708 padovan-n-step-number-sequences
say 'Padovan N-step sequences; first 25 terms:';

for 2..8 -> \N {
    my @n-step = 1, 1, 1, { state $n = 2; @n-step[ ($n - N .. $n++ - 1).grep: * >= 0 ].sum } … *;
    put "N = {N} |" ~ @n-step[^25]».fmt: "%5d";
}
#---------------------------------------------------------- 709 padovan-sequence
constant p = 1.32471795724474602596;
constant s = 1.0453567932525329623;
constant %rules = A => 'B', B => 'C', C => 'AB';

my @pad-recur = 1, 1, 1, -> $c, $b, $ { $b + $c }  … *;

my @pad-floor = { floor 1/2 + p ** ($++ - 1) / s } … *;

my @pad-L-sys = 'A', { %rules{$^axiom.comb}.join } … *;
my @pad-L-len = @pad-L-sys.map: *.chars;

say @pad-recur.head(20);
say @pad-L-sys.head(10);

say "Recurrence == Floor to N=64" if (@pad-recur Z== @pad-floor).head(64).all;
say "Recurrence == L-len to N=32" if (@pad-recur Z== @pad-L-len).head(32).all;
#---------------------------------------------------------- 710 palindrome-dates
my $start = '1000-01-01';

my @palindate = {
     state $year = $start.substr(0,4);
     ++$year;
     my $m = $year.substr(2, 2).flip;
     my $d = $year.substr(0, 2).flip;
     next if not try Date.new("$year-$m-$d");
     "$year-$m-$d"
} … *;

my $date-today = Date.today; # 2020-02-02

my $k = @palindate.first: { Date.new($_) > $date-today }, :k;

say join "\n", @palindate[$k - 1 .. $k + 14];

say "\nTotal number of four digit year palindrome dates:\n" ~
my $four = @palindate.first( { .substr(5,1) eq '-' }, :k );
say "between {@palindate[0]} and {@palindate[$four - 1]}.";

my $five = @palindate.first: { .substr(6,1) eq '-' }, :k;

say "\nTotal number of five digit year palindrome dates:\n" ~
+@palindate[$four .. $five]
#------------------------------------------------------ 711 palindrome-detection
subset Palindrom of Str where {
    .flip eq $_ given .comb(/\w+/).join.lc
}

my @tests = q:to/END/.lines;
    A man, a plan, a canal: Panama.
    My dog has fleas
    Madam, I'm Adam.
    1 on 1
    In girum imus nocte et consumimur igni
    END

for @tests { say $_ ~~ Palindrom, "\t", $_ }
#--------------------------------------------- 712 palindromic-primes-in-base-16
say "{+$_} matching numbers:\n{.batch(10)».fmt('%3X').join: "\n"}"
    given (^500).grep: { .is-prime and .base(16) eq .base(16).flip };
#-------------------------------------------------------- 713 palindromic-primes
say "{+$_} matching numbers:\n{.batch(10)».fmt('%3d').join: "\n"}"
    given (^1000).grep: { .is-prime and $_ eq .flip };
#--------------------------------------------------------- 714 pancake-numbers-1
# Updated: 20240901 Raku programming solution

sub pancake(Int $n) {
   loop ( my ($gap, $pg, $sum_gaps, $adj) = <2 1 2 -1> ; ; $sum_gaps += $gap ) {
      $sum_gaps < $n ?? ( $adj += 1 ) !! return $n + $adj;
      ($pg, $gap) = ($gap, $gap + $pg)
   }
}

for (1..20).rotor(5) { @_».&{printf "p(%2d) = %2d   ",$_,pancake $_} and say() }
#---------------------------------------------------------- 715 pandigital-prime
say ($_..7).reverse.permutations».join.first: &is-prime for 1,0;
#----------------------------------------------------------- 716 pangram-checker
constant Eng = set 'a' .. 'z';
constant Cyr = (set 'а' .. 'ё') (-) (set 'ъ', 'ѐ');
constant Hex = set 'a' .. 'f';

sub pangram($str, Set $alpha = Eng) {
  $alpha ⊆ $str.lc.comb
}

say pangram("The quick brown fox jumps over the lazy dog.");
say pangram("My dog has fleas.");
say pangram("My dog has fleas.", Hex);
say pangram("My dog backs fleas.", Hex);
say pangram "Съешь же ещё этих мягких французских булок, да выпей чаю", Cyr;
#----------------------------------------------------------------- 717 paraffins
sub count-unrooted-trees(Int $max-branches, Int $max-weight) {
    my @rooted   = flat 1,1,0 xx $max-weight - 1;
    my @unrooted = flat 1,1,0 xx $max-weight - 1;

    sub count-trees-with-centroid(Int $radius) {
        sub add-branches(
            Int $branches,        # number of branches to add
            Int $w,               # weight of heaviest branch to add
            Int $weight  is copy, # accumulated weight of tree
            Int $choices is copy, # number of choices so far
        ) {
            $choices *= @rooted[$w];
            for 1 .. $branches -> $b {
                ($weight += $w) <= $max-weight or last;
                @unrooted[$weight] += $choices if $weight > 2*$radius;
                if $b < $branches {
                    @rooted[$weight] += $choices;
                    add-branches($branches - $b, $_, $weight, $choices) for 1 ..^ $w;
                    $choices = $choices * (@rooted[$w] + $b) div ($b + 1);
                }
            }
        }
        add-branches($max-branches, $radius, 1, 1);
    }

    sub count-trees-with-bicentroid(Int $weight) {
        if $weight %% 2 {
            my \halfs = @rooted[$weight div 2];
            @unrooted[$weight] += (halfs * (halfs + 1)) div 2;
        }
    }

    gather {
        take 1;
        for 1 .. $max-weight {
            count-trees-with-centroid($_);
            count-trees-with-bicentroid($_);
            take @unrooted[$_];
        }
    }
}

my constant N = 100;
my @paraffins = count-unrooted-trees(4, N);
say .fmt('%3d'), ': ', @paraffins[$_] for flat 1 .. 30, N;
#--------------------------------------------------- 718 parametric-polymorphism
role BinaryTree[::T] {
    has T $.value;
    has BinaryTree[T] $.left;
    has BinaryTree[T] $.right;

    method replace-all(T $value) {
        $!value = $value;
        $!left.replace-all($value) if $!left.defined;
        $!right.replace-all($value) if $!right.defined;
    }
}

class IntTree does BinaryTree[Int] { }

my IntTree $it .= new(value => 1,
                      left  => IntTree.new(value => 2),
                      right => IntTree.new(value => 3));

$it.replace-all(42);
say $it;
#------------------------------------------------------- 719 parse-an-ip-address
grammar IP_Addr {
    token TOP { ^ [ <IPv4> | <IPv6> ] $ }

    token IPv4 {
        [ <d8> +% '.' ] <?{ $<d8> == 4 }> <port>?
                { @*by8 = @$<d8> }
    }

    token IPv6 {
        |     <ipv6>
        | '[' <ipv6> ']' <port>
    }

    token ipv6 {
        | <h16> +% ':' <?{ $<h16> == 8 }>
                { @*by16 = @$<h16> }

        | [ (<h16>) +% ':']? '::' [ (<h16>) +% ':' ]? <?{ @$0 + @$1 ≤ 8 }>
                { @*by16 = |@$0, |('0' xx 8 - (@$0 + @$1)), |@$1 }

        | '::ffff:' <IPv4>
                { @*by16 = |('0' xx 5), 'ffff', |(by8to16 @*by8) }
    }

    token d8  { (\d+) <?{ $0 < 256   }> }
    token d16 { (\d+) <?{ $0 < 65536 }> }
    token h16 { (<xdigit>+) <?{ $0.chars ≤ 4 }> }

    token port {
        ':' <d16> { $*port = +$<d16> }
    }
}

sub by8to16 (@m) { gather for @m -> $a,$b { take ($a * 256 + $b).fmt("%04x") } }

my @cases = <
    127.0.0.1
    127.0.0.1:80
    ::1
    [::1]:80
    2605:2700:0:3::4713:93e3
    [2605:2700:0:3::4713:93e3]:80
    2001:db8:85a3:0:0:8a2e:370:7334
    2001:db8:85a3::8a2e:370:7334
    [2001:db8:85a3:8d3:1319:8a2e:370:7348]:443
    192.168.0.1
    ::ffff:192.168.0.1
    ::ffff:71.19.147.227
    [::ffff:71.19.147.227]:80
    ::
    256.0.0.0
    g::1
    0000
    0000:0000
    0000:0000:0000:0000:0000:0000:0000:0000
    0000:0000:0000::0000:0000
    0000::0000::0000:0000
    ffff:ffff:ffff:ffff:ffff:ffff:ffff:ffff
    ffff:ffff:ffff:fffg:ffff:ffff:ffff:ffff
    fff:ffff:ffff:ffff:ffff:ffff:ffff:ffff
    fff:ffff:0:ffff:ffff:ffff:ffff:ffff
>;

for @cases -> $addr {
    my @*by8;
    my @*by16;
    my $*port;

    IP_Addr.parse($addr);

    say $addr;
    if @*by16 {
        say "  IPv6: ", @*by16.map({:16(~$_)})».fmt("%04x").join;
        say "  Port: ", $*port if $*port;
    }
    elsif @*by8 {
        say "  IPv4: ", @*by8».fmt("%02x").join;
        say "  Port: ", $*port if $*port;
    }
    else {
        say "  BOGUS!";
    }
    say '';
}
#---------------------------------------------- 720 parse-command-line-arguments
sub MAIN (Bool :$b, Str :$s = '', Int :$n = 0, *@rest) {
    say "Bool: $b";
    say "Str: $s";
    say "Num: $n";
    say "Rest: @rest[]";
}
#------------------------------------------- 721 parsing-rpn-to-infix-conversion
sub p ($pair, $prec) { $pair.key < $prec ?? "( {$pair.value} )" !! $pair.value }

sub rpm-to-infix($string) {
    my @stack;
    for $string.words {
        when /\d/      { @stack.push: 9 => $_ }
        my ($y,$x) = @stack.pop, @stack.pop;
        when '^'       { @stack.push: 4 => ~(p($x,5), $_, p($y,4)) }
        when '*' | '/' { @stack.push: 3 => ~(p($x,3), $_, p($y,3)) }
        when '+' | '-' { @stack.push: 2 => ~(p($x,2), $_, p($y,2)) }
    }
    ($string, @stack».value).join("\n") ~ "\n";
}

say rpm-to-infix $_ for
    '3 4 2 * 1 5 - 2 3 ^ ^ / +',
    '1 2 + 3 4 + ^ 5 6 + ^';
#------------------------------------------- 722 parsing-shunting-yard-algorithm
 my %prec =
   '^' => 4,
   '*' => 3,
   '/' => 3,
   '+' => 2,
   '-' => 2,
   '(' => 1;

my %assoc =
   '^' => 'right',
   '*' => 'left',
   '/' => 'left',
   '+' => 'left',
   '-' => 'left';

sub shunting-yard ($prog) {
   my @inp = $prog.words;
   my @ops;
   my @res;

   sub report($op) { printf "%25s    %-7s %10s %s\n", ~@res, ~@ops, $op, ~@inp }
   sub shift($t)  { report( "shift $t"); @ops.push: $t }
   sub reduce($t) { report("reduce $t"); @res.push: $t }

   while @inp {
     given @inp.shift {
       when /\d/ { reduce $_ };
       when '(' { shift $_ }
       when ')' { while @ops and (my $x = @ops.pop and $x ne '(') { reduce $x } }
       default {
         my $newprec = %prec{$_};
           while @ops {
              my $oldprec = %prec{@ops[*-1]};
              last if $newprec > $oldprec;
              last if $newprec == $oldprec and %assoc{$_} eq 'right';
              reduce @ops.pop;
           }
           shift $_;
       }
     }
   }
   reduce @ops.pop while @ops;
   @res;
}

say shunting-yard '3 + 4 * 2 / ( 1 - 5 ) ^ 2 ^ 3';
#---------------------------------------------- 723 partial-function-application
sub fs ( Code $f, @s ) { @s.map: { .$f } }

sub f1 ( $n ) { $n *  2 }
sub f2 ( $n ) { $n ** 2 }

my &fsf1 := &fs.assuming(&f1);
my &fsf2 := &fs.assuming(&f2);

for [1..3], [2, 4 ... 8] X &fsf1, &fsf2 -> ($s, $f) {
    say $f.($s);
}
#-------------------------------------- 724 partition-an-integer-x-into-n-primes
# short circuit for '1' partition
multi partition ( Int $number, 1 ) { $number.is-prime ?? $number !! () }

my @primes = lazy (^Inf).grep: &is-prime;

multi partition ( Int $number, Int $parts where * > 1 = 2 ) {
    my @these = @primes[^($number div $parts)];
    shift @these if (($number %% 2) && ($parts %% 2)) || (($number % 2) && ($parts % 2));
    for @these.combinations($parts - 1) {
        my $maybe = $number - .sum;
        return (|$_, $maybe) if $maybe.is-prime && ($maybe ∉ $_)
    };
    ()
}

# TESTING
(18,2, 19,3, 20,4, 99807,1, 99809,1, 99820,6, 2017,24, 22699,1, 22699,2, 22699,3, 22699,4, 40355,3)\
  .race(:1batch).map: -> $number, $parts {
    say (sprintf "Partition %5d into %2d prime piece", $number, $parts),
    $parts == 1 ?? ':  ' !! 's: ', join '+', partition($number, $parts) || 'not possible'
}
#-------------------------------------------------- 725 pascal-matrix-generation
# Extend a matrix in 2 dimensions based on 3 neighbors.
sub grow-matrix(@matrix, &func) {
    my $n = @matrix.shape eq '*' ?? 1 !! @matrix.shape[0];
    my @m[$n+1;$n+1];
    for ^$n X ^$n -> ($i, $j) {
       @m[$i;$j] = @matrix[$i;$j];
    }
#                     West         North        NorthWest
    @m[$n; 0] = func( 0,           @m[$n-1;0],  0            );
    @m[ 0;$n] = func( @m[0;$n-1],  0,           0            );
    @m[$_;$n] = func( @m[$_;$n-1], @m[$_-1;$n], @m[$_-1;$n-1]) for 1 ..^ $n;
    @m[$n;$_] = func( @m[$n;$_-1], @m[$n-1;$_], @m[$n-1;$_-1]) for 1 ..  $n;
    @m;
}

# I am but mad north-northwest...
sub madd-n-nw(@m) { grow-matrix @m, -> $w, $n, $nw {  $n + $nw } }
sub madd-w-nw(@m) { grow-matrix @m, -> $w, $n, $nw {  $w + $nw } }
sub madd-w-n (@m) { grow-matrix @m, -> $w, $n, $nw {  $w + $n  } }

# Define 3 infinite sequences of Pascal matrices.
constant upper-tri = [1], &madd-w-nw ... *;
constant lower-tri = [1], &madd-n-nw ... *;
constant symmetric = [1], &madd-w-n  ... *;

show_m upper-tri[4];
show_m lower-tri[4];
show_m symmetric[4];

sub show_m (@m) {
my \n = @m.shape[0];
for ^n X ^n -> (\i, \j) {
    print @m[i;j].fmt("%{1+max(@m).chars}d");
    print "\n" if j+1 eq n;
}
say '';
}
#-------------------------------------------------------- 726 pascals-triangle-1
sub pascal {
    [1], { [0, |$_ Z+ |$_, 0] } ... *
}

.say for pascal[^10];
#-------------------------------------------------------- 727 pascals-triangle-2
constant @pascal = [1], -> $prev { [0, |$prev Z+ |$prev, 0] } ... *;

.say for @pascal[^10];
#-------------------------------------------------------- 728 pascals-triangle-3
multi sub pascal (1) { $[1] }
multi sub pascal (Int $n where 2..*) {
    my @rows = pascal $n - 1;
    |@rows, [0, |@rows[*-1] Z+ |@rows[*-1], 0 ];
}

.say for pascal 10;
#-------------------------------------------------------- 729 pascals-triangle-4
sub pascal ($n where $n >= 1) {
   say my @last = 1;
   for 1 .. $n - 1 -> $row {
       @last = 1, |map({ @last[$_] + @last[$_ + 1] }, 0 .. $row - 2), 1;
       say @last;
   }
}

pascal 10;
#--------------------------------------------------- 730 pascals-triangle-puzzle
# set up triangle
my $rows = 5;
my @tri = (1..$rows).map: { [ { x => 0, z => 0, v => 0, rhs => Nil } xx $_ ] }
@tri[0][0]<rhs> = 151;
@tri[2][0]<rhs> = 40;
@tri[4][0]<x> = 1;
@tri[4][1]<v> = 11;
@tri[4][2]<x> = 1;
@tri[4][2]<z> = 1;
@tri[4][3]<v> = 4;
@tri[4][4]<z> = 1;

# aggregate from bottom to top
for @tri - 2 ... 0 -> $row {
    for 0 ..^ @tri[$row] -> $col {
        @tri[$row][$col]{$_} = @tri[$row+1][$col]{$_} + @tri[$row+1][$col+1]{$_} for 'x','z','v';
    }
}

# find equations
my @eqn = gather for @tri -> $row {
    for @$row -> $cell {
        take [ $cell<x>, $cell<z>, $cell<rhs> - $cell<v> ] if defined $cell<rhs>;
    }
}

# print equations
say "Equations:";
say "  x +   z = y";
for @eqn -> [$x,$z,$y] { say "$x x + $z z = $y" }

# solve
my $f = @eqn[0][1] / @eqn[1][1];
@eqn[0][$_] -=  $f * @eqn[1][$_] for 0..2;
$f = @eqn[1][0] / @eqn[0][0];
@eqn[1][$_] -=  $f * @eqn[0][$_] for 0..2;

# print solution
say "Solution:";
my $x = @eqn[0][2] / @eqn[0][0];
my $z = @eqn[1][2] / @eqn[1][1];
my $y = $x + $z;
say "x=$x, y=$y, z=$z";
#-------------------------------------- 731 pathological-floating-point-problems
say '1st: Convergent series';
my @series = 2.FatRat, -4, { 111 - 1130 / $^v + 3000 / ( $^v * $^u ) } ... *;
for flat 3..8, 20, 30, 50, 100 -> $n {say "n = {$n.fmt("%3d")} @series[$n-1]"};

say "\n2nd: Chaotic bank society";
sub postfix:<!> (Int $n) { [*] 2..$n } # factorial operator
my $years = 25;
my $balance = sum map { 1 / FatRat.new($_!) }, 1 .. $years + 15; # Generate e-1  to sufficient precision with a Taylor series
put "Starting balance, \$(e-1): \$$balance";
for 1..$years -> $i { $balance = $i * $balance - 1 }
printf("After year %d, you will have \$%1.16g in your account.\n", $years, $balance);

print "\n3rd: Rump's example: f(77617.0, 33096.0) = ";
sub f (\a, \b) { 333.75*b⁶ + a²*( 11*a²*b² - b⁶ - 121*b⁴ - 2 ) + 5.5*b⁸ + a/(2*b) }
say f(77617.0, 33096.0).fmt("%0.16g");
#----------------------------------------------- 732 peaceful-chess-queen-armies
# recursively place the next queen
sub place ($board, $n, $m, $empty-square) {
    my $cnt;
    state (%seen,$attack);
    state $solution = False;

    # logic of regex: queen ( ... paths between queens containing only empty squares ... ) queen of other color
    once {
      my %Q = 'WBBW'.comb; # return the queen of alternate color
      my $re =
        '(<[WB]>)' ~                # 1st queen
        '[' ~
          join(' |',
            qq/<[$empty-square]>*/,
            map {
              qq/ . ** {$_}[<[$empty-square]> . ** {$_}]*/
            }, $n-1, $n, $n+1
          ) ~
        ']' ~
        '<{%Q{$0}}>';               # 2nd queen
      $attack = "rx/$re/".EVAL;
    }

    # return first result found (omit this line to get last result found)
    return $solution if $solution;

    # bail out if seen this configuration previously, or attack detected
    return if %seen{$board}++ or $board ~~ $attack;

    # success if queen count is m×2, set state variable and return from recursion
    $solution = $board and return if $m * 2 == my $queens = $board.comb.Bag{<W B>}.sum;

    # place the next queen (alternating colors each time)
    place( $board.subst( /<[◦•]>/, {<W B>[$queens % 2]}, :nth($cnt) ), $n, $m, $empty-square )
        while $board ~~ m:nth(++$cnt)/<[◦•]>/;

    return $solution
}

my ($m, $n) = @*ARGS == 2 ?? @*ARGS !! (4, 5);
my $empty-square = '◦•';
my $board = ($empty-square x $n**2).comb.rotor($n)>>.join[^$n].join: "\n";

my $solution = place $board, $n, $m, $empty-square;

say $solution
    ?? "Solution to $m $n\n\n{S:g/(\N)/$0 / with $solution}"
    !! "No solution to $m $n";
#-------------------------------------------------------------- 733 pell-numbers
my $pell = cache lazy 0, 1, * + * × 2 … *;
my $pell-lucas = lazy 2, 2, * + * × 2 … *;

my $upto = 20;

say   "First $upto Pell numbers:\n" ~ $pell[^$upto];

say "\nFirst $upto Pell-Lucas numbers:\n" ~ $pell-lucas[^$upto];

say "\nFirst $upto rational approximations of √2 ({sqrt(2)}):\n" ~
(1..$upto).map({ sprintf "%d/%d - %1.16f", $pell[$_-1] + $pell[$_], $pell[$_], ($pell[$_-1]+$pell[$_])/$pell[$_] }).join: "\n";

say "\nFirst $upto Pell primes:\n" ~ $pell.grep(&is-prime)[^$upto].join: "\n";

say "\nIndices of first $upto Pell primes:\n" ~ (^∞).grep({$pell[$_].is-prime})[^$upto];

say "\nFirst $upto Newman-Shank-Williams numbers:\n" ~ (^$upto).map({ $pell[2 × $_, 2 × $_+1].sum });

say "\nFirst $upto near isosceles right triangles:";
map -> \p { printf "(%d, %d, %d)\n", |($_, $_+1 given $pell[^(2 × p + 1)].sum), $pell[2 × p + 1] }, 1..$upto;
#--------------------------------------------------------- 734 perfect-numbers-1
sub is-perf($n) { $n == [+] grep $n %% *, 1 .. $n div 2 }

# used as
put ((1..Inf).hyper.grep: {.&is-perf})[^4];
#--------------------------------------------------------- 735 perfect-numbers-2
my @primes   = lazy (2,3,*+2 … Inf).grep: { .is-prime };
my @perfects = lazy gather for @primes {
    my $n = 2**$_ - 1;
    take $n * 2**($_ - 1) if $n.is-prime;
}

.put for @perfects[^12];
#----------------------------------------------------------- 736 perfect-shuffle
for 8, 24, 52, 100, 1020, 1024, 10000 -> $size {
    my ($n, @deck) = 1, |^$size;
    $n++ until [<] @deck = flat [Z] @deck.rotor: @deck/2;
    printf "%5d cards: %4d\n", $size, $n;
}
#------------------------------------------------------------ 737 periodic-table
my $b = 18;
my @offset = 16, 10, 10, (2×$b)+1, (-2×$b)-15, (2×$b)+1, (-2×$b)-15;
my @span   = flat ^8 Zxx <1 3 8 44 15 17 15 15>;

for <1 2 29 42 57 58 72 89 90 103> -> $n {
    printf "%3d: %2d, %2d\n", $n, map {$_+1}, ($n-1 + [+] @offset.head(@span[$n-1])).polymod($b).reverse;
}
#-------------------------------------------------------------- 738 perlin-noise
constant @p = flat { @_.sort.antipairs.Hash{@_} }(<
  😅😎📸👑👐✌ 💻✊😻💀💁🍃😲🤦☺🤙🔵🌕💎🌎🎶🖕⚠💆🌖🤭❣⚽➡😮☹😂
  🥰💣🤧🐷▶🌈😵🎁👼🦋🤐🙂💟🌔✅🌑🍒😟🌒👎🤪😃🍑👍😜❓💩📣😙😖🎵😝
  🐶😓🏃📌🔴🌺🌊😔🐾😀😌🤣👉💙🤠💦🍻🙋💿🤢🤑💓👶🌞🍎🌸🥀🌚🤷💍🖤🍊
  🎉⭐🎂😏☀🚩👆🐉🙈🐸💾😫🙇👏❄😗😹😴📍💸💞😬😍👌😒💋💗😶😛😪☎🎈
  🍀🚶🤝🥵💨💧☝ 🙁🌗😁💡💪🪐👈👋🙌🙆🙅🍺🤞🌹✔🍓✨😤😭🌌🌟🤗😥😘🙏
  💢🥳😆☄🌴😈😑🎼🤓😇💌😉😕🌱😚⚡💰❤🌘🧐❌💅💖💘👅💛🤘🤤😠😩💚💐
  🛰 🥂💃🤟🥺🌓🤯😱🤫🙊🖥 ✈😯😡😐🤮👇🌿🗣 🤨🥴✋🤬💕🌻😰🚀🌏😣😷💔😋
  😨👊🙃😞💝💥🌼🌷💫☕😄🧡🔥🤩🙄👻🤔💜🎤🌍⬇🏆🤲🕺💯😳👀🎊🚨🎀😊😢
>.join.comb) xx 2;

sub fade($_) { $_ * $_ * $_ * ($_ * ($_ * 6 - 15) + 10) }
sub lerp($t, $a, $b) { $a + $t * ($b - $a) }
sub grad($h is copy, $x, $y, $z) {
    $h +&= 15;
    my $u = $h < 8 ?? $x !! $y;
    my $v = $h < 4 ?? $y !! $h == 12|14 ?? $x !! $z;
    ($h +& 1 ?? -$u !! $u) + ($h +& 2 ?? -$v !! $v);
}

sub noise($x is copy, $y is copy, $z is copy) {
    my ($u, $v, $w) = map &fade, ($x, $y, $z) »-=«
    my ($X, $Y, $Z) = ($x, $y, $z)».floor »+&» 255;
    my ($AA, $AB) = @p[$_] + $Z, @p[$_ + 1] + $Z given @p[$X] + $Y;
    my ($BA, $BB) = @p[$_] + $Z, @p[$_ + 1] + $Z given @p[$X + 1] + $Y;
    lerp($w, lerp($v, lerp($u, grad(@p[$AA    ], $x    , $y    , $z     ),
                               grad(@p[$BA    ], $x - 1, $y    , $z     )),
                      lerp($u, grad(@p[$AB    ], $x    , $y - 1, $z     ),
                               grad(@p[$BB    ], $x - 1, $y - 1, $z     ))),
             lerp($v, lerp($u, grad(@p[$AA + 1], $x    , $y    , $z - 1 ),
                               grad(@p[$BA + 1], $x - 1, $y    , $z - 1 )),
                      lerp($u, grad(@p[$AB + 1], $x    , $y - 1, $z - 1 ),
                               grad(@p[$BB + 1], $x - 1, $y - 1, $z - 1 ))));
}

say noise 3.14, 42, 7;
#---------------------------------------------------------- 739 permutation-test
sub stats ( @test, @all ) {
    ([+] @test / +@test) - ([+] flat @all, (@test X* -1)) / @all - @test
}

my int @treated = <85 88 75 66 25 29 83 39 97>;
my int @control = <68 41 10 49 16 65 32 92 28 98>;
my int @all = flat @treated, @control;

my $base = stats( @treated, @all );

my atomicint @trials[3] = 0, 0, 0;

@all.combinations(+@treated).race.map: { @trials[ 1 + ( stats( $_, @all ) <=> $base ) ]⚛++ }

say 'Counts: <, =, > ', @trials;
say 'Less than    : %', 100 * @trials[0] / [+] @trials;
say 'Equal to     : %', 100 * @trials[1] / [+] @trials;
say 'Greater than : %', 100 * @trials[2] / [+] @trials;
say 'Less or Equal: %', 100 * ( [+] @trials[0,1] ) / [+] @trials;
#------------------------------------------------------------ 740 permutations-1
.say for <a b c>.permutations
#------------------------------------------------------------ 741 permutations-2
sub next_perm ( @a is copy ) {
    my $j = @a.end - 1;
    return Nil if --$j < 0 while @a[$j] after @a[$j+1];

    my $aj = @a[$j];
    my $k  = @a.end;
    $k-- while $aj after @a[$k];
    @a[ $j, $k ] .= reverse;

    my $r = @a.end;
    my $s = $j + 1;
    @a[ $r--, $s++ ] .= reverse while $r > $s;
    return @a;
}

.say for [<a b c>], &next_perm ...^ !*;
#------------------------------------------------------------ 742 permutations-3
sub permute(+@items) {
   my @seq := 1..+@items;
   gather for (^[*] @seq) -> $n is copy {
      my @order;
      for @seq {
         unshift @order, $n mod $_;
         $n div= $_;
      }
      my @i-copy = @items;
      take map { |@i-copy.splice($_, 1) }, @order;
   }
}
.say for permute( 'a'..'c' )
#------------------------------------------------------------ 743 permutations-4
.say for permutations(3);
#-------------------------------------------------- 744 permutations-by-swapping
sub insert($x, @xs) { ([flat @xs[0 ..^ $_], $x, @xs[$_ .. *]] for 0 .. +@xs) }
sub order($sg, @xs) { $sg > 0 ?? @xs !! @xs.reverse }

multi perms([]) {
    [] => +1
}

multi perms([$x, *@xs]) {
    perms(@xs).map({ |order($_.value, insert($x, $_.key)) }) Z=> |(+1,-1) xx *
}

.say for perms([0..2]);
#----------------------------------------------- 745 permutations-derangements-1
sub derangements(@l) {
    @l.permutations.grep(-> @p { none(@p Zeqv @l) })
}

sub prefix:<!>(Int $n) {
    (1, 0, 1, -> $a, $b { ($++ + 2) × ($b + $a) } ... *)[$n]
}

say 'derangements([1, 2, 3, 4])';
say derangements([1, 2, 3, 4]), "\n";

say 'n == !n == derangements(^n).elems';
for 0 .. 9 -> $n {
    say "!$n == { !$n } == { derangements(^$n).elems }"
}
#----------------------------------------------- 746 permutations-derangements-2
my @subfactorial = 1,0,{++$ × ($^a + $^b)}…*;

say "!$_: ",@subfactorial[$_] for |^10, 20, 200;
#---------------------------------------- 747 permutations-rank-of-a-permutation
use v6;

sub rank2inv ( $rank, $n = * ) {
    $rank.polymod( 1 ..^ $n );
}

sub inv2rank ( @inv ) {
    [+] @inv Z* [\*] 1, 1, * + 1 ... *
}

sub inv2perm ( @inv, @items is copy = ^@inv.elems ) {
    my @perm;
    for @inv.reverse -> $i {
        @perm.append: @items.splice: $i, 1;
    }
    @perm;
}

sub perm2inv ( @perm ) {     #not in linear time
    (
        { @perm[++$ .. *].grep( * < $^cur ).elems } for @perm;
    ).reverse;
}

for ^6 {
    my @row.push: $^rank;
    for ( *.&rank2inv(3) , &inv2perm, &perm2inv, &inv2rank )  -> &code {
        @row.push: code( @row[*-1] );
    }
    say @row;
}

my $perms =  4;      #100;
my $n     = 12;      #144;

say 'Via BigInt rank';
for ( ( ^([*] 1 .. $n) ).pick($perms) ) {
    say $^rank.&rank2inv($n).&inv2perm;
};

say 'Via inversion vectors';
for ( { my $i=0;  inv2perm (^++$i).roll xx $n } ... *  ).unique( with => &[eqv] ).[^$perms] {
    .say;
};

say 'Via Raku method pick';
for ( { [(^$n).pick(*)] } ... * ).unique( with => &[eqv] ).head($perms) {
    .say
};
#------------------------------------------- 748 permutations-with-repetitions-1
my @k = <a b c>;

.say for @k X @k;
#------------------------------------------- 749 permutations-with-repetitions-2
my @k = <a b c>;
my $n = 2;

.say for [X] @k xx $n;
#------------------------------------------- 750 permutations-with-repetitions-3
my @k = <a b c>;
my $n = 2;

say @k[.polymod: +@k xx $n-1] for ^@k**$n
#--------------------------------- 751 permutations-with-some-identical-elements
sub permutations-with-some-identical-elements ( @elements, @reps = () ) {
    with @elements { (@reps ?? flat $_ Zxx @reps !! flat .keys.map(*+1) Zxx .values).permutations».join.unique }
 }

for (<2 1>,), (<2 3 1>,), (<A B C>, <2 3 1>), (<🦋 ⚽ 🙄>, <2 2 1>) {
    put permutations-with-some-identical-elements |$_;
    say '';
}
#-------------------------------------------------------- 752 permuted-multiples
put display (^∞).map(1 ~ *).race.map( -> \n { next unless [eq] (2,3,4,5,6).map: { (n × $_).comb.sort.join }; n } ).first;

sub display ($n) { join "\n", " n: $n", (2..6).map: { "×$_: {$n×$_}" } }
#-------------------------------------------------------- 753 pernicious-numbers
sub is-pernicious(Int $n --> Bool) {
    is-prime [+] $n.base(2).comb;
}

say (grep &is-pernicious, 0 .. *)[^25];
say grep &is-pernicious, 888_888_877 .. 888_888_888;
#----------------------------------------------------- 754 pfaffian-and-hfaffian
# 20250704 Raku programming solution

sub is_antisymmetric(@a) {
   my $n = @a.elems;
   for ^$n -> $i {
      return False if @a[$i][$i] != 0;  # Diagonal elements must be zero
      for $i+1..^$n -> $j { return False if @a[$i][$j] != -@a[$j][$i] }
   }
   return True;
}

sub factorial(Int $n --> Int) {
   state @cache = 1;
   @cache[$_] //= @cache[$_ - 1] * $_ for @cache.elems .. $n;
   return @cache[$n]
}

sub spermutations(Int $n, Bool :$pfaffian = True) {
   sub permutation-sign(@p) {
      my $inversions = 0;
      for ^@p -> $i { for $i+1..^@p -> $j { $inversions++ if @p[$i] > @p[$j] } }
      return $inversions %% 2 ?? 1 !! -1
   }
   return lazy (0..$n).permutations.map: -> @p {
      [@p, $pfaffian ?? permutation-sign(@p) !! 1]
   }
}

sub faffian(@a, Bool $pfaffian) {
   my $size = @a.elems;
   unless $size %% 2 {
      say "Matrix size must be even for {$pfaffian ?? "P" !! "H"}faffian.";
      return Nil;
   }
   unless is_antisymmetric(@a) {
      say "The {$pfaffian ?? "P" !! "H"}faffian does not support non-antisymmetric matrices yet.\n";
      return Nil;
   }

   my $n = $size div 2;
   my $normalization = 1 / (2 ** $n * factorial($n));
   my $sum = 0;
   my @perms = spermutations(2 * $n - 1, :$pfaffian);

   for @perms -> @ss {
      my @sigma = @ss[0];
      my $sign = $pfaffian ?? @ss[1] !! 1;
      my $prod = 1;
      for ^$n -> $i { $prod *= @a[@sigma[2 * $i]][@sigma[2 * $i + 1]] }
      $sum += $sign * $prod;
   }
   return $sum * $normalization;
}

sub faffian_recursive(@a, Bool :$pfaffian = True) {
   my $n = @a.elems;

   unless $n %% 2 {
      say "Matrix size must be even for {$pfaffian ?? 'Pfaffian' !! 'Hfaffian'}.";
      return Nil;
   }

   unless is_antisymmetric(@a) {
      say "The {$pfaffian ?? 'Pfaffian' !! 'Hfaffian'} does not support non-antisymmetric matrices yet.\n";
      return Nil;
   }

   return 0 unless $pfaffian; # Antisymmetric Hfaffian is always 0

   return 1 if $n == 0;  # Recursive Pfaffian computation
   return @a[0][1] if $n == 2;

   my $result = 0;
   for 1..^$n -> $j {
      next if @a[0;$j]  == 0;

      # Build submatrix excluding row/col 0 and $j
      my @rows = (1..^$n).grep({ $_ != $j });
      my @submatrix = @rows.map: -> $i {
         my @cols = (1..^$n).grep({ $_ != $j });
         [ @a[$i][@cols] ]
      };

      my $sign = ($j + 1) %% 2 ?? -1 !! 1;
      $result += $sign * @a[0][$j] * faffian_recursive(@submatrix, :pfaffian);
   }
   return $result;
}

# Example matrices
my @matrices = (
   [[0, 1], [-1, 0]], # Tiny matrix (2 x 2)

   [ [0, 1, -1, 2],   # Small matrix (4 x 4)
     [-1, 0, 3, -4],
     [1, -3, 0, 5],
     [-2, 4, -5, 0] ],

   [ [1, 2, 3, 4, 5, 6], # Symmetric matrix (6 x 6)
     [2, 7, 8, 9, 10, 11],
     [3, 8, 12, 13, 14, 15],
     [4, 9, 13, 16, 17, 18],
     [5, 10, 14, 17, 19, 20],
     [6, 11, 15, 18, 20, 21] ],

   [ [0, 1, 2, 3, 4, 5, 6, 7, 8, 9], # Larger matrix (10 x 10)
     [-1, 0, 8, 7, 6, 5, 4, 3, 2, 1],
     [-2, -8, 0, 1, 2, 3, 4, 5, 6, 7],
     [-3, -7, -1, 0, 6, 5, 4, 3, 2, 1],
     [-4, -6, -2, -6, 0, 1, 2, 3, 4, 5],
     [-5, -5, -3, -5, -1, 0, 4, 3, 2, 1],
     [-6, -4, -4, -4, -2, -4, 0, 1, 2, 3],
     [-7, -3, -5, -3, -3, -3, -1, 0, 2, 1],
     [-8, -2, -6, -2, -4, -2, -2, -2, 0, 1],
     [-9, -1, -7, -1, -5, -1, -3, -1, -1, 0] ]
);

for @matrices -> @m {
   for @m -> @row { say "| ", @row.map({ sprintf("%3d", $_) }).join(" "), " |" }
   say "";

   my $pf = faffian_recursive(@m, :pfaffian);
   my $hf = faffian_recursive(@m, :!pfaffian);
   printf "Pfaffian: %.1f\n", $pf if $pf.defined;
   printf "Hfaffian: %.1f\n\n", $hf if $hf.defined;
}
#---------------------------------------------------------- 755 phrase-reversals
my $s = 'rosetta code phrase reversal';

put 'Input               : ', $s;
put 'String reversed     : ', $s.flip;
put 'Each word reversed  : ', $s.words».flip;
put 'Word-order reversed : ', $s.words.reverse;
#--------------------------------------------------------- 756 pierpont-primes-2
sub smooth-numbers (*@list) {
    cache my \Smooth := gather {
        my %i = (flat @list) Z=> (Smooth.iterator for ^@list);
        my %n = (flat @list) Z=> 1 xx *;

        loop {
            take my $n := %n{*}.min;

            for @list -> \k {
                %n{k} = %i{k}.pull-one * k if %n{k} == $n;
            }
        }
    }
}

# Testing various smooth numbers

for   'OEIS: A092506 - 2 + Fermat primes:',        (2),        1,  6,
    "\nOEIS: A000668 - Mersenne primes:",          (2),       -1, 10,
    "\nOEIS: A005109 - Pierpont primes 1st:",      (2,3),      1, 20,
    "\nOEIS: A005105 - Pierpont primes 2nd:",      (2,3),     -1, 20,
    "\nOEIS: A077497:",                            (2,5),      1, 20,
    "\nOEIS: A077313:",                            (2,5),     -1, 20,
    "\nOEIS: A002200 - (\"Hamming\" primes 1st):", (2,3,5),    1, 20,
    "\nOEIS: A293194 - (\"Hamming\" primes 2nd):", (2,3,5),   -1, 20,
    "\nOEIS: A077498:",                            (2,7),      1, 20,
    "\nOEIS: A077314:",                            (2,7),     -1, 20,
    "\nOEIS: A174144 - (\"Humble\" primes 1st):",  (2,3,5,7),  1, 20,
    "\nOEIS: A347977 - (\"Humble\" primes 2nd):",  (2,3,5,7), -1, 20,
    "\nOEIS: A077499:",                            (2,11),     1, 20,
    "\nOEIS: A077315:",                            (2,11),    -1, 20,
    "\nOEIS: A173236:",                            (2,13),     1, 20,
    "\nOEIS: A173062:",                            (2,13),    -1, 20

  -> $title, $primes, $add, $count {

      say "$title smooth \{$primes\} {$add > 0 ?? '+' !! '-'} 1 ";
      put smooth-numbers(|$primes).map( * + $add ).grep( *.is-prime )[^$count]
}
#----------------------------------------------------------------- 757 pig-latin
# 20260601 Raku programming solution

my token word { <:Letter>+ [ "'" <:Letter>+ ]* }

sub is-vowel(Str $c --> Bool) { so $c.lc eq any <a e i o u> }

sub first-vowel-pos(Str $w --> Int) {
   my @ch = $w.comb;
   for @ch.kv -> $i, $ch {
      # Initial y is treated as a consonant
      if $ch.lc eq 'y' { $i > 0 ?? return $i !! next }
      if is-vowel($ch) {
         # handle "qu" as part of the initial consonant cluster
         $ch.lc eq 'u' && $i > 0 && @ch[$i-1].lc eq 'q' ?? ( next ) !! return $i
      }
   }
   return -1
}

sub pig-word(Str $w --> Str) {
   my ($all-caps, $init-cap) = $w Xeq $w.uc, $w.tc;
   my $suffix    = $all-caps ?? 'AY'  !! 'ay';
   my $v-suffix  = $all-caps ?? 'WAY' !! 'way';

   my $pos = first-vowel-pos($w);

   if $pos < 0 { return $w ~ $suffix } # No usable vowel: append ay/AY directly

   if $pos == 0 { return $w ~ $v-suffix } # Starts with vowel

   my ($head, $tail) = do given $w { .substr(0, $pos), .substr($pos) }

   # For capitalised words, move the consonant cluster to the end
   # in lowercase, then capitalise the new first letter.
   if $init-cap && !$all-caps { return ($tail ~ $head.lc ~ $suffix).tc }

   return $tail ~ $head ~ $suffix
}

sub pig-latin(Str $text --> Str) {
   $text.subst( :g, / $<w>=<&word> $<digits>=\d* /, -> $/ {
      pig-word(~$<w>) ~ ~$<digits> // ''
   })
}

for
   ""                                , "",
   " "                               , " ",
   "123456!"                         , "123456!",
   "Stop! In the name of Wuv!"       , "Opstay! Inway ethay amenay ofway Uvway!",
   "My word!"                        , "Ymay ordway!",
   "ESA JAXA NASA"                   , "ESAWAY AXAJAY ASANAY",
   "this is 'quoted'"                , "isthay isway 'otedquay'",
   "MgClBr (Na,K)AlSiO4"             , "MgClBray (Anay,KAY)AlSiOway4",
   "pig  latin"                      , "igpay  atinlay",
   "rosetta  code"                   , "osettaray  odecay",
   "the quick brown fox jumps over the lazy dog"
                                     , "ethay ickquay ownbray oxfay umpsjay overway ethay azylay ogday",
   "The Quick Brown Fox Jumps Over The Lazy Dog"
                                     , "Ethay Ickquay Ownbray Oxfay Umpsjay Overway Ethay Azylay Ogday",
   "by the way"                      , "ybay ethay ayway",
   "ytterbium"                       , "erbiumyttay",
   "banana"                          , "ananabay",
   "BaNaNa"                          , "ANaNabay",
   "bAnAnA"                          , "AnAnAbay",
   "BANANA"                          , "ANANABAY",
   "pig"                             , "igpay",
   "black"                           , "ackblay",
   "a"                               , "away",
   "open"                            , "openway",
   "hello world"                     , "ellohay orldway",
   "Hello, World!"                   , "Ellohay, Orldway!",
   "o'hare O'HARE o'hare don't"      , "o'hareway O'HAREWAY o'hareway on'tday"
-> $input, $expected {
   say ( my $actual = pig-latin($input) ) eq $expected
      ?? "ok     [$input] -> [$actual]"
      !! "not ok [$input]\n       got: [$actual]\n  expected: [$expected]";
}
#------------------------------------------------------------------ 758 piprimes
my @pi = (1..*).map: { state $pi = 0; $pi += .is-prime };

say @pi[^(@pi.first: * >= 22, :k)].batch(10)».fmt('%2d').join: "\n";
#----------------------------------------------------------- 759 playfair-cipher
# Instantiate a specific encoder/decoder.

sub playfair( $key,
              $from = 'J',
	      $to = $from eq 'J' ?? 'I' !! ''
) {

    sub canon($str) { $str.subst(/<-alpha>/,'', :g).uc.subst(/$from/,$to,:g) }

    # Build 5x5 matrix.
    my @m = canon($key ~ ('A'..'Z').join).comb.unique.map:
     -> $a,$b,$c,$d,$e { [$a,$b,$c,$d,$e] }

    # Pregenerate all forward translations.
    my %ENC = gather {
	# Map pairs in same row.
	for @m -> @r {
	    for ^@r X ^@r -> (\i,\j) {
		next if i == j;
		take @r[i] ~ @r[j] => @r[(i+1)%5] ~ @r[(j+1)%5];
	    }
	}

	# Map pairs in same column.
	for ^5 -> $c {
	    my @c = @m.map: *.[$c];
	    for ^@c X ^@c -> (\i,\j) {
		next if i == j;
		take @c[i] ~ @c[j] => @c[(i+1)%5] ~ @c[(j+1)%5];
	    }
	}

	# Map pairs with cross-connections.
	for ^5 X ^5 X ^5 X ^5 -> (\i1,\j1,\i2,\j2) {
	    next if i1 == i2 or j1 == j2;
	    take @m[i1][j1] ~ @m[i2][j2] => @m[i1][j2] ~ @m[i2][j1];
	}
    }

    # Generate reverse translations.
    my %DEC = %ENC.invert;

    return
        sub enc($red) {
	    my @list = canon($red).comb(/(.) (.?) <?{ $1 ne $0 }>/);
	    ~@list.map: { .chars == 1 ?? %ENC{$_~'X'} !! %ENC{$_} }
	},
	sub dec($black) {
	    my @list = canon($black).comb(/../);
	    ~@list.map: { %DEC{$_} }
	}
}

my (&encode,&decode) = playfair 'Playfair example';

my $orig = "Hide the gold in...the TREESTUMP!!!";
say " orig:\t$orig";

my $black = encode $orig;
say "black:\t$black";

my $red = decode $black;
say "  red:\t$red";
#--------------------------------------------------- 760 pointers-and-references
my $foo = 42;    # place a reference to 42 in $foo's item container
$foo++;          # deref $foo name, then increment the container's contents to 43
$foo.say;        # deref $foo name, then $foo's container, and call a method on 43.

$foo := 42;      # bind a direct ref to 42
$foo++;          # ERROR, cannot modify immutable value

my @bar = 1,2,3; # deref @bar name to array container, then set its values
@bar»++;         # deref @bar name to array container, then increment each value with a hyper
@bar.say;        # deref @bar name to array container, then call say on that, giving 2 3 4

@bar := (1,2,3); # bind name directly to a List
@bar»++;         # ERROR, parcels are not mutable
#------------------------------------------------------- 761 poker-hand-analyser
use v6;

grammar PokerHand {

    # Raku Grammar to parse and rank 5-card poker hands
    # E.g. PokerHand.parse("2♥ 3♥ 2♦ 3♣ 3♦");
    # 2013-12-21: handle 'joker' wildcards; maximum of two

    rule TOP {
         :my %*PLAYED;
         { %*PLAYED = () }
         [ <face-card> | <joker> ]**5
    }

    token face-card {<face><suit> <?{
            my $card = ~$/.lc;
            # disallow duplicates
            ++%*PLAYED{$card} <= 1;
       }>
    }

    token joker {:i 'joker' <?{
            my $card = ~$/.lc;
            # allow two jokers in a hand
            ++%*PLAYED{$card} <= 2;
        }>
    }

    token face {:i <[2..9 jqka]> | 10 }
    token suit {<[♥ ♦ ♣ ♠]>}
}

class PokerHand::Actions {
    method TOP($/) {
        my UInt @n    = n-of-a-kind($/);
        my $flush     = 'flush' if flush($/);
        my $straight  = 'straight' if straight($/);
        make rank(@n[0], @n[1], $flush, $straight);
    }
    multi sub rank(5,*@)                    { 'five-of-a-kind' }
    multi sub rank($,$,'flush','straight')  { 'straight-flush' }
    multi sub rank(4,*@)                    { 'four-of-a-kind' }
    multi sub rank($,$,'flush',$)           { 'flush' }
    multi sub rank($,$,$,'straight')        { 'straight' }
    multi sub rank(3,2,*@)                  { 'full-house' }
    multi sub rank(3,*@)                    { 'three-of-a-kind' }
    multi sub rank(2,2,*@)                  { 'two-pair' }
    multi sub rank(2,*@)                    { 'one-pair' }
    multi sub rank(*@)                      { 'high-card' }

    sub n-of-a-kind($/) {
        my %faces := bag @<face-card>.map: -> $/ {~$<face>.lc};
        my @counts = %faces.values.sort.reverse;
        @counts[0] += @<joker>;
        return @counts;
    }

    sub flush($/) {
        my @suits = unique @<face-card>.map: -> $/ {~$<suit>};
        return +@suits == 1;
    }

    sub straight($/) {
        # allow both ace-low and ace-high straights
        constant @Faces = [ "a 2 3 4 5 6 7 8 9 10 j q k a".split: ' ' ];
        constant @Possible-Straights = [ (4 ..^ @Faces).map: { set @Faces[$_-4 .. $_] } ];

        my $faces = set @<face-card>.map: -> $/ {~$<face>.lc};
        my $jokers = +@<joker>;

        return ?( @Possible-Straights.first: { +($faces ∩ $_) + $jokers == 5 } );
    }
}

my PokerHand::Actions $actions .= new;

for ("2♥ 2♦ 2♣ k♣ q♦",   # three-of-a-kind
     "2♥ 5♥ 7♦ 8♣ 9♠",   # high-card
     "a♥ 2♦ 3♣ 4♣ 5♦",   # straight
     "2♥ 3♥ 2♦ 3♣ 3♦",   # full-house
     "2♥ 7♥ 2♦ 3♣ 3♦",   # two-pair
     "2♥ 7♥ 7♦ 7♣ 7♠",   # four-of-a-kind
     "10♥ j♥ q♥ k♥ a♥",  # straight-flush
     "4♥ 4♠ k♠ 5♦ 10♠",  # one-pair
     "q♣ 10♣ 7♣ 6♣ 4♣",  # flush
     "a♥ a♥ 3♣ 4♣ 5♦",   # invalid
     ## EXTRA CREDIT ##
     "joker  2♦  2♠  k♠  q♦",  # three-of-a-kind
     "joker  5♥  7♦  8♠  9♦",  # straight
     "joker  2♦  3♠  4♠  5♠",  # straight
     "joker  3♥  2♦  3♠  3♦",  # four-of-a-kind
     "joker  7♥  2♦  3♠  3♦",  # three-of-a-kind
     "joker  7♥  7♦  7♠  7♣",  # five-of-a-kind
     "joker  j♥  q♥  k♥  A♥",  # straight-flush
     "joker  4♣  k♣  5♦ 10♠",  # one-pair
     "joker  k♣  7♣  6♣  4♣",  # flush
     "joker  2♦ joker  4♠  5♠",  # straight
     "joker  Q♦ joker  A♠ 10♠",  # straight
     "joker  Q♦ joker  A♦ 10♦",  # straight-flush
     "joker  2♦ 2♠  joker  q♦",  # four of a kind
    ) {
    my $rank = do with PokerHand.parse($_, :$actions) {
        .ast;
    }
    else {
        'invalid';
    }
    say "$_: $rank";
}
#---------------------------------------------------------- 762 polymorphic-copy
my Cool $x = 22/7 but role Fink { method brag { say "I'm a cool {self.WHAT.raku}!" }}
my Cool $y = $x.clone;
$y.brag;
#-------------------------------------------------- 763 polynomial-long-division
sub poly_long_div ( @n is copy, @d ) {
    return [0], |@n if +@n < +@d;

    my @q = gather while +@n >= +@d {
        @n = @n Z- flat ( ( @d X* take ( @n[0] / @d[0] ) ), 0 xx * );
        @n.shift;
    }

    return @q, @n;
}

sub xP ( $power ) { $power>1 ?? "x^$power" !! $power==1 ?? 'x' !! '' }
sub poly_print ( @c ) { join ' + ', @c.kv.map: { $^v ~ xP( @c.end - $^k ) } }

my @polys = [ [     1, -12, 0, -42 ], [    1, -3 ] ],
            [ [     1, -12, 0, -42 ], [ 1, 1, -3 ] ],
            [ [          1, 3,   2 ], [    1,  1 ] ],
            [ [ 1, -4,   6, 5,   3 ], [ 1, 2,  1 ] ];

say '<math>\begin{array}{rr}';
for @polys -> [ @a, @b ] {
    printf Q"%s , & %s \\\\\n", poly_long_div( @a, @b ).map: { poly_print($_) };
}
say '\end{array}</math>';
#--------------------------------------------- 764 polynomial-synthetic-division
sub synthetic-division ( @numerator, @denominator ) {
    my @result = @numerator;
    my $end    = @denominator.end;

    for ^(@numerator-$end) -> $i {
        @result[$i]    /= @denominator[0];
        @result[$i+$_] -= @denominator[$_] * @result[$i] for 1..$end;
    }

    'quotient' => @result[0 ..^ *-$end],
    'remainder' => @result[*-$end .. *];
}

my @tests =
[1, -12, 0, -42], [1, -3],
[1, 0, 0, 0, -2], [1, 1, 1, 1];

for @tests -> @n, @d {
    my %result = synthetic-division( @n, @d );
    say "[{@n}] / [{@d}] = [%result<quotient>], remainder [%result<remainder>]";
}
#-------------------------------------------------------- 765 population-count-1
sub population-count(Int $n where * >= 0) { [+] $n.base(2).comb }

say map &population-count, 3 «**« ^30;
say "Evil: ", (grep { population-count($_) %% 2 }, 0 .. *)[^30];
say "Odious: ", (grep { population-count($_)  % 2 }, 0 .. *)[^30];
#---------------------------------------------------- 766 posit-numbers-encoding
=begin LICENSE
Copyright © 2017 John L . Gustafson

Permission is hereby granted, free of charge to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction including without limitation the rights to use copy, modify, merge, publish, distribute, sub - license, and/or sell copies of the Software and to permit persons to whom the Software is furnished to do so, subject to the following conditions :

This copyright and permission notice shall be included in all copies or substantial portions of the software .

THE SOFTWARE IS PROVIDED "AS IS" WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT . IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES, OR OTHER LIABILITY, WHETHER IN AN ACTION OR CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE .
=end LICENSE

# L<https://posithub.org/docs/Posits4.pdf>
constant nbits = 8;
constant es    = 2;
constant npat  = 2**nbits;
constant useed = 2**2**es;
constant minpos = useed**(-nbits + 2);
constant maxpos = useed**(+nbits - 2);
constant qsize  = 2**((nbits-2)*2**(es+2)+5).log2.ceiling;
constant qextra = qsize - (nbits - 2)*2**(es+2);

constant posit-range = ^npat;
subset posit of UInt where posit-range;

sub x2p(Real $x --> posit) {

  # first, take care of the two exceptional values
  return 0 if $x == 0;
  return npat div 2 if $x == Inf;

  # working variables
  my ($i, $p, $e, $y) = $, $, 2**(es - 1), $x.abs;


  if $y ≥ 1 { # north-east quadrant
    ($p, $i) = 1, 2;
    # Shift in 1s from the right and scale down.
    ($p, $y, $i) = 2*$p+1, $y/useed, $i+1 while $y ≥ useed && $i ≤ nbits;
    $p *= 2; $i++;
  } else { # south-east quadrant
    ($p, $i) = 0, 1;
    # Shift in 0 s from the right and scale up.
    ($y, $i) = $y*useed, $i+1 while $y < 1 && $i ≤ nbits;
    if $i ≥ nbits {
      $p = 2; $i = nbits + 1;
    } else { $p = 1; $i++; }
  }
  # Extract exponent bits:
  while $e > 1/2 and $i ≤ nbits {
    $p *= 2;
    if $y ≥ 2**$e { $y /= 2**$e; $p++ }
    $e /= 2;
    $i++;
  }
  $y--;
  # Fraction bits; substract the hidden bit
  while $y > 0 and $i ≤ nbits {
    $y *= 2;
    $p = 2*$p + $y.floor;
    $y -= $y.floor;
    $i++
  }
  $p *= 2**(nbits+1-$i);
  $i++;

  # Round to nearest; tie goes to even
  $i = $p +& 1;
  $p = ($p/2).floor;
  $p = $i == 0 ?? $p !!
       $y == 0|1 ?? $p + $p+&1 !!
       $p + 1;

  # Simulate 2's complement
  ($x < 0 ?? npat - $p !! $p) mod npat;

}

say x2p pi;
#-------- 767 positive-decimal-integers-with-the-digit-1-occurring-exactly-twice
say display 10, '%3d', ^1000 .grep: { .comb.Bag{'1'} == 2 };

sub display {
    cache $^c;
    "{+$c} matching:\n" ~ $c.batch($^a)».fmt($^b).join: "\n"
}
#--------------------------------------------------------------- 768 power-set-1
sub powerset(Set $s) { $s.combinations.map(*.Set).Set }
say powerset set <a b c d>;
#--------------------------------------------------------------- 769 power-set-2
.say for <a b c d>.combinations
#---------------------------------------------------------- 770 powerful-numbers
sub super (\x) { x.trans([<0123456789>.comb] => [<⁰¹²³⁴⁵⁶⁷⁸⁹>.comb]) }

sub is-square-free (Int \n) {
    constant @p = ^100 .map: { next unless .is-prime; .² };
    for @p -> \p { return False if n %% p }
    True
}

sub powerfuls (\n, \k, \enumerate = False) {
    my @powerful;
    p(1, 2*k - 1);
    sub p (\m, \r) {
        if r < k {
            enumerate ?? @powerful.push(m) !! ++@powerful[m - 1  ?? (m - 1).chars !! 0];
            return
        }
        for 1 .. ((n / m) ** (1/r) + .0001).Int -> \v {
            if r > k {
                next unless is-square-free(v);
                next unless m gcd v == 1;
            }
            p(m * v ** r, r - 1)
        }
    }
    @powerful;
}

put "Count and first and last five enumerated n-powerful numbers in 10ⁿ:";
for 2..10 -> \k {
    my @powerful = sort powerfuls(10**k, k, True);
    printf "%2d %2s-powerful numbers <= 10%-2s: %s ... %s\n", +@powerful, k, super(k),
           @powerful.head(5).join(", "), @powerful.tail(5).join(", ");
}

put "\nCounts in each order of magnitude:";
my $top = 9;
for 2..10 -> \k {
    printf "%2s-powerful numbers <= 10ⁿ (where 0 <= n <= %d): ", k, $top+k;
    quietly say join ', ', [\+] powerfuls(10**($top + k), k);
}
#---------------------------------------------------------- 771 price-fraction-1
sub price-fraction ($n where 0..1) {
    when $n < 0.06 { 0.10 }
    when $n < 0.11 { 0.18 }
    when $n < 0.16 { 0.26 }
    when $n < 0.21 { 0.32 }
    when $n < 0.26 { 0.38 }
    when $n < 0.31 { 0.44 }
    when $n < 0.36 { 0.50 }
    when $n < 0.41 { 0.54 }
    when $n < 0.46 { 0.58 }
    when $n < 0.51 { 0.62 }
    when $n < 0.56 { 0.66 }
    when $n < 0.61 { 0.70 }
    when $n < 0.66 { 0.74 }
    when $n < 0.71 { 0.78 }
    when $n < 0.76 { 0.82 }
    when $n < 0.81 { 0.86 }
    when $n < 0.86 { 0.90 }
    when $n < 0.91 { 0.94 }
    when $n < 0.96 { 0.98 }
    default        { 1.00 }
}

while prompt("value: ") -> $value {
    say price-fraction(+$value);
}
#---------------------------------------------------------- 772 price-fraction-2
my @price = map *.value, flat
    ( 0 ..^ 6  X=> 0.10),
    ( 6 ..^ 11 X=> 0.18),
    (11 ..^ 16 X=> 0.26),
    (16 ..^ 21 X=> 0.32),
    (21 ..^ 26 X=> 0.38),
    (26 ..^ 31 X=> 0.44),
    (31 ..^ 36 X=> 0.50),
    (36 ..^ 41 X=> 0.54),
    (41 ..^ 46 X=> 0.58),
    (46 ..^ 51 X=> 0.62),
    (51 ..^ 56 X=> 0.66),
    (56 ..^ 61 X=> 0.70),
    (61 ..^ 66 X=> 0.74),
    (66 ..^ 71 X=> 0.78),
    (71 ..^ 76 X=> 0.82),
    (76 ..^ 81 X=> 0.86),
    (81 ..^ 86 X=> 0.90),
    (86 ..^ 91 X=> 0.94),
    (91 ..^ 96 X=> 0.98),
    (96 ..^101 X=> 1.00),
;

while prompt("value: ") -> $value {
    say @price[$value * 100] // "Out of range";
}
#---------------------------------------------------------- 773 price-fraction-3
my $table = q:to/END/;
>=  0.00  <  0.06  :=  0.10
>=  0.06  <  0.11  :=  0.18
>=  0.11  <  0.16  :=  0.26
>=  0.16  <  0.21  :=  0.32
>=  0.21  <  0.26  :=  0.38
>=  0.26  <  0.31  :=  0.44
>=  0.31  <  0.36  :=  0.50
>=  0.36  <  0.41  :=  0.54
>=  0.41  <  0.46  :=  0.58
>=  0.46  <  0.51  :=  0.62
>=  0.51  <  0.56  :=  0.66
>=  0.56  <  0.61  :=  0.70
>=  0.61  <  0.66  :=  0.74
>=  0.66  <  0.71  :=  0.78
>=  0.71  <  0.76  :=  0.82
>=  0.76  <  0.81  :=  0.86
>=  0.81  <  0.86  :=  0.90
>=  0.86  <  0.91  :=  0.94
>=  0.91  <  0.96  :=  0.98
>=  0.96  <  1.01  :=  1.00
END

my @price;

for $table.lines {
    /:s '>='  (\S+)  '<'  (\S+)  ':='  (\S+)/;
    @price[$0*100 ..^ $1*100] »=» +$2;
}

while prompt("value: ") -> $value {
    say @price[$value * 100] // "Out of range";
}
#--------------------------------------------- 774 primality-by-trial-division-2
my @primes = 2, 3, 5, -> $p { ($p+2, $p+4 ... &prime)[*-1] } ... *;
my @isprime = False,False;   # 0 and 1 are not prime by definition
sub prime($i) {
    my \limit = $i.sqrt.floor;
    @isprime[$i] //= so ($i %% none @primes ...^ { $_ > limit })
}

say "$_ is{ "n't" x !prime($_) } prime." for 1 .. 100;
#---------------------------------------------- 775 primality-by-wilsons-theorem
sub postfix:<!> (Int $n) { (constant f = 1, |[\*] 1..*)[$n] }

sub is-wilson-prime (Int $p where * > 1) { (($p - 1)! + 1) %% $p }

# Pre initialize factorial routine (not thread safe)
9000!;

# Testing
put '   p  prime?';
printf("%4d  %s\n", $_, .&is-wilson-prime) for 2, 3, 9, 15, 29, 37, 47, 57, 67, 77, 87, 97, 237, 409, 659;

my $wilsons = (2,3,*+2…*).hyper.grep: &is-wilson-prime;

put "\nFirst 120 primes:";
put $wilsons[^120].rotor(20)».fmt('%3d').join: "\n";

put "\n1000th through 1015th primes:";
put $wilsons[999..1014];
#----------------------------------------------------- 776 prime-groups-counting
sub prime-group-count ($_) {
   +(.ords.sort.reverse.combinations(4).grep: {
        next if .[0]-.[*-1] != 7;
        .rotor(2 => -1).map({[-] $_}).List eqv (2,3,2)
   })
   +(.ords.combinations(3).grep: { all .combinations(2).map: { ([-] $_).abs.is-prime } })
   +(.ords.combinations(2).grep: { ([-] $_).abs.is-prime })
}

# Testing: the two every other entry has, and all ASCII printable characters
say "$_ ⇒ ", .&prime-group-count for 'abcdef', 'abcdefgh', 'abcdefghijklmnopqrstuvwxyz', (32..126).chrs.join;

# User input
loop {
   my $word = prompt "\nEnter some text:> ";
   exit unless $word.chars;
   say "$word ⇒ ", prime-group-count $word;
}
#-------------------------------------------------------------- 777 prime-groups
sub prime-groups ($word, $size = 3) {
   my $group;
   $word.ords.combinations($size).map: { $group = .chrs and last if all .combinations(2).map: { ([-] $_).abs.is-prime } }
   $group // 'Not found.'
}

my @words = <riOtjuoq wjtiOxtj akwercjoeiJ Weej Aek jjgja>;

say "Three character prime groups:";
say .&prime-groups(3) for @words;

say "\nTwo character prime groups:";
say .&prime-groups(2) for @words;
#------------------------------------------- 778 prime-numbers-which-contain-123
my @p123 = ^∞ .grep: { (.contains: 123) && .is-prime };

put display @p123[^(@p123.first: * > 1e5, :k)];

put "\nCount up to 1e6: ", ~ +@p123[^(@p123.first: * > 1e6, :k)];

sub display ($list, :$cols = 10, :$fmt = '%6d', :$title = "{+$list} matching:\n" )   {
    cache $list;
    $title ~ $list.batch($cols)».fmt($fmt).join: "\n"
}
#--------------------- 779 prime-numbers-whose-neighboring-pairs-are-tetraprimes
# 20230721 Raku programming solution

my @primes = (2..1e7).grep: *.is-prime; # cannot do lazy here

sub median { # based on https://rosettacode.org/wiki/Averages/Median#Raku
   return { ( .[(*-1) div 2] + .[* div 2] ) / 2 }(@_) # for already sorted
}

sub isTetraPrime ($n is copy) { # is cached {
   my ($count,$prevFact) = 0, 1;
   for @primes -> \p {
      my $limit = p * p;
      if $count == 0 {
         $limit = $limit * $limit
      } elsif $count == 1 {
         $limit *= p
      }
      if $limit <= $n {
         while $n %% p {
            return False if ( $count == 4 or p == $prevFact );
            $count++;
            $n div= p;
            $prevFact = p
         }
      } else {
         last
      }
   }
   if $n > 1 {
      return False if ( $count == 4 or $n == $prevFact );
      $count++
   }
   return $count == 4
}

my ( $j, @tetras1, @tetras2, $sevens1, $sevens2 ) = 1e5;

my \highest7 = @primes.[*-1];
my \highest6 = @primes.first: * < 1e6, :end;
my \highest5 = @primes.first: * < 1e5, :end;

for @primes -> \p {
   if isTetraPrime p-1 and isTetraPrime p-2 {
      @tetras1.push: p;
      $sevens1++ if ( (p-1) %% 7 or (p-2) %% 7 );
   }
   if isTetraPrime p+1 and isTetraPrime p+2 {
      @tetras2.push: p;
      $sevens2++ if ( (p+1) %% 7 or (p+2) %% 7 );
   }
   if p == highest5 | highest6 | highest7 {
      for 0,1 -> \i {
         my (\sevens, \t, @tetras) := i == 0
            ?? ( $sevens1, "preceding", @tetras1 )
            !! ( $sevens2, "following", @tetras2 );
         my \c = @tetras.elems;

         say "Found {c} primes under $j whose {t} neighboring pair are tetraprimes:";
         if p == highest5 {
            say [~] $_>>.fmt('%6s') for @tetras.rotor(10,:partial);
         }
         say "of which {sevens} have a neighboring pair one of whose factors is 7.\n";
         my \gaps = ( @tetras.rotor(2=>-1).map: { .[1] - .[0] } ).sort;

         my (\Min,\Max,\Med) = gaps[0], gaps[*-1], median(gaps);
         say "Minimum gap between those {c} primes : {Min}";
         say "Median  gap between those {c} primes : {Med}";
         say "Maximum gap between those {c} primes : {Max}";
         say()
      }
      $j *= 10
   }
}
#------------------------------------------------------ 780 prime-reciprocal-sum
sub abbr ($_) { .chars < 41 ?? $_ !! .substr(0,20) ~ '..' ~ .substr(*-20) ~ " ({.chars} digits)" }

sub next-prime {
    state $sum = 0;
    my $next = ((1 / (1 - $sum)).ceiling+1..*).hyper(:2batch).grep(&is-prime)[0];
    $sum += FatRat.new(1,$next);
    $next;
}

printf "%2d: %s\n", $_, abbr next-prime for 1..15;
#---------------------------------------------------------- 781 prime-triplets-1
say grep *.all.is-prime, map { $_, $_+2, $_+6 }, 2..5500;
#---------------------------------------------------------- 782 prime-triplets-2
constant @triples = (5, *+6 … *).map: -> \n { $_ if .all.is-prime given (n, n+2, n+6) }

my $count = @triples.first: :k, *.[0] >= 5500;

say .fmt('%4d') for @triples.head($count);
#-------------------------- 783 primes---allocate-descendants-to-their-ancestors
my $max = 99;
my @primes = (2 .. $max).grep: *.is-prime;
my %tree;
(1..$max).map: {
    %tree{$_}<ancestor> = ();
    %tree{$_}<descendants> = {};
};


sub allocate ($n, $i = 0, $sum = 0, $prod = 1) {
    return if $n < 4;
    for @primes.kv -> $k, $p {
        next if $k < $i;
        if ($sum + $p) <= $n {
            allocate($n, $k, $sum + $p, $prod * $p);
        } else {
            last if $sum == $prod;
            %tree{$sum}<descendants>{$prod} = True;
            last if $prod > $max;
            %tree{$prod}<ancestor> = %tree{$sum}<ancestor> (|) $sum;
            last;
        }
    }
}

# abbreviate long lists to first and last 5 elements
sub abbrev (@d) { @d < 11 ?? @d !! ( @d.head(5), '...', @d.tail(5) ) }

my @print = flat 1 .. 15, 46, 74, $max;

(1 .. $max).map: -> $term {
    allocate($term);

    if $term == any( @print )  # print some representative lines
    {
        my $dn = +%tree{$term}<descendants> // 0;
        my $dl = abbrev(%tree{$term}<descendants>.keys.sort( +*) // ());
        printf "%2d, %2d Ancestors: %-14s %5d Descendants: %s\n",
          $term, %tree{$term}<ancestor>,
          "[{ %tree{$term}<ancestor>.keys.sort: +* }],", $dn, "[$dl]";
    }
}

say "\nTotal descendants: ",
  sum (1..$max).map({ +%tree{$_}<descendants> });
#----------------------------------- 784 primes-which-contain-only-one-odd-digit
put display ^1000 .grep: { ($_ % 2) && .is-prime && (.comb[^(*-1)].all %% 2) }

sub display ($list, :$cols = 10, :$fmt = '%6d', :$title = "{+$list} matching:\n" )   {
    cache $list;
    $title ~ $list.batch($cols)».fmt($fmt).join: "\n"
}
#----------------------------------- 785 primes-whose-first-and-last-number-is-3
my $upto = 1e4;

for 1,3,5,7,9 -> $bracket {
    print "\nPrimes up to $upto bracketed by $bracket - ";
    say display ^$upto .grep: { .starts-with($bracket) && .ends-with($bracket) && .is-prime }
}

sub display ($list, :$cols = 10, :$fmt = '%6d', :$title = "{+$list} matching:\n" )   {
    cache $list;
    $title ~ $list.batch($cols)».fmt($fmt).join: "\n"
}
#------------------------------------------ 786 primes-whose-sum-of-digits-is-25
unit sub MAIN ($limit = 5000);
say "{+$_} primes < $limit with digital sum 25:\n{$_».fmt("%" ~ $limit.chars ~ "d").batch(10).join("\n")}",
    with ^$limit .grep: { .is-prime and .comb.sum == 25 }
#--------------------------------- 787 primes-with-digits-in-nondecreasing-order
my $range = ^1000;

for flat 2..10, 17, 27, 31 -> $base {
   say "\nBase $base: {+$_} non-decending primes between $range.minmax.map( *.base: $base ).join(' and '):\n{
      .batch(20)».fmt("%{.tail.chars}s").join: "\n" }"
       given $range.grep( *.is-prime ).map( *.base: $base ).grep: { [le] .comb }
}
#----------------------------------------------------------- 788 primes:-n-2^m+1
-> $n { (^∞).map: -> $m { if (my $p = $n × 2 ** $m + 1).is-prime { printf "%3d %4d: %d\n",$n,$m,$p; last } } } for 1..400
#------------------------------------------------- 789 print-debugging-statement
my &pdb = &die;

CATCH {
    when X::AdHoc {
        my @frames = .backtrace[*];
        say .payload;
        for @frames {
            # Filter out exception handing and dispatcher frames
            next if .file.contains: 'SETTING' or .subname.chars < 1;
            printf "%sfrom file: %s,%s line: %s\n",
              (' ' x $++), .file,
              (my $s = .subname) eq '<unit>' ?? '' !! " sub: $s,", .line;
        }
        say '';
        .resume;
    }
    default {}
}

## Testing / demonstration

# helper subs                #line 22
sub alpha ($a) {             #line 23
    pdb ('a =>', $a + 3);    #line 24
    pdb 'string';            #line 25
    beta(7);                 #line 26
}                            #line 27
sub beta  ($b) { pdb $b    } #line 28
sub gamma ($c) { beta $c   } #line 29
sub delta ($d) { gamma $d  } #line 30
                             #line 31
my $a = 10;                  #line 32
pdb (.VAR.name, $_) with $a; #line 33
alpha($a);                   #line 34
delta("Δ");                  #line 35
.&beta for ^3;               #line 36
#------------------------------------------------------------ 790 print-itself-1
my &f = {say $^s, $^s.raku;}; f "my \&f = \{say \$^s, \$^s.raku;}; f "
#------------------------------------------------------------ 791 print-itself-3
print $*PROGRAM.slurp
#------------------------------------------------------------ 792 priority-queue
class PriorityQueue {
    has @!tasks;

    method insert (Int $priority where * >= 0, $task) {
        @!tasks[$priority].push: $task;
    }

    method get { @!tasks.first(?*).shift }

    method is-empty { ?none @!tasks }
}

my $pq = PriorityQueue.new;

for (
    3, 'Clear drains',
    4, 'Feed cat',
    5, 'Make tea',
    9, 'Sleep',
    3, 'Check email',
    1, 'Solve RC tasks',
    9, 'Exercise',
    2, 'Do taxes'
) -> $priority, $task {
    $pq.insert( $priority, $task );
}

say $pq.get until $pq.is-empty;
#----------------------------------------------------- 793 problem-of-apollonius
class Circle {
   has $.x;
   has $.y;
   has $.r;
   method gist { sprintf "%s =%7.3f " xx 3, (:$!x,:$!y,:$!r)».kv }
}

sub circle($x,$y,$r) { Circle.new: :$x, :$y, :$r }

sub solve-Apollonius([\c1, \c2, \c3], [\s1, \s2, \s3]) {
    my \𝑣11 = 2 * c2.x - 2 * c1.x;
    my \𝑣12 = 2 * c2.y - 2 * c1.y;
    my \𝑣13 = c1.x² - c2.x² + c1.y² - c2.y² - c1.r² + c2.r²;
    my \𝑣14 = 2 * s2 * c2.r - 2 * s1 * c1.r;

    my \𝑣21 = 2 * c3.x - 2 * c2.x;
    my \𝑣22 = 2 * c3.y - 2 * c2.y;
    my \𝑣23 = c2.x² - c3.x² + c2.y² - c3.y² - c2.r² + c3.r²;
    my \𝑣24 = 2 * s3 * c3.r - 2 * s2 * c2.r;

    my \𝑤12 = 𝑣12 / 𝑣11;
    my \𝑤13 = 𝑣13 / 𝑣11;
    my \𝑤14 = 𝑣14 / 𝑣11;

    my \𝑤22 = 𝑣22 / 𝑣21 - 𝑤12;
    my \𝑤23 = 𝑣23 / 𝑣21 - 𝑤13;
    my \𝑤24 = 𝑣24 / 𝑣21 - 𝑤14;

    my \𝑃 = -𝑤23 / 𝑤22;
    my \𝑄 = 𝑤24 / 𝑤22;
    my \𝑀 = -𝑤12 * 𝑃 - 𝑤13;
    my \𝑁 = 𝑤14 - 𝑤12 * 𝑄;

    my \𝑎 = 𝑁² + 𝑄² - 1;
    my \𝑏 = 2 * 𝑀 * 𝑁 - 2 * 𝑁 * c1.x + 2 * 𝑃 * 𝑄 - 2 * 𝑄 * c1.y + 2 * s1 * c1.r;
    my \𝑐 = c1.x² + 𝑀² - 2 * 𝑀 * c1.x + 𝑃² + c1.y² - 2 * 𝑃 * c1.y - c1.r²;

    my \𝐷 = 𝑏² - 4 * 𝑎 * 𝑐;
    my \rs = (-𝑏 - sqrt 𝐷) / (2 * 𝑎);

    my \xs = 𝑀 + 𝑁 * rs;
    my \ys = 𝑃 + 𝑄 * rs;

    circle(xs, ys, rs);
}

my @c = circle(0, 0, 1), circle(4, 0, 1), circle(2, 4, 2);
for ([X] [-1,1] xx 3) -> @i {
    say (solve-Apollonius @c, @i).gist;
}
#-------------------------------------------------------------- 794 program-name
say $*PROGRAM-NAME;
#--------------------------------------------------------------------- 795 proof
# 20200807 Raku programming solution (Incomplete)

sub check ($type, @testee) {
   @testee.map: { say "Is\t$_\t∈ ", $type.^name, "\t: ", $_ ~~ $type}
}

# 1.1 natural numbers

subset ℕ of Any where ( $_ ≥ 0 and $_.narrow ~~ Int ); # add constraints to Any
# alternative : subset ℕ of Int where * ≥ 0;

check ℕ, < 0 1 -1 3.3 >;

# 1.2 even natural numbers

subset EvenNatural of ℕ where * %% 2;

check EvenNatural, < 33 66 >;

# 1.3 odd natural numbers

subset OddNatural of ℕ where ( $_ ≠ $_ div 2 × 2 );
# alternative : subset OddNatural of ℕ where * !~~ Even;

check OddNatural, < 33 66 >;

# 2.1 Define the addition on natural numbers  (Translation from #Go)

sub infix:<⊞>(ℕ $a, ℕ $b --> ℕ) {
   return $a if $b == 0;
   return $a.succ ⊞ $b.pred;
}

check ℕ, [ 3 ⊞ 5 ];

# 3.1 Prove that the addition of any two even numbers is even
# 3.2 Prove that the addition is always associative
# 3.3 Prove that the addition is always commutative
# 3.4 Try to prove that the addition of any two even numbers is odd (it should be rejected)

# 4.1 Prove that the addition of any two even numbers cannot be odd
# 4.2 Try to prove that the addition of any two even numbers cannot be even (it should be rejected)
#----------------------------------------------------------- 796 proper-divisors
sub propdiv (\x) {
    my @l = 1 if x > 1;
    (2 .. x.sqrt.floor).map: -> \d {
        unless x % d { @l.push: d; my \y = x div d; @l.push: y if y != d }
    }
    @l
}

put "$_ [{propdiv($_)}]" for 1..10;

my @candidates;
loop (my int $c = 30; $c <= 20_000; $c += 30) {
#(30, *+30 …^ * > 500_000).race.map: -> $c {
    my \mx = +propdiv($c);
    next if mx < @candidates - 1;
    @candidates[mx].push: $c
}

say "max = {@candidates - 1}, candidates = {@candidates.tail}";
#--------------- 797 pseudo-random-numbers-combined-recursive-generator-mrg32k3a
class MRG32k3a {
    has @!x1;
    has @!x2;

    constant a1 = 0, 1403580, -810728;
    constant a2 = 527612, 0, -1370589;
    constant m1 = 2**32 - 209;
    constant m2 = 2**32 - 22853;

    submethod BUILD ( Int :$seed where 0 < * <= m1 = 1 ) { @!x1 = @!x2 = $seed, 0, 0 }

    method next-int {
        @!x1.unshift: (a1[0] * @!x1[0] + a1[1] * @!x1[1] + a1[2] * @!x1[2]) % m1; @!x1.pop;
        @!x2.unshift: (a2[0] * @!x2[0] + a2[1] * @!x2[1] + a2[2] * @!x2[2]) % m2; @!x2.pop;
        (@!x1[0] - @!x2[0]) % (m1 + 1)
    }

    method next-rat { self.next-int / (m1 + 1) }
}


# Test next-int with custom seed
say 'Seed: 1234567; first five Int values:';
my $rng = MRG32k3a.new :seed(1234567);
.say for $rng.next-int xx 5;


# Test next-rat (since these are rational numbers by default)
say "\nSeed: 987654321; first 1e5 Rat values histogram:";
$rng = MRG32k3a.new :seed(987654321);
say ( ($rng.next-rat * 5).floor xx 100_000 ).Bag;


# Test next-int with default seed
say "\nSeed: default; first five Int values:";
$rng = MRG32k3a.new;
.say for $rng.next-int xx 5;
#-------------------------------- 798 pseudo-random-numbers-middle-square-method
sub msq {
    state $seed = 675248;
    $seed = $seed² div 1000 mod 1000000;
}

say msq() xx 5;
#----------------------------------------------- 799 pseudo-random-numbers-pcg32
class PCG32 {
    has $!state;
    has $!incr;
    constant mask32 = 2³² - 1;
    constant mask64 = 2⁶⁴ - 1;
    constant const = 6364136223846793005;

    submethod BUILD (
        Int :$seed = 0x853c49e6748fea9b, # default seed
        Int :$incr = 0xda3e39cb94b95bdb  # default increment
      ) {
        $!incr  = $incr +< 1 +| 1 +& mask64;
        $!state = (($!incr + $seed) * const + $!incr) +& mask64;
    }

    method next-int {
        my $shift  = ($!state +> 18 +^ $!state) +> 27 +& mask32;
        my $rotate =  $!state +> 59 +& 31;
        $!state    = ($!state * const + $!incr) +& mask64;
        ($shift +> $rotate) +| ($shift +< (32 - $rotate) +& mask32)
    }

    method next-rat { self.next-int / 2³² }
}


# Test next-int with custom seed and increment
say 'Seed: 42, Increment: 54; first five Int values:';
my $rng = PCG32.new( :seed(42), :incr(54) );
.say for $rng.next-int xx 5;


# Test next-rat (since these are rational numbers by default)
say "\nSeed: 987654321, Increment: 1; first 1e5 Rat values histogram:";
$rng = PCG32.new( :seed(987654321), :incr(1) );
say ( ($rng.next-rat * 5).floor xx 100_000 ).Bag;


# Test next-int with default seed and increment
say "\nSeed: default, Increment: default; first five Int values:";
$rng = PCG32.new;
.say for $rng.next-int xx 5;
#------------------------------------------ 800 pseudo-random-numbers-splitmix64
class splitmix64 {
    has $!state;

    submethod BUILD ( Int :$seed where * >= 0 = 1 ) { $!state = $seed }

    method next-int {
        my $next = $!state = ($!state + 0x9e3779b97f4a7c15) +& (2⁶⁴ - 1);
        $next = ($next +^ ($next +> 30)) * 0xbf58476d1ce4e5b9 +& (2⁶⁴ - 1);
        $next = ($next +^ ($next +> 27)) * 0x94d049bb133111eb +& (2⁶⁴ - 1);
        ($next +^ ($next +> 31)) +& (2⁶⁴ - 1);
    }

    method next-rat { self.next-int / 2⁶⁴ }
}

# Test next-int
say 'Seed: 1234567; first five Int values';
my $rng = splitmix64.new( :seed(1234567) );
.say for $rng.next-int xx 5;


# Test next-rat (since these are rational numbers by default)
say "\nSeed: 987654321; first 1e5 Rat values histogram";
$rng = splitmix64.new( :seed(987654321) );
say ( ($rng.next-rat * 5).floor xx 100_000 ).Bag;
#--------------------------------------- 801 pseudo-random-numbers-xorshift-star
class Xorshift-star {
    has $!state;

    submethod BUILD ( Int :$seed where * > 0 = 1 ) { $!state = $seed }

    method next-int {
        $!state +^= $!state +> 12;
        $!state +^= $!state +< 25 +& (2⁶⁴ - 1);
        $!state +^= $!state +> 27;
        ($!state * 0x2545F4914F6CDD1D) +> 32 +& (2³² - 1)
    }

    method next-rat { self.next-int / 2³² }
}

# Test next-int
say 'Seed: 1234567; first five Int values';
my $rng = Xorshift-star.new( :seed(1234567) );
.say for $rng.next-int xx 5;


# Test next-rat (since these are rational numbers by default)
say "\nSeed: 987654321; first 1e5 Rat values histogram";
$rng = Xorshift-star.new( :seed(987654321) );
say ( ($rng.next-rat * 5).floor xx 100_000 ).Bag;


# Test with default seed
say "\nSeed: default; first five Int values";
$rng = Xorshift-star.new;
.say for $rng.next-int xx 5;
#------------------------------------------------------------- 802 punched-cards
sub punch ( Str $single_line ) {
    # https://dl.acm.org/doi/pdf/10.1145/362991.363052 ; Hollerith Punched Card Code, A.4 table.
    constant %Hollerith = map { .head => $_ }, [Z] map {[ .comb ]}, # XXX .comb.List?
      Q[[ 123456789&ABCDEFGHI-JKLMNOPQR0/STUVWXYZ{abcdefghi|jklmnopqr}~stuvwxyz`:#@'="[.<(+!]$*);^\,%_>?]],
        '          ▓▓▓▓▓▓▓▓▓▓                    ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓                 ▓▓▓▓▓▓            ',
        '                    ▓▓▓▓▓▓▓▓▓▓                    ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓             ▓▓▓▓▓▓      ',
        '                              ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓          ▓▓▓▓▓▓▓▓▓▓                   ▓▓▓▓▓▓',
        '1▓111111111▓111111111▓111111111▓111111111▓111111111▓111111111▓11111111▓111111111111111111111111',
        '22▓222222222▓222222222▓222222222▓222222222▓222222222▓222222222▓22222222▓22222▓22222▓22222▓22222',
        '333▓333333333▓333333333▓333333333▓333333333▓333333333▓333333333▓33333333▓33333▓33333▓33333▓3333',
        '4444▓444444444▓444444444▓444444444▓444444444▓444444444▓444444444▓44444444▓44444▓44444▓44444▓444',
        '55555▓555555555▓555555555▓555555555▓555555555▓555555555▓555555555▓55555555▓55555▓55555▓55555▓55',
        '666666▓666666666▓666666666▓666666666▓666666666▓666666666▓666666666▓66666666▓66666▓66666▓66666▓6',
        '7777777▓777777777▓777777777▓777777777▓777777777▓777777777▓777777777▓77777777▓77777▓77777▓77777▓',
        '88888888▓888888888▓888888888▓888888888▓888888888▓888888888▓888888888▓8▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓',
        '999999999▓999999999▓999999999▓999999999▓999999999▓999999999▓999999999▓9999999999999999999999999',
    ;
    my @columns = %Hollerith{ $single_line.fmt("%-80s").comb };

    my @rows = map { .join }, [Z] @columns;

    say ' ',   '─' x 80, '┐';
    say '╱', @rows.head, '│';
    say '│',         $_, '│' for @rows.skip;
    say '└',   '─' x 80, '┘';
}
punch Q[[ 123456789&ABCDEFGHI-JKLMNOPQR0/STUVWXYZ{abcdefghi|jklmnopqr}~stuvwxyz`:#@'="]];
punch 'say "Hello, World!"';
#----------------------------------------------------------- 803 pythagoras-tree
class Square {
    has Complex ($.position, $.edge);
    method size { $!edge.abs }
    method svg-polygon {
    qq[<polygon points="{join ' ', map
    { ($!position + $_ * $!edge).reals.join(',') },
    0, 1, 1+1i, 1i}" style="fill:lime;stroke=black" />]
    }
    method left-child {
    self.new:
    position => $!position + i*$!edge,
    edge => sqrt(2)/2*cis(pi/4)*$!edge;
    }
    method right-child {
    self.new:
    position => $!position + i*$!edge + self.left-child.edge,
    edge => sqrt(2)/2*cis(-pi/4)*$!edge;
    }
}

BEGIN say '<svg width="500" height="500">';
END   say '</svg>';

sub tree(Square $s, $level = 0) {
    return if $level > 8;
    say $s.svg-polygon;
    tree($s.left-child, $level+1);
    tree($s.right-child, $level+1);
}

tree Square.new: :position(250+0i), :edge(60+0i);
#---------------------------------------------------- 804 pythagorean-quadruples
my \N = 2200;
my @sq = (0 .. N)»²;
my @not = False xx N;
@not[0] = True;

(1 .. N).race.map: -> $d {
    my $last = 0;
    for $d ... ($d/3).ceiling -> $a {
        for 1 .. ($a/2).ceiling -> $b {
            last if (my $ab = @sq[$a] + @sq[$b]) > @sq[$d];
            if (@sq[$d] - $ab).sqrt.narrow ~~ Int {
                @not[$d] = True;
                $last = 1;
                last
            }
        }
        last if $last;
    }
}

say @not.grep( *.not, :k );
#----------------------------------------------------- 805 pythagorean-triples-1
constant limit = 100;

for [X] [^limit] xx 3 -> (\a, \b, \c) {
    say [a, b, c] if a < b < c and a + b + c <= limit and a*b + b*b == c*c
}
#----------------------------------------------------- 806 pythagorean-triples-2
my $limit = 10000;
my atomicint $i = 0;
my @triples[$limit/2];
(3 .. $limit/2).race.map: -> $c {
   for 1 .. $c -> $a {
       my $b = ($c * $c - $a * $a).sqrt;
       last if $c + $a + $b > $limit;
       last if $a > $b;
       @triples[$i⚛++] = ([gcd] $c, $a, $b) > 1 ?? 0 !! 1 if $b == $b.Int;
   }
}

say my $result = "There are {+@triples.grep:{$_ !eqv Any}} Pythagorean Triples with a perimeter <= $limit,"
 ~"\nof which {[+] @triples.grep: so *} are primitive.";
#----------------------------------------------------- 807 pythagorean-triples-4
constant @coeff = [[+1, -2, +2], [+2, -1, +2], [+2, -2, +3]],
                  [[+1, +2, +2], [+2, +1, +2], [+2, +2, +3]],
                  [[-1, +2, +2], [-2, +1, +2], [-2, +2, +3]];

sub triples($limit) {

    sub oyako(@trippy) {
        my $perim = [+] @trippy;
        return if $perim > $limit;
        take (1 + ($limit div $perim)i);
        for @coeff -> @nine {
            oyako (map -> @three { [+] @three »*« @trippy }, @nine);
        }
        return;
    }

    my $complex = 0i + [+] gather oyako([3,4,5]);
    "$limit => ({$complex.re, $complex.im})";
}

for 10, 100, 1000, 10000 -> $limit {
    say triples $limit;
}
#---------------------------------------------------------- 808 qr-decomposition
# sub householder translated from https://codereview.stackexchange.com/questions/120978/householder-transformation

use v6;

sub identity(Int:D $m --> Array of Array) {
   my Array @M;

   for 0 ..^ $m -> $i {
      @M.push: [0 xx $m];
      @M[$i; $i] = 1;
   }

   @M;
}

multi multiply(Array:D @A, @b where Array:D --> Array) {
   my @c;

   for ^@A X ^@b -> ($i, $j) {
      @c[$i] += @A[$i; $j] * @b[$j];
   }

   @c;
}

multi multiply(Array:D @A, Array:D @B --> Array of Array) {
   my Array @C;

   for ^@A X ^@B[0] -> ($i, $j) {
      @C[$i; $j] += @A[$i; $_] * @B[$_; $j] for ^@B;
   }

   @C;
}

sub transpose(Array:D @M --> Array of Array) {
   my ($rows, $cols) = (@M.elems, @M[0].elems);

   my Array @T;

   for ^$cols X ^$rows -> ($j, $i) {
      @T[$j; $i] = @M[$i; $j];
   }

   @T;
}

####################################################
# NOTE: @A gets overwritten and becomes @R, only need
# to return @Q.
####################################################
sub householder(Array:D @A --> Array) {
   my Int ($m, $n) = (@A.elems, @A[0].elems);
   my @v = 0 xx $m;
   my Array @Q = identity($m);

   for 0 ..^ $n -> $k {
      my Real $sum = 0;
      my Real $A0 = @A[$k; $k];
      my Int $sign = $A0 < 0 ?? -1 !! 1;

      for $k ..^ $m -> $i {
         $sum += @A[$i; $k] * @A[$i; $k];
      }

      my Real $sqr_sum = $sign * sqrt($sum);
      my Real $tmp = sqrt(2 * ($sum + $A0 * $sqr_sum));
      @v[$k] = ($sqr_sum  + $A0) / $tmp;

      for ($k + 1) ..^ $m -> $i {
         @v[$i] = @A[$i; $k] / $tmp;
      }

      for 0 ..^ $n -> $j {
         $sum = 0;

         for $k ..^ $m -> $i {
            $sum += @v[$i] * @A[$i; $j];
         }

         for $k ..^ $m -> $i {
            @A[$i; $j] -= 2 * @v[$i] * $sum;
         }
      }

      for 0 ..^ $m -> $j {
         $sum = 0;

         for $k ..^ $m -> $i {
            $sum += @v[$i] * @Q[$i; $j];
         }

         for $k ..^ $m -> $i {
            @Q[$i; $j] -= 2 * @v[$i] * $sum;
         }
      }
   }

   @Q
}

sub dotp(@a where Array:D, @b where Array:D --> Real) {
   [+] @a >>*<< @b;
}

sub upper-solve(Array:D @U, @b where Array:D, Int:D $n --> Array) {
   my @y = 0 xx $n;

   @y[$n - 1] = @b[$n - 1] / @U[$n - 1; $n - 1];

   for reverse ^($n - 1) -> $i {
      @y[$i] = (@b[$i] - (dotp(@U[$i], @y))) / @U[$i; $i];
   }

   @y;
}

sub polyfit(@x where Array:D, @y where Array:D, Int:D $n) {
   my Int $m = @x.elems;
   my Array @V;

   # Vandermonde matrix
   for ^$m X (0 .. $n) -> ($i, $j) {
      @V[$i; $j] = @x[$i] ** $j
   }

   # least squares
   my $Q = householder(@V);
   my @b = multiply($Q, @y);

   return upper-solve(@V, @b, $n + 1);
}

sub print-mat(Array:D @M, Str:D $name) {
   my Int ($m, $n) = (@M.elems, @M[0].elems);
   print "\n$name:\n";

   for 0 ..^ $m -> $i {
      for 0 ..^ $n -> $j {
         print @M[$i; $j].fmt("%12.6f ");
      }

      print "\n";
   }
}

sub MAIN() {
   ############
   # 1st part #
   ############
   my Array @A = (
      [12, -51,   4],
      [ 6, 167, -68],
      [-4,  24, -41],
      [-1,   1,   0],
      [ 2,   0,   3]
   );

   print-mat(@A, 'A');
   my $Q = householder(@A);
   $Q = transpose($Q);
   print-mat($Q, 'Q');
   # after householder, @A is now @R
   print-mat(@A, 'R');
   print-mat(multiply($Q, @A), 'check Q x R = A');

   ############
   # 2nd part #
   ############
   my @x = [^11];
   my @y = [1, 6, 17, 34, 57, 86, 121, 162, 209, 262, 321];

   my @coef = polyfit(@x, @y, 2);

   say
      "\npolyfit:\n",
      <constant X X^2>.fmt("%12s"),
      "\n",
      @coef.fmt("%12.6f");
}
#---------------------------------------------------- 809 quadrat-special-primes
my @sqp = 2, -> $previous {
    my $next;
    for (1..∞).map: *² {
        $next = $previous + $_;
        last if $next.is-prime;
    }
    $next
} … *;

say "{+$_} matching numbers:\n", $_».fmt('%5d').batch(7).join: "\n" given
    @sqp[^(@sqp.first: * > 16000, :k)];
#---------------------------------------------------------------- 810 quaternion
class Quaternion {
    has Real ( $.r, $.i, $.j, $.k );

    multi method new ( Real $r, Real $i, Real $j, Real $k ) {
        self.bless: :$r, :$i, :$j, :$k;
    }
    multi qu(*@r) is export { Quaternion.new: |@r }
    sub postfix:<j>(Real $x) is export { qu 0, 0, $x, 0 }
    sub postfix:<k>(Real $x) is export { qu 0, 0, 0, $x }

    method Str   () { "$.r + {$.i}i + {$.j}j + {$.k}k" }
    method reals () { $.r, $.i, $.j, $.k }
    method conj  () { qu $.r, -$.i, -$.j, -$.k }
    method norm  () { sqrt [+] self.reals X** 2 }

    multi infix:<eqv> ( Quaternion $a, Quaternion $b ) is export { $a.reals eqv $b.reals }

    multi infix:<+> ( Quaternion $a,       Real $b ) is export { qu $b+$a.r, $a.i, $a.j, $a.k }
    multi infix:<+> (       Real $a, Quaternion $b ) is export { qu $a+$b.r, $b.i, $b.j, $b.k }
    multi infix:<+> ( Quaternion $a,    Complex $b ) is export { qu $b.re + $a.r, $b.im + $a.i, $a.j, $a.k }
    multi infix:<+> (    Complex $a, Quaternion $b ) is export { qu $a.re + $b.r, $a.im + $b.i, $b.j, $b.k }
    multi infix:<+> ( Quaternion $a, Quaternion $b ) is export { qu $a.reals Z+ $b.reals }

    multi prefix:<-> ( Quaternion $a ) is export { qu $a.reals X* -1 }

    multi infix:<*> ( Quaternion $a,       Real $b ) is export { qu $a.reals X* $b }
    multi infix:<*> (       Real $a, Quaternion $b ) is export { qu $b.reals X* $a }
    multi infix:<*> ( Quaternion $a,    Complex $b ) is export { $a * qu $b.reals, 0, 0 }
    multi infix:<*> ( Complex $a,    Quaternion $b ) is export { $b R* qu $a.reals, 0, 0 }

    multi infix:<*> ( Quaternion $a, Quaternion $b ) is export {
	my @a_rijk            = $a.reals;
	my ( $r, $i, $j, $k ) = $b.reals;
	return qu [+]( @a_rijk Z* $r, -$i, -$j, -$k ), # real
		  [+]( @a_rijk Z* $i,  $r,  $k, -$j ), # i
		  [+]( @a_rijk Z* $j, -$k,  $r,  $i ), # j
		  [+]( @a_rijk Z* $k,  $j, -$i,  $r ); # k
    }
}
import Quaternion;

my $q  = 1 + 2i + 3j + 4k;
my $q1 = 2 + 3i + 4j + 5k;
my $q2 = 3 + 4i + 5j + 6k;
my $r  = 7;

say "1) q norm  = {$q.norm}";
say "2) -q      = {-$q}";
say "3) q conj  = {$q.conj}";
say "4) q  + r  = {$q + $r}";
say "5) q1 + q2 = {$q1 + $q2}";
say "6) q  * r  = {$q  * $r}";
say "7) q1 * q2 = {$q1 * $q2}";
say "8) q1q2 { $q1 * $q2 eqv $q2 * $q1 ?? '==' !! '!=' } q2q1";
#---------------------------------------------------------- 811 queue-definition
role FIFO {
    method enqueue ( *@values ) { # Add values to queue, returns the number of values added.
        self.push: @values;
        return @values.elems;
    }
    method dequeue ( ) {         # Remove and return the first value from the queue.
                                 # Return Nil if queue is empty.
        return self.elems ?? self.shift !! Nil;
    }
    method is-empty ( ) {        # Check to see if queue is empty. Returns Boolean value.
        return self.elems == 0;
    }
}

# Example usage:

my @queue does FIFO;

say @queue.is-empty;                         # -> Bool::True
for <A B C> -> $i { say @queue.enqueue: $i } # 1 \n 1 \n 1
say @queue.enqueue: Any;                     # -> 1
say @queue.enqueue: 7, 8;                    # -> 2
say @queue.is-empty;                         # -> Bool::False
say @queue.dequeue;                          # -> A
say @queue.elems;                            # -> 4
say @queue.dequeue;                          # -> B
say @queue.is-empty;                         # -> Bool::False
say @queue.enqueue('OHAI!');                 # -> 1
say @queue.dequeue until @queue.is-empty;    # -> C \n Any() \n [7 8] \n OHAI!
say @queue.is-empty;                         # -> Bool::True
say @queue.dequeue;                          # ->
#------------------------------------------------------------- 812 queue-usage-2
my @queue = < a >;

@queue.push('b', 'c'); # [ a, b, c ]

say @queue.shift; # a
say @queue.pop; # c

say @queue; # [ b ]
say @queue.elems; # 1

@queue.unshift('A'); # [ A, b ]
@queue.push('C'); # [ A, b, C ]
#----------------------------------------------------------------- 813 quickhull
# 20250710 Raku programming solution

constant MAX_SIZE = 2500;
constant EPSILON = 1e-8;

sub        is-equal($a, $b, :$eps = EPSILON) { abs($a - $b) < $eps }
sub is-greater-than($a, $b, :$eps = EPSILON) {    ($a - $b) > $eps }

class Vector {
   has Real ($.x, $.y, $.z) is rw;
   has  Int  $.id           is rw;

   method subtract(Vector $other) {
      Vector.new( :x($!x - $other.x), :y($!y - $other.y), :z($!z - $other.z) )
   }
   method cross-product(Vector $other) {
      Vector.new(
         x => $!y * $other.z - $!z * $other.y,
         y => $!z * $other.x - $!x * $other.z,
         z => $!x * $other.y - $!y * $other.x
      )
   }
   method dot-product(Vector $other) {
      $!x, $!y, $!z Z*+ $other.x, $other.y, $other.z # Seq
   }
   method magnitude { sqrt($!x² + $!y² + $!z²) }
   method equals(Vector $other) {
      all (($!x, $other.x),($!y,$other.y),($!z,$other.z)).map: { is-equal |$_ }
   }
   method gist { "Vector({$!x}, {$!y}, {$!z}, id={$!id})" }
}
class Line { has Vector ($.u, $.v) is rw }
class Plane {
   has Vector ($.u, $.v, $.w) is rw;
   method normal { $!v.subtract($!u).cross-product($!w.subtract($!u)) }
   method vector-at(Int $i) { ($!u, $!v, $!w)[$i] // Vector.new }
   method vector-id(Int $i) { self.vector-at($i).id }
}
class Facet {
   has Int $.id is rw = 0;
   has Int $.visited-time is rw = 0;
   has Bool $.is-deleted is rw = False;
   has Plane $.plane is rw;
   has @.neighbors is rw;
}
class Edge { has Int ($.net-id, $.face-id) is rw }

# Global state variables
my ( @facets, @hull-points, @edges, @visit-time, @queue );
my ( @res-facets-new, @res-facets-deleted, @res-points, $time-step );

# Geometric utilities
sub distance-point-plane(Vector $vec, Plane $plane) {
   $vec.subtract($plane.u).dot-product($plane.normal) / $plane.normal.magnitude
}
sub distance-point-line(Vector $vec, Line $line) {
   return 0 if my $length = $vec.subtract($line.u).magnitude == 0;
   $line.v.subtract($line.u).cross-product($vec.subtract($line.u)).magnitude /
   $line.v.subtract($line.u).magnitude
}
sub distance-point-point(Vector $a, Vector $b) { $a.subtract($b).magnitude }
sub is-above(Vector $point, Plane $plane) {
   is-greater-than($point.subtract($plane.u).dot-product($plane.normal), 0)
}

class ConvexHull3D {
   has Int         $.index is rw;
   has Real $.surface-area is rw = 0;

   method get-surface-area {
      return $!surface-area if is-greater-than($!surface-area, 0);
      $time-step++;
      self!dfs-area($!index);
      return $!surface-area
   }
   method !dfs-area(Int $facet-index) {
      return if @facets[$facet-index].visited-time == $time-step;

      @facets[$facet-index].visited-time = $time-step;
      $!surface-area += ( @facets[$facet-index].plane.normal ).magnitude / 2;

      do for ^3 -> $i { self!dfs-area(@facets[$facet-index].neighbors[$i]) }
   }
   method get-horizon(Int $facet-index, Vector $point, @res-deleted) {
      return 0 unless is-above($point, @facets[$facet-index].plane);
      return -1 if @facets[$facet-index].visited-time == $time-step;

      @facets[$facet-index].visited-time = $time-step;
      @facets[$facet-index].is-deleted = True;
      @res-deleted.push(@facets[$facet-index].id);

      my $result = -2;
      for 0..2 -> $neighbor-index {
         my $neighbor-facet-index = @facets[$facet-index].neighbors[$neighbor-index];
         my $horizon = self.get-horizon($neighbor-facet-index, $point, @res-deleted);

         if $horizon == 0 {
            my $a = @facets[$facet-index].plane.vector-id($neighbor-index);
            my $b = @facets[$facet-index].plane.vector-id(($neighbor-index + 1) % 3);

            for (0, 1) -> $idx {
               my $point-id = $idx == 0 ?? $a !! $b;
               my $neighbor-facet = $neighbor-facet-index;

               if @visit-time[$point-id] != $time-step {
                  @visit-time[$point-id] = $time-step;
                  @edges[0][$point-id].net-id = $idx == 0 ?? $b !! $a;
                  @edges[0][$point-id].face-id = $neighbor-facet;
               } else {
                  @edges[1][$point-id].net-id = $idx == 0 ?? $b !! $a;
                  @edges[1][$point-id].face-id = $neighbor-facet;
               }
            }
            $result = $a;
         } elsif $horizon != -1 && $horizon != -2 {
            $result = $horizon;
         }
      }
      return $result
   }
}

sub get-initial-hull(@points, Int $total-points) {
    # Find extreme points in each dimension
    my @extremes = @points[1] xx 6;

   for @points[1..$total-points] -> $point {
      @extremes[0] = $point if is-greater-than($point.x, @extremes[0].x);
      @extremes[1] = $point if is-greater-than(@extremes[1].x, $point.x);
      @extremes[2] = $point if is-greater-than($point.y, @extremes[2].y);
      @extremes[3] = $point if is-greater-than(@extremes[3].y, $point.y);
      @extremes[4] = $point if is-greater-than($point.z, @extremes[4].z);
      @extremes[5] = $point if is-greater-than(@extremes[5].z, $point.z);
   }
   # Find furthest pair
   my ($extreme0, $extreme1) = @extremes[0,1];
   for ^6 -> $i {
      for $i+1..^6 -> $j {
         my $distance = distance-point-point(@extremes[$i], @extremes[$j]);
         if is-greater-than($distance, distance-point-point($extreme0, $extreme1)) {
            ($extreme0, $extreme1) = @extremes[$i], @extremes[$j]
         }
      }
   }
   # Find furthest point from line
   my $line = Line.new(u => $extreme0, v => $extreme1);
   my $extreme2 = @extremes[0];
   for @extremes -> $point {
      if is-greater-than(distance-point-line($point, $line), distance-point-line($extreme2, $line)) {
         $extreme2 = $point;
      }
   }
   # Find furthest point from plane
   my $extreme3 = @points[1];
   my $base-plane = Plane.new(u => $extreme0, v => $extreme1, w => $extreme2);
   for 1..$total-points -> $i {
      my $dist1 = abs(distance-point-plane(@points[$i], $base-plane));
      my $dist2 = abs(distance-point-plane($extreme3, $base-plane));
      if is-greater-than($dist1, $dist2) { $extreme3 = @points[$i] }
   }
   # Ensure proper orientation
   if is-greater-than(0, distance-point-plane($extreme3, $base-plane)) {
      ($extreme1, $extreme2) = $extreme2, $extreme1;
   }
   # Create 4 initial facets
   my @facet-indices = ^4;
   for ^4 -> $i {
      @facets.push(Facet.new(id => @facets.elems));
      @facet-indices[$i] = @facets.end;
   }
   @facets[@facet-indices[0]].plane = Plane.new(u => $extreme0, v => $extreme2, w => $extreme1);
   @facets[@facet-indices[1]].plane = Plane.new(u => $extreme0, v => $extreme1, w => $extreme3);
   @facets[@facet-indices[2]].plane = Plane.new(u => $extreme1, v => $extreme2, w => $extreme3);
   @facets[@facet-indices[3]].plane = Plane.new(u => $extreme2, v => $extreme0, w => $extreme3);
   @facets[@facet-indices[0]].neighbors = [@facet-indices[3], @facet-indices[2], @facet-indices[1]];
   @facets[@facet-indices[1]].neighbors = [@facet-indices[0], @facet-indices[2], @facet-indices[3]];
   @facets[@facet-indices[2]].neighbors = [@facet-indices[0], @facet-indices[3], @facet-indices[1]];
   @facets[@facet-indices[3]].neighbors = [@facet-indices[0], @facet-indices[1], @facet-indices[2]];
   # Assign remaining points to facets
   for @points[1..$total-points] -> $point {
      next if any(($extreme0,$extreme1,$extreme2,$extreme3)>>.&{$point.equals($_)});
      for ^4 -> $j {
         if is-above($point, @facets[@facet-indices[$j]].plane) {
            @hull-points[@facet-indices[$j]].push($point);
            last;
         }
      }
   }
   return ConvexHull3D.new(index => @facet-indices[0])
}
sub quick-hull-Td(@points, Int $total-points) {
   my $hull = get-initial-hull(@points, $total-points);

   # Initialize processing queue
   @queue = [$hull.index];
   @queue.append(@facets[$hull.index].neighbors[^3]);

   my $new-horizon = 0;
   while @queue {
      my $next-facet-index = @queue.shift;
      if @facets[$next-facet-index].is-deleted || !@hull-points[$next-facet-index] {
         $new-horizon = $next-facet-index unless @facets[$next-facet-index].is-deleted;
         next;
      }
      # Find furthest point from current facet
      my $point = @hull-points[$next-facet-index][0];
      for @hull-points[$next-facet-index] -> $vec {
         if is-greater-than(distance-point-plane($vec, @facets[$next-facet-index].plane), distance-point-plane($point, @facets[$next-facet-index].plane)) {
            $point = $vec;
         }
      }
      # Find horizon
      $time-step++;
      @res-facets-deleted = ();
      my $horizon = $hull.get-horizon($next-facet-index, $point, @res-facets-deleted);
      # Build new faces around horizon
      $time-step++;
      my ($from, $last-facet-index, $first-facet-index) = -1 xx 3;

      while @visit-time[$horizon] != $time-step {
         @visit-time[$horizon] = $time-step;
         my ($net, $facet-index, $new-facet-index);

         if @edges[0][$horizon].net-id == $from {
            $net = @edges[1][$horizon].net-id;
            $facet-index = @edges[1][$horizon].face-id;
         } else {
            $net = @edges[0][$horizon].net-id;
            $facet-index = @edges[0][$horizon].face-id;
         }
         # Find indices on facet f
         my ($point-index1, $point-index2) = 0, 0;
         for ^3 -> $i {
            $point-index1 = $i if @points[$horizon].equals(@facets[$facet-index].plane.vector-at($i));
            $point-index2 = $i if @points[$net].equals(@facets[$facet-index].plane.vector-at($i));
         }
         ($point-index1, $point-index2) = $point-index2, $point-index1 if ($point-index1 + 1) % 3 != $point-index2;
         # Create new facet
         @facets.push(Facet.new(
            id    => @facets.elems,
            plane => Plane.new(
               u  => @facets[$facet-index].plane.vector-at($point-index2),
               v  => @facets[$facet-index].plane.vector-at($point-index1),
               w  => $point
            )
         ));
         $new-facet-index = @facets.end;
         @res-facets-new.push($new-facet-index);
         @facets[$new-facet-index].neighbors[0] = $facet-index;
         @facets[$facet-index].neighbors[$point-index1] = $new-facet-index;
         if $last-facet-index >= 0 { # Link with previous new facet
            if @facets[$new-facet-index].plane.vector-at(1).equals(@facets[$last-facet-index].plane.u) {
               @facets[$new-facet-index].neighbors[1] = $last-facet-index;
               @facets[$last-facet-index].neighbors[2] = $new-facet-index;
            } else {
               @facets[$new-facet-index].neighbors[2] = $last-facet-index;
               @facets[$last-facet-index].neighbors[1] = $new-facet-index;
            }
         } else {
            $first-facet-index = $new-facet-index;
         }
         ($last-facet-index, $from, $horizon) = $new-facet-index, $horizon, $net
      }
      # Close the loop
      if @facets[$first-facet-index].plane.vector-at(1).equals(@facets[$last-facet-index].plane.u) {
         @facets[$first-facet-index].neighbors[1] = $last-facet-index;
         @facets[$last-facet-index].neighbors[2] = $first-facet-index;
      } else {
         @facets[$first-facet-index].neighbors[2] = $last-facet-index;
         @facets[$last-facet-index].neighbors[1] = $first-facet-index;
      }
      # Collect points from deleted facets
      @res-points = gather for @res-facets-deleted -> $facet-id {
         take @hull-points[$facet-id];
         @hull-points[$facet-id] = [];
      }
      # Reassign points to new facets
      for @res-points -> $vec {
         next if $vec.equals($point);
         for @res-facets-new -> $facet-id {
            if is-above($vec, @facets[$facet-id].plane) {
               @hull-points[$facet-id].push($vec) and last
            }
         }
      }
      @queue.append(@res-facets-new); # Enqueue new faces for processing
   }
   $hull.index = $new-horizon;
   return $hull
}
                                  # Example: a tetrahedron
(my @points = Vector.new).append( # placeholder at index 0
   Vector.new(x => 0, y => 0, z => 0, id => 1),
   Vector.new(x => 1, y => 0, z => 0, id => 2),
   Vector.new(x => 0, y => 1, z => 0, id => 3),
   Vector.new(x => 0, y => 0, z => 1, id => 4)
);
say quick-hull-Td(@points, 4).get-surface-area.fmt('%.3f');
#----------------------------------------------------- 814 quickselect-algorithm
my @v = <9 8 7 6 5 0 1 2 3 4>;
say map { select(@v, $_) }, 1 .. 10;

sub partition(@vector, $left, $right, $pivot-index) {
    my $pivot-value = @vector[$pivot-index];
    @vector[$pivot-index, $right] = @vector[$right, $pivot-index];
    my $store-index = $left;
    for $left ..^ $right -> $i {
        if @vector[$i] < $pivot-value {
            @vector[$store-index, $i] = @vector[$i, $store-index];
            $store-index++;
        }
    }
    @vector[$right, $store-index] = @vector[$store-index, $right];
    return $store-index;
}

sub select( @vector,
            \k where 1 .. @vector,
            \l where 0 .. @vector = 0,
            \r where l .. @vector = @vector.end ) {

    my ($k, $left, $right) = k, l, r;

    loop {
        my $pivot-index = ($left..$right).pick;
        my $pivot-new-index = partition(@vector, $left, $right, $pivot-index);
        my $pivot-dist = $pivot-new-index - $left + 1;
        given $pivot-dist <=> $k {
            when Same {
                return @vector[$pivot-new-index];
            }
            when More {
                $right = $pivot-new-index - 1;
            }
            when Less {
                $k -= $pivot-dist;
                $left = $pivot-new-index + 1;
            }
        }
    }
}
#------------------------------------------------------------------- 815 quine-1
my &f = {say $^s, $^s.raku;}; f "my \&f = \{say \$^s, \$^s.raku;}; f "
#------------------------------------------------------------------- 816 quine-2
{.fmt($_).say}(<{.fmt($_).say}(<%s>)>)
#------------------------------------------------- 817 quine-mccluskey-algorithm
# 20250620 Raku programming solution

# Convert integer to binary string of length vars
sub b2s(Int $i is copy, Int $vars) returns Str {
   return ( "0" x $vars ~ $i.base(2) ).substr( * - $vars )
}

# Count number of '1's in the string
sub bit-count(Str $s) returns Int { return $s.comb.grep('1').elems }

# Merge two implicants if they differ in exactly one bit; else return ''
sub merge(Str $i, Str $j) returns Str {
   my $diff-count = 0;

   return [~] gather for $i.comb Z $j.comb -> ($a, $b) {
      take do if 'X' eq $a | $b {
         $a ne $b ?? (return '') !! $a
      } elsif $a ne $b {
         ++$diff-count > 1 ?? (return '') !! 'X'
      } else {
         $a
      }
   }
}

# Check if prime covers one (prime can have 'X' as don't care)
sub is-cover(Str $prime, Str $one) returns Bool {
   for ^( min($prime.chars, $one.chars) ) -> $i {
      my ($p, $o) = ($prime, $one)>>.substr($i, 1);
      return False if ('X', $o).none eq $p;
   }
   return True;
}

# Check if all minterms in ones are covered by primes
sub is-full-cover(Set $all-primes, Set $ones) returns Bool {
   for $ones.keys -> $one {
      return False unless $all-primes.keys.grep({ is-cover($_, $one) }) > 0
   }
   return True;
}

# Compute prime implicants from cubes
sub compute-primes(Set $cubes, Int $vars) returns Set {
   my @sigma = set() xx ($vars + 1);
   my $sigma-count = 0;

   for ^($vars + 1) -> $j { # Group cubes by bit count
      for $cubes.keys -> $cube { @sigma[$j] ∪= $cube if bit-count($cube) == $j }
      if @sigma[$j].elems > 0 { $sigma-count = $j + 1 }
   }

   my $primes = set();

   while $sigma-count > 0 {
      my @nsigma = set() xx ($sigma-count - 1);
      my $redundant = set();

      for ^($sigma-count - 1) -> $i { # Try to merge adjacent groups
         my ($c1, $c2, $nc) = @sigma[$i], @sigma[$i + 1], set();

         for $c1.keys X $c2.keys -> ($a, $b) {
            if '' ne my $m = merge($a, $b) {
               $nc ∪= $m;
               $redundant ∪= $a;
               $redundant ∪= $b;
            }
         }
         @nsigma[$i] = $nc;
      }

      for ^$sigma-count -> $i { # Add non-redundant terms to primes
         for @sigma[$i].keys { $primes ∪= $_ unless $_ ∈ $redundant }
      }

      if ( $sigma-count = @nsigma.elems ) > 0 {
         @sigma[^$sigma-count] = @nsigma[^$sigma-count]
      }
   }
   return $primes;
}

# Return active primes selected by cubesel bitmask
sub active-primes(Int $cubesel, @primes) returns Set {
   my $s = b2s($cubesel, @primes.elems);

   return @primes[ ^@primes.elems .grep: { $s.substr($_,1) eq '1' } ].Set
}

# Find minimal cover of ones by primes using unate cover approach
sub unate-cover(Set $primes-set, Set $ones) returns Set {
   my @primes = $primes-set.keys.sort;
   my $min-count = Inf;
   my $min-sel = -1;
   my $total = 2 ** @primes.elems;

   for ^$total -> $cubesel {
      my $active = active-primes($cubesel, @primes);
      if is-full-cover($active, $ones) {
         if ( my $count = $active.elems ) < $min-count {
            ($min-count, $min-sel) = $count, $cubesel
         }
      }
   }
   return $min-sel == -1 ?? Set.new !! active-primes($min-sel, @primes);
}

# Main Quine-McCluskey function
sub qm(@ones, @zeros, @dc) returns Set {
    return Set.new if (@ones, @zeros, @dc)>>.elems.all == 0;

    my $max-val = (@ones, @zeros, @dc).flat.max // 0;
    my $num-vars = $max-val == 0 ?? 1 !! (log($max-val)/2.log).ceiling;
    my $ones-set = @ones.map({ b2s($_, $num-vars) }).Set;
    my $zeros-set = @zeros.map({ b2s($_, $num-vars) }).Set;
    my $dc-set = @dc.map({ b2s($_, $num-vars) }).Set;
    my $cubes = $ones-set ∪ $dc-set;
    my $primes = compute-primes($cubes, $num-vars);

    return unate-cover($primes, $ones-set);
}

say qm( [1, 2, 5], [], [0, 7] ).keys.sort.Str;
#--------------------------------- 818 ramer-douglas-peucker-line-simplification
sub norm (*@list) { @list»².sum.sqrt }

sub perpendicular-distance (@start, @end where @end !eqv @start, @point) {
    return 0 if @point eqv any(@start, @end);
    my ( $Δx, $Δy ) =   @end «-» @start;
    my ($Δpx, $Δpy) = @point «-» @start;
    ($Δx, $Δy) «/=» norm $Δx, $Δy;
    norm ($Δpx, $Δpy) «-» ($Δx, $Δy) «*» ($Δx*$Δpx + $Δy*$Δpy);
}

sub Ramer-Douglas-Peucker(@points where * > 1, \ε = 1) {
    return @points if @points == 2;
    my @d = (^@points).map: { perpendicular-distance |@points[0, *-1, $_] };
    my ($index, $dmax) = @d.first: @d.max, :kv;
    return flat
      Ramer-Douglas-Peucker( @points[0..$index], ε )[^(*-1)],
      Ramer-Douglas-Peucker( @points[$index..*], ε )
      if $dmax > ε;
    @points[0, *-1];
}

# TESTING
say Ramer-Douglas-Peucker(
   [(0,0),(1,0.1),(2,-0.1),(3,5),(4,6),(5,7),(6,8.1),(7,9),(8,9),(9,9)]
);
#----------------------------------------------------------- 819 ramseys-theorem
my $n = 17;
my @a = [ 0 xx $n ] xx $n;
@a[$_;$_] = '-' for ^$n;

for flat ^$n X 1,2,4,8 -> $i, $k {
    my $j = ($i + $k) % $n;
    @a[$i;$j] = @a[$j;$i] = 1;
}
.say for @a;

for combinations($n,4) -> $quartet {
    my $links = [+] $quartet.combinations(2).map: -> $i,$j { @a[$i;$j] }
    die "Bogus!" unless 0 < $links < 6;
}
say "OK";
#------------------------------------------------------- 820 range-consolidation
# Union
sub infix:<∪> (Range $a, Range $b) { Range.new($a.min,max($a.max,$b.max)) }

# Intersection
sub infix:<∩> (Range $a, Range $b) { so $a.max >= $b.min }

multi consolidate() { () }

multi consolidate($this is copy, **@those) {
    gather {
        for consolidate |@those -> $that {
            if $this ∩ $that { $this ∪= $that }
            else             { take $that }
        }
        take $this;
    }
}

for [[1.1, 2.2],],
    [[6.1, 7.2], [7.2, 8.3]],
    [[4, 3], [2, 1]],
    [[4, 3], [2, 1], [-1, -2], [3.9, 10]],
    [[1, 3], [-6, -1], [-4, -5], [8, 2], [-6, -6]]
-> @intervals {
    printf "%46s => ", @intervals.raku;
    say reverse consolidate |@intervals.grep(*.elems)».sort.sort({ [.[0], .[*-1]] }).map: { Range.new(.[0], .[*-1]) }
}
#--------------------------------------------------------- 821 range-expansion-1
sub range-expand (Str $range-description) {
    my token number { '-'? \d+ }
    my token range  { (<&number>) '-' (<&number>) }

    $range-description
        .split(',')
        .map({ .match(&range) ?? $0..$1 !! +$_ })
        .flat
}

say range-expand('-6,-3--1,3-5,7-11,14,15,17-20').join(', ');
#--------------------------------------------------------- 822 range-expansion-2
grammar RangeList {
    token TOP    { <term>* % ','    { make $<term>.map(*.made)       } }
    token term   { [<range>|<num>]  { make ($<num> // $<range>).made } }
    token range  { <num> '-' <num>  { make +$<num>[0] .. +$<num>[1]  } }
    token num    { '-'? \d+         { make +$/                       } }
}

say RangeList.parse('-6,-3--1,3-5,7-11,14,15,17-20').made.flat.join(', ');
#---------------------------------------------------------- 823 range-extraction
sub range-extraction (*@ints) {
    my $prev = NaN;
    my @ranges;

    for @ints -> $int {
        if $int == $prev + 1 {
            @ranges[*-1].push: $int;
        }
        else {
            @ranges.push: [$int];
        }
        $prev = $int;
    }
    join ',', @ranges.map: -> @r { @r > 2 ?? "@r[0]-@r[*-1]" !! @r }
}

say range-extraction
    -6, -3, -2, -1, 0, 1, 3, 4, 5, 7, 8, 9, 10, 11, 14, 15, 17, 18, 19, 20;

say range-extraction
    0,  1,  2,  4,  6,  7,  8, 11, 12, 14,
    15, 16, 17, 18, 19, 20, 21, 22, 23, 24,
    25, 27, 28, 29, 30, 31, 32, 33, 35, 36,
    37, 38, 39;
#------------------------------------------------------- 824 range-modifications
my @seq;

-> $op, $string { printf "%20s -> %s\n", $op, $string } for
  'Start',     to-string( @seq  = canonicalize "" ),
  'add 77',    to-string( @seq .= &add(77) ),
  'add 79',    to-string( @seq .= &add(79) ),
  'add 78',    to-string( @seq .= &add(78) ),
  'remove 77', to-string( @seq .= &remove(77) ),
  'remove 78', to-string( @seq .= &remove(78) ),
  'remove 79', to-string( @seq .= &remove(79) );

say '';
-> $op, $string { printf "%20s -> %s\n", $op, $string } for
  'Start',    to-string( @seq  = canonicalize "1-3,5-5" ),
  'add 1',    to-string( @seq .= &add(1) ),
  'remove 4', to-string( @seq .= &remove(4) ),
  'add 7',    to-string( @seq .= &add(7) ),
  'add 8',    to-string( @seq .= &add(8) ),
  'add 6',    to-string( @seq .= &add(6) ),
  'remove 7', to-string( @seq .= &remove(7) );

say '';
-> $op, $string { printf "%20s -> %s\n", $op, $string } for
  'Start',     to-string( @seq  = canonicalize "1-5,10-25,27-30" ),
  'add 26',    to-string( @seq .= &add(26) ),
  'add 9',     to-string( @seq .= &add(9) ),
  'add 7',     to-string( @seq .= &add(7) ),
  'remove 26', to-string( @seq .= &remove(26) ),
  'remove 9',  to-string( @seq .= &remove(9) ),
  'remove 7',  to-string( @seq .= &remove(7) );

say '';
-> $op, $string { printf "%30s -> %s\n", $op, $string } for
  'Start',                  to-string( @seq  = canonicalize "6-57,160-251,2700-7000000" ),
  'add "2502-2698"',        to-string( @seq .= &add("2502-2698") ),
  'add 41..69',             to-string( @seq .= &add(41..69) ),
  'remove 17..30',          to-string( @seq .= &remove(17..30) ),
  'remove 4391..6527',      to-string( @seq .= &remove("4391-6527") ),
  'add 2699',               to-string( @seq .= &add(2699) ),
  'add 76',                 to-string( @seq .= &add(76) ),
  'add 78',                 to-string( @seq .= &add(78) ),
  'remove "70-165"',        to-string( @seq .= &remove("70-165") ),
  'remove 16..31',          to-string( @seq .= &remove(16..31) ),
  'add 1.417e16 .. 3.2e21', to-string( @seq .= &add(1.417e16.Int .. 3.2e21.Int) ),
  'remove "4001-Inf"',      to-string( @seq .= &remove("4001-Inf") );


sub canonicalize (Str $ranges) { sort consolidate |sort parse-range $ranges }

sub parse-range (Str $_) { .comb(/\d+|'Inf'/).map: { +$^α .. +$^ω } }

sub to-string (@ranges) { qq|"{ @ranges».minmax».join('-').join(',') }"| }

multi add (@ranges, Int   $i) { samewith @ranges, $i .. $i }
multi add (@ranges, Str   $s) { samewith @ranges, |parse-range($s) }
multi add (@ranges, Range $r) { @ranges > 0 ?? (sort consolidate |sort |@ranges, $r) !! $r }

multi remove (@ranges, Int   $i) { samewith @ranges, $i .. $i }
multi remove (@ranges, Str   $s) { samewith @ranges, |parse-range($s) }
multi remove (@ranges, Range $r) {
    gather for |@ranges -> $this {
        if $r.min <= $this.min {
            if $r.max >= $this.min and $r.max < $this.max {
                take $r.max + 1 .. $this.max
            }
            elsif $r.max < $this.min {
                take $this
            }
        }
        else {
            if $r.max >= $this.max and $r.min <= $this.max {
                take $this.min .. $r.min - 1
            }
            elsif $r.max < $this.max and $r.min > $this.min {
                take $this.min .. $r.min - 1;
                take $r.max + 1 .. $this.max
            }
            else {
                take $this
            }
        }
    }
}

multi consolidate() { () }

multi consolidate($this is copy, **@those) {
    sub infix:<∪> (Range $a, Range $b) { Range.new($a.min,max($a.max,$b.max)) }

    sub infix:<∩> (Range $a, Range $b) { so $a.max >= $b.min }

    my @ranges = sort gather {
        for consolidate |@those -> $that {
            next unless $that;
            if $this ∩ $that { $this ∪= $that }
            else             { take $that }
        }
        take $this;
    }
    for reverse ^(@ranges - 1) {
        if @ranges[$_].max == @ranges[$_ + 1].min - 1 {
            @ranges[$_] = @ranges[$_].min .. @ranges[$_ + 1].max;
            @ranges[$_ + 1]:delete
        }
    }
    @ranges
}
#----------------------------------------------------------- 825 ranking-methods
my @scores =
    Solomon => 44,
    Jason   => 42,
    Errol   => 42,
    Garry   => 41,
    Bernard => 41,
    Barry   => 41,
    Stephen => 39;

sub tiers (@s) { @s.classify(*.value).pairs.sort.reverse.map: { .value».key } }

sub standard (@s) {
    my $rank = 1;
    gather for tiers @s -> @players {
	take $rank => @players;
	$rank += @players;
    }
}

sub modified (@s) {
    my $rank = 0;
    gather for tiers @s -> @players {
	$rank += @players;
	take $rank => @players;
    }
}

sub dense (@s) { tiers(@s).map: { ++$_ => @^players } }

sub ordinal (@s) { @s.map: ++$_ => *.key }

sub fractional (@s) {
    my $rank = 1;
    gather for tiers @s -> @players {
	my $beg = $rank;
	my $end = $rank += @players;
	take [+]($beg ..^ $end) / @players => @players;
    }
}

say   "Standard:";   .perl.say for   standard @scores;
say "\nModified:";   .perl.say for   modified @scores;
say "\nDense:";      .perl.say for      dense @scores;
say "\nOrdinal:";    .perl.say for    ordinal @scores;
say "\nFractional:"; .perl.say for fractional @scores;
#------------------------------------------------------------ 826 rare-numbers-1
# 20220315 Raku programming solution

sub rare (\target where ( target > 0 and target ~~ Int )) {

   my \digit          = $ = 2;
   my $count          = 0;
   my @numeric_digits = 0..9 Z, 0 xx *;
   my @diffs1         = 0,1,4,5,6;

   # all possible digits pairs to calculate potential diffs
   my @pairs     = 0..9 X 0..9;
   my @all_diffs = -9..9;

   # lookup table for the first diff
   my @lookup_1 = [ [[2, 2], [8, 8]],    # Diff = 0
                    [[8, 7], [6, 5]],    # Diff = 1
                    [],
                    [],
                    [[4, 0],       ],    # Diff = 4
                    [[8, 3],       ],    # Diff = 5
                    [[6, 0], [8, 2]], ]; # Diff = 6

   # lookup table for all the remaining diffs
   given my %lookup_n { for @pairs -> \pair { $_{ [-] pair.values }.push: pair } }

   loop {
      my @powers = 10 <<**<< (0..digit-1); #  powers like 1, 10, 100, 1000....

      #  for n-r (aka L) the required terms, like 9/ 99 / 999 & 90 / 99999 & 9999 & 900 etc
      my @terms = (@powers.reverse Z- @powers).grep: * > 0 ;

      # create a cartesian product for all potential diff numbers
      # for the first use the very short one, for all other the complete 19 element
      my @diff_list = digit == 2 ?? @diffs1 !! [X] @diffs1, |(@all_diffs xx digit div 2 - 1);

      my @diff_list_iter = gather for @diff_list -> \k {
         # remove invalid first diff/second diff combinations
         { take k andthen next } if k.elems == 1 ;
         given (my (\a,\b) = k.values) {
            when a == 0 && b != 0                                    { next }
            when a == 1 && b ∉ [ -7, -5, -3, -1,  1, 3, 5, 7       ] { next }
            when a == 4 && b ∉ [ -8, -6, -4, -2,  0, 2, 4, 6, 8    ] { next }
            when a == 5 && b ∉ [ -3,  7                            ] { next }
            when a == 6 && b ∉ [ -9, -7, -5, -3, -1, 1, 3, 5, 7, 9 ] { next }
            default { take k }
         }
      }

      for @diff_list_iter -> \diffs {
         # calculate difference of original n and its reverse (aka L = n-r)
         # which must be a perfect square
         if (my \L = [+] diffs <<*>> @terms) > 0 and { $_ == $_.Int }(L.sqrt) {
            # potential candiate, at least L is a perfect square
            # placeholder for the digits
            my \dig = @ = 0 xx digit;

            # generate a cartesian product for each identified diff using the lookup tables
            my @c_iter = digit == 2
               ?? @lookup_1[diffs[0]].map: { [ $_ ] }
               !! [X] @lookup_1[diffs[0]], |(1..(+diffs + (digit % 2 - 1))).map: -> \k {
                  k == diffs ?? @numeric_digits !! %lookup_n{diffs[k]} }

            # check each H (n+r) by using digit combination
            for @c_iter -> \elt {
               for elt.kv -> \i, \pair { dig[i,digit-1-i] = pair.values }
               # for numbers with odd # digits restore the middle digit
               # which has been overwritten at the end of the previous cycle
               dig[(digit - 1) div 2] = elt[+elt - 1][0] if digit % 2 == 1 ;

	       my \rev = ( my \num = [~] dig ).flip;

               if num > rev and { $_ == $_.Int }((num+rev).sqrt) {
                  printf "%d: %12d reverse %d\n", $count+1, num, rev;
		  exit if ++$count == target;
               }
            }
         }
      }
      digit++
   }
}

my $N = 5;
say "The first $N rare numbers are,";
rare $N;
#------------------------------------------------------- 827 rational-calculator
say 'Enter an empty line to quit';

while my $line = prompt('>') {
     state $this;
     $line.=subst: '@', $this;
     $this = $line.EVAL.FatRat;
     my ($non-rep, $repeating) = $this.base-repeating: 10;
     say $repeating ?? sprintf( '=%s(%s)', $non-rep, $repeating)  !! "=$non-rep"
}
#----------------------------------------------------- 828 ray-casting-algorithm
constant ε = 0.0001;

sub ray-hits-seg([\Px,\Py], [[\Ax,\Ay], [\Bx,\By]] --> Bool) {
    Py += ε if Py == Ay | By;

    if Py < Ay or Py > By or Px > (Ax max Bx) {
	False;
    }
    elsif Px < (Ax min Bx) {
	True;
    }
    else {
	my \red  = Ax == Bx ?? Inf !! (By - Ay) / (Bx - Ax);
	my \blue = Ax == Px ?? Inf !! (Py - Ay) / (Px - Ax);
	blue >= red;
    }
}

sub point-in-poly(@point, @polygon --> Bool) {
    so 2 R% [+] gather for @polygon -> @side {
	take ray-hits-seg @point, @side.sort(*.[1]);
    }
}

my %poly =
    squared =>
	 [[[ 0.0,  0.0], [10.0,  0.0]],
	  [[10.0,  0.0], [10.0, 10.0]],
	  [[10.0, 10.0], [ 0.0, 10.0]],
	  [[ 0.0, 10.0], [ 0.0,  0.0]]],
    squaredhole =>
	 [[[ 0.0,  0.0], [10.0,  0.0]],
	  [[10.0,  0.0], [10.0, 10.0]],
	  [[10.0, 10.0], [ 0.0, 10.0]],
	  [[ 0.0, 10.0], [ 0.0,  0.0]],
	  [[ 2.5,  2.5], [ 7.5,  2.5]],
	  [[ 7.5,  2.5], [ 7.5,  7.5]],
	  [[ 7.5,  7.5], [ 2.5,  7.5]],
	  [[ 2.5,  7.5], [ 2.5,  2.5]]],
    strange =>
	 [[[ 0.0,  0.0], [ 2.5,  2.5]],
	  [[ 2.5,  2.5], [ 0.0, 10.0]],
	  [[ 0.0, 10.0], [ 2.5,  7.5]],
	  [[ 2.5,  7.5], [ 7.5,  7.5]],
	  [[ 7.5,  7.5], [10.0, 10.0]],
	  [[10.0, 10.0], [10.0,  0.0]],
	  [[10.0,  0.0], [ 2.5,  2.5]],
	  [[ 2.5,  2.5], [ 0.0,  0.0]]],  # conjecturally close polygon
    exagon =>
	 [[[ 3.0,  0.0], [ 7.0,  0.0]],
	  [[ 7.0,  0.0], [10.0,  5.0]],
	  [[10.0,  5.0], [ 7.0, 10.0]],
	  [[ 7.0, 10.0], [ 3.0, 10.0]],
	  [[ 3.0, 10.0], [ 0.0,  5.0]],
	  [[ 0.0,  5.0], [ 3.0,  0.0]]];

my @test-points =
	  [  5.0,  5.0],
	  [  5.0,  8.0],
	  [-10.0,  5.0],
	  [  0.0,  5.0],
	  [ 10.0,  5.0],
	  [  8.0,  5.0],
	  [ 10.0, 10.0];

for <squared squaredhole strange exagon> -> $polywanna {
    say "$polywanna";
    my @poly = %poly{$polywanna}[];
    for @test-points -> @point {
	say "\t(@point.fmt('%.1f',','))\t{ point-in-poly(@point, @poly) ?? 'IN' !! 'OUT' }";
    }
}
#---------------------------------------------- 829 real-constants-and-functions
say e;            # e
say π; # or pi    # pi
say τ; # or tau   # tau

# Common mathmatical function are availble
# as subroutines and as numeric methods.
# It is a matter of personal taste and
# programming style as to which is used.
say sqrt 2;       # Square root
say 2.sqrt;       # Square root

# If you omit a base, does natural logarithm
say log 2;        # Natural logarithm
say 2.log;        # Natural logarithm

# Specify a base if other than e
say log 4, 10;    # Base 10 logarithm
say 4.log(10);    # Base 10 logarithm
say 4.log10;      # Convenience, base 10 only logarithm

say exp 7;        # Exponentiation base e
say 7.exp;        # Exponentiation base e

# Specify a base if other than e
say exp 7, 4;     # Exponentiation
say 7.exp(4);     # Exponentiation
say 4 ** 7;       # Exponentiation

say abs -2;       # Absolute value
say (-2).abs;     # Absolute value

say floor -3.5;   # Floor
say (-3.5).floor; # Floor

say ceiling pi;   # Ceiling
say pi.ceiling;   # Ceiling

say e ** π\i + 1 ≅ 0; # :-)
#--------------------------------------------------------- 830 recamans-sequence
my @recamans = 0, {
   state %seen;
   state $term;
   $term++;
   my $this = $^previous - $term;
   $this = $previous + $term unless ($this > 0) && !%seen{$this};
   %seen{$this} = True;
   $this
} … *;

put "First fifteen terms of Recaman's sequence: ", @recamans[^15];

say "First duplicate at term: a[{ @recamans.first({@recamans[^$_].Bag.values.max == 2})-1 }]";

my @seen;
my int $i = 0;
loop {
    next if (my int $this = @recamans[$i++]) > 1000 or @seen[$this];
    @seen[$this] = 1;
    say "Range 0..1000 covered by terms up to a[{$i - 1}]" and last if ++$ == 1001;
}
#------------------------------------------------ 831 reduced-row-echelon-form-1
sub rref (@m) {
    my ($lead, $rows, $cols) = 0, @m, @m[0];
    for ^$rows -> $r {
        return @m unless $lead < $cols;
        my $i = $r;
        until @m[$i;$lead] {
            next unless ++$i == $rows;
            $i = $r;
            return @m if ++$lead == $cols;
        }
        @m[$i, $r] = @m[$r, $i] if $r != $i;
        @m[$r] »/=» $ = @m[$r;$lead];

        for ^$rows -> $n {
            next if $n == $r;
            @m[$n] »-=» @m[$r] »×» (@m[$n;$lead] // 0);
        }
        ++$lead;
    }
    @m
}

sub rat-or-int ($num) {
    return $num unless $num ~~ Rat;
    return $num.narrow if $num.narrow ~~ Int;
    $num.nude.join: '/';
}

sub say_it ($message, @array) {
    say "\n$message";
    $_».&rat-or-int.fmt(" %5s").say for @array;
}

my @M = (
    [ # base test case
      [  1,  2,  -1,  -4 ],
      [  2,  3,  -1, -11 ],
      [ -2,  0,  -3,  22 ],
    ],
    [ # mix of number styles
      [  3,   0,  -3,    1 ],
      [ .5, 3/2,  -3,   -2 ],
      [ .2, 4/5,  -1.6, .3 ],
    ],
    [ # degenerate case
      [ 1,  2,  3,  4,  3,  1],
      [ 2,  4,  6,  2,  6,  2],
      [ 3,  6, 18,  9,  9, -6],
      [ 4,  8, 12, 10, 12,  4],
      [ 5, 10, 24, 11, 15, -4],
    ],
    [ # larger matrix
      [1,  0,  0,  0,  0,  0,  1,  0,  0,  0,  0, -1,  0,  0,  0,  0,  0,  0],
      [1,  0,  0,  0,  0,  0,  0,  1,  0,  0,  0,  0, -1,  0,  0,  0,  0,  0],
      [1,  0,  0,  0,  0,  0,  0,  0,  1,  0,  0,  0,  0, -1,  0,  0,  0,  0],
      [0,  1,  0,  0,  0,  0,  1,  0,  0,  0,  0,  0,  0,  0, -1,  0,  0,  0],
      [0,  1,  0,  0,  0,  0,  0,  0,  1,  0,  0, -1,  0,  0,  0,  0,  0,  0],
      [0,  1,  0,  0,  0,  0,  0,  0,  0,  0,  1,  0,  0,  0,  0,  0, -1,  0],
      [0,  0,  1,  0,  0,  0,  1,  0,  0,  0,  0,  0, -1,  0,  0,  0,  0,  0],
      [0,  0,  1,  0,  0,  0,  0,  0,  0,  1,  0,  0,  0,  0, -1,  0,  0,  0],
      [0,  0,  0,  1,  0,  0,  0,  1,  0,  0,  0,  0,  0,  0,  0, -1,  0,  0],
      [0,  0,  0,  1,  0,  0,  0,  0,  0,  1,  0,  0, -1,  0,  0,  0,  0,  0],
      [0,  0,  0,  0,  1,  0,  0,  1,  0,  0,  0,  0,  0, -1,  0,  0,  0,  0],
      [0,  0,  0,  0,  1,  0,  0,  0,  1,  0,  0,  0,  0,  0,  0,  0, -1,  0],
      [0,  0,  0,  0,  1,  0,  0,  0,  0,  0,  1,  0,  0,  0,  0, -1,  0,  0],
      [0,  0,  0,  0,  0,  1,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0],
      [0,  0,  0,  0,  0,  0,  0,  0,  0,  1,  0,  0,  0,  0,  0,  0,  0,  0],
      [0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  1,  0,  1],
      [0,  0,  0,  0,  0,  1,  0,  0,  0,  0,  1,  0,  0,  0, -1,  0,  0,  0],
   ]
);

for @M -> @matrix {
    say_it( 'Original Matrix', @matrix );
    say_it( 'Reduced Row Echelon Form Matrix', rref(@matrix) );
    say "\n";
}
#------------------------------------------------ 832 reduced-row-echelon-form-2
sub    scale-row ( @M, \scale, \r       ) { @M[r]  =              @M[r]  »×» scale   }
sub    shear-row ( @M, \scale, \r1, \r2 ) { @M[r1] = @M[r1] »+» ( @M[r2] »×» scale ) }
sub   reduce-row ( @M,         \r,  \c  ) { scale-row @M, 1/@M[r;c], r }
sub clear-column ( @M,         \r,  \c  ) { shear-row @M, -@M[$_;c], $_, r for @M.keys.grep: * != r }

my @M = (
    [<  1   2   -1    -4 >],
    [<  2   3   -1   -11 >],
    [< -2   0   -3    22 >],
);

my $column-count = @M[0];
my $col = 0;
for @M.keys -> $row {
      reduce-row( @M, $row, $col );
    clear-column( @M, $row, $col );
    last if ++$col == $column-count;
}

say @$_».fmt(' %4g') for @M;
#------------------------------------------------ 833 reduced-row-echelon-form-3
class Matrix is Array {
    method  unscale-row ( @M: \scale, \row       ) { @M[row] =            @M[row] »/» scale }
    method  unshear-row ( @M: \scale, \r1,  \r2  ) { @M[r1]  = @M[r1] »-» @M[r2]  »×» scale }
    method   reduce-row ( @M:         \row, \col ) { @M.unscale-row( @M[row;col], row ) }
    method clear-column ( @M:         \row, \col ) { @M.unshear-row( @M[$_;col], $_, row ) for @M.keys.grep: * != row }

    method reduced-row-echelon-form ( @M: ) {
        my $column-count =  @M[0];
        my $col = 0;
        for @M.keys -> $row {
            @M.reduce-row(   $row, $col );
            @M.clear-column( $row, $col );
            return if ++$col == $column-count;
        }
    }
}

my $M = Matrix.new(
    [<  1   2   -1    -4 >],
    [<  2   3   -1   -11 >],
    [< -2   0   -3    22 >],
);

$M.reduced-row-echelon-form;
say @$_».fmt(' %4g') for @$M;
#----------------------------------------------------- 834 reflection-get-source
say &sum.file;
say Date.^find_method("day-of-week").file;
#--------------------------------------------------- 835 reflection-list-methods
class Foo {
    method foo ($x)      { }
    method bar ($x, $y)  { }
    method baz ($x, $y?) { }
}

my $object = Foo.new;

for $object.^methods {
    say join ", ", .name, .arity, .count, .signature.gist
}
#------------------------------------------------------- 836 regular-expressions
if 'a long string' ~~ /string$/ {
   say "It ends with 'string'";
}

# substitution has a few nifty features

$_ = 'The quick Brown fox';
s:g:samecase/\w+/xxx/;
.say;
# output:
# Xxx xxx Xxx xxx
#----------------------------------------------- 837 remove-vowels-from-a-string
my @vowels = (0x20 .. 0x2fff).map: { .chr if .chr.samemark('x') ~~ m:i/<[aæeiıoœu]>/ }

my $text = q:to/END/;
   Norwegian, Icelandic, German, Turkish, French, Spanish, English:
   Undervisningen skal være gratis, i det minste på de elementære og grunnleggende trinn.
   Skal hún veitt ókeypis, að minnsta kosti barnafræðsla og undirstöðummentu.
   Hochschulunterricht muß allen gleichermaßen entsprechend ihren Fähigkeiten offenstehen.
   Öğrenim hiç olmazsa ilk ve temel safhalarında parasızdır. İlk öğretim mecburidir.
   L'éducation doit être gratuite, au moins en ce qui concerne l'enseignement élémentaire et fondamental.
   La instrucción elemental será obligatoria. La instrucción técnica y profesional habrá de ser generalizada.
   Education shall be free, at least in the elementary and fundamental stages.
   END

put $text.subst(/@vowels/, ' ', :g);
#---------------------------------------------------------------- 838 rendezvous
class X::OutOfInk is Exception {
    method message() { "Printer out of ink" }
}

class Printer {
    has Str      $.id;
    has Int      $.ink = 5;
    has Lock     $!lock .= new;
    has ::?CLASS $.fallback;

    method print ($line) {
        $!lock.protect: {
            if    $!ink      { say "$!id: $line"; $!ink-- }
            elsif $!fallback { $!fallback.print: $line }
            else             { die X::OutOfInk.new }
        }
    }
}

my $printer =
    Printer.new: id => 'main', fallback =>
    Printer.new: id => 'reserve';

sub client ($id, @lines) {
    start {
        for @lines {
            $printer.print: $_;
            CATCH {
                when X::OutOfInk { note "<$id stops for lack of ink>"; exit }
            }
        }
        note "<$id is done>";
    }
}

await
    client('Humpty', q:to/END/.lines),
        Humpty Dumpty sat on a wall.
        Humpty Dumpty had a great fall.
        All the king's horses and all the king's men,
        Couldn't put Humpty together again.
        END
    client('Goose', q:to/END/.lines);
        Old Mother Goose,
        When she wanted to wander,
        Would ride through the air,
        On a very fine gander.
        Jack's mother came in,
        And caught the goose soon,
        And mounting its back,
        Flew up to the moon.
        END
#-------------------------------------------------------------- 839 rep-string-1
for <1001110011 1110111011 0010010010 1010101010 1111111111 0100101101 0100100 101 11 00 1> {
    if /^ (.+) $0+: (.*$) <?{ $0.substr(0,$1.chars) eq $1 }> / {
	my $rep = $0.chars;
	say .substr(0,$rep), .substr($rep,$rep).trans('01' => '𝟘𝟙'), .substr($rep*2);
    }
    else {
	say "$_ (no repeat)";
    }
}
#-------------------------------------------------------------- 840 rep-string-2
sub repstr(Str $s) {
    my $bits = :2($s);
    for reverse 1 .. $s.chars div 2 -> $left {
	my $right = $s.chars - $left;
	return $left if $bits +^ ($bits +> $left) == $bits +> $right +< $right;
    }
}


for '1001110011 1110111011 0010010010 1010101010 1111111111 0100101101 0100100 101 11 00 1'.words {
    if repstr $_ -> $rep {
	say .substr(0,$rep), .substr($rep,$rep).trans('01' => '𝟘𝟙'), .substr($rep*2);
    }
    else {
	say "$_ (no repeat)";
    }
}
#----------------------------------------------------------- 841 repeat-a-string
print "ha" x 5
#----------------------------------------------------- 842 resistance-calculator
class Resistor {
    has Str        $.symbol;
    has Numeric  ( $.voltage, $.resistance );
    has Resistor ( $.a, $.b );

    method res ( ) {
        given $.symbol {
            when '+' { return $.a.res + $.b.res }
            when '*' { return 1 / (1 / $.a.res  +  1 / $.b.res) }
            default  { return $.resistance }
        }
    }

    method set-voltage ( Numeric $voltage ) {
        given $.symbol {
            when '+' {
                my $ra = $.a.res;
                my $rb = $.b.res;
                $.a.set-voltage( $ra / ($ra+$rb) * $voltage );
                $.b.set-voltage( $rb / ($ra+$rb) * $voltage );
            }
            when '*' {
                $.a.set-voltage( $voltage );
                $.b.set-voltage( $voltage );
            }
        }
        $!voltage = $voltage;
    }
    method current ( ) { return $.voltage / self.res     }
    method effect  ( ) { return $.voltage * self.current }

    method report ( Int $level = 1 ) {
        my $pad = '| ' x $level;
        my $f = ( self.res, $.voltage, self.current, self.effect ).fmt('%8.3f');
        say "$f $pad$.symbol";
        $.a.report( $level+1 ) if $.a;
        $.b.report( $level+1 ) if $.b;
    }
}
multi sub infix:<+> (Resistor $a, Resistor $b) { $a.new( symbol => '+', :$a, :$b ) }
multi sub infix:<*> (Resistor $a, Resistor $b) { $a.new( symbol => '*', :$a, :$b ) }

my Resistor ($R1, $R2, $R3, $R4, $R5, $R6, $R7, $R8, $R9, $R10) =
    map { Resistor.new: symbol => 'r', resistance => $_ },
    6, 8, 4, 8, 4, 6, 8, 10, 6, 2;

my $node = (((($R8 + $R10) * $R9 + $R7) * $R6 + $R5)
                           * $R4 + $R3) * $R2 + $R1;
$node.set-voltage(18);

say '     Ohm     Volt   Ampere     Watt  Network tree';
$node.report;
#--------------------------------------------- 843 resistance-network-calculator
sub gauss ( @m is copy ) {
    for @m.keys -> \i {
        my \k = max |(i .. @m.end), :by({ @m[$_][i].abs });

        @m[i, k] .= reverse if \k != i;

        .[i ^.. *] »/=» .[i] given @m[i];

        for i ^.. @m.end -> \j {
            @m[j][i ^.. *] »-=« ( @m[j][i] «*« @m[i][i ^.. *] );
        }
    }
    for @m.keys.reverse -> \i {
        @m[^i]».[*-1] »-=« ( @m[^i]».[i] »*» @m[i][*-1] );
    }
    return @m».[*-1];
}
sub network ( Int \n, Int \k0, Int \k1, Str \grid ) {
    my @m = [0 xx n+1] xx n;

    for grid.split('|') -> \resistor {
        my ( \a, \b, \r_inv ) = resistor.split(/\s+/, :skip-empty);
        my \r = 1 / r_inv;

        @m[a][a] += r;
        @m[b][b] += r;
        @m[a][b] -= r if a > 0;
        @m[b][a] -= r if b > 0;
    }
    @m[k0][k0]  = 1;
    @m[k1][*-1] = 1;

    return gauss(@m)[k1];
}
use Test;
my @tests =
    (   10,   7, 0,     1, '0 2 6|2 3 4|3 4 10|4 5 2|5 6 8|6 1 4|3 5 6|3 6 6|3 1 8|2 1 8' ),
    (  3/2, 3*3, 0, 3*3-1, '0 1 1|1 2 1|3 4 1|4 5 1|6 7 1|7 8 1|0 3 1|3 6 1|1 4 1|4 7 1|2 5 1|5 8 1' ),
    ( 13/7, 4*4, 0, 4*4-1, '0 1 1|1 2 1|2 3 1|4 5 1|5 6 1|6 7 1|8 9 1|9 10 1|10 11 1|12 13 1|13 14 1|14 15 1|0 4 1|4 8 1|8 12 1|1 5 1|5 9 1|9 13 1|2 6 1|6 10 1|10 14 1|3 7 1|7 11 1|11 15 1' ),
    (  180,   4, 0,     3, '0 1 150|0 2 50|1 3 300|2 3 250' ),
;
plan +@tests;
is .[0], network( |.[1..4] ), .[4].substr(0,10)~'…' for @tests;
#------------------------------------------------------------- 844 resistor-mesh
my $*TOLERANCE = 1e-12;

sub set-boundary(@mesh,@p1,@p2) {
    @mesh[ @p1[0] ; @p1[1] ] =  1;
    @mesh[ @p2[0] ; @p2[1] ] = -1;
}

sub solve(@p1, @p2, Int \w, Int \h) {
    my @d     = [0 xx w] xx h;
    my @V     = [0 xx w] xx h;
    my @fixed = [0 xx w] xx h;
    set-boundary(@fixed,@p1,@p2);

    loop {
        set-boundary(@V,@p1,@p2);
        my $diff = 0;
        for (flat ^h X ^w) -> \i, \j {
            my @neighbors = (@V[i-1;j], @V[i;j-1], @V[i+1;j], @V[i;j+1]).grep: *.defined;
            @d[i;j] = my \v = @V[i;j] - @neighbors.sum / @neighbors;
            $diff += v × v unless @fixed[i;j];
        }
        last if $diff =~= 0;

        for (flat ^h X ^w) -> \i, \j {
            @V[i;j] -= @d[i;j];
        }
    }

    my @current;
    for (flat ^h X ^w) -> \i, \j {
        @current[ @fixed[i;j]+1 ] += @d[i;j] × (?i + ?j + (i < h-1) + (j < w-1) );
    }
    (@current[2] - @current[0]) / 2
}

say 2 / solve (1,1), (6,7), 10, 10;
#--------------------------------------- 845 respond-to-an-unknown-method-call-1
class Farragut {
    method FALLBACK ($name, *@rest) {
        say "{self.WHAT.raku}: $name.tc() the @rest[], full speed ahead!";
    }
}

class Sparrow is Farragut { }

Farragut.damn: 'torpedoes';
Sparrow.hoist: <Jolly Roger mateys>;
#--------------------------------------- 846 respond-to-an-unknown-method-call-2
class L-Value {
    our $.value = 10;
    method FALLBACK($name, |c) is rw { $.value }
}

my $l = L-Value.new;
say $l.any-odd-name; # 10
$l.some-other-name = 42;
say $l.i-dont-know; # 42
#---------------------------------------------------------- 847 reverse-a-string
say "hello world".flip;
say "as⃝df̅".flip;
say 'ℵΑΩ 駱駝道 🤔 🇸🇧 🇺🇸 🇬🇧‍ 👨‍👩‍👧‍👦🆗🗺'.flip;
#-------------------------------------------- 848 reverse-the-gender-of-a-string
say S:g:ii/«'she'»/he/ given "She was a soul stripper. She took my heart! They say she's going to put me on a shelf.";
#--------------------------------------------------------------- 849 rice-coding
package Rice {

  our sub encode(Int $n, UInt :$k = 2) {
    my $d = 2**$k;
    my $q = $n div $d;
    my $b = sign(1 + sign($q));
    my $m = abs($q) + $b;
    flat
      $b xx $m, 1 - $b,
      ($n mod $d).polymod(2 xx $k - 1).reverse
  }

  our sub decode(@bits is copy, UInt :$k = 2) {
    my $d = 2**$k;
    my $b = @bits.shift;
    my $m = 1;
    $m++ while @bits and @bits.shift == $b;
    my $q = $b ?? $m - 1 !! -$m;
    $q*$d + @bits.reduce(2 * * + *);
  }

}

CHECK {
  use Test;
  constant N = 100;
  plan 2*N + 1;
  is $_, Rice::decode Rice::encode $_ for -N..N;
}
#---------------------------------------------------------------- 850 ripemd-160
# https://github.com/grondilu/libdigest-raku/blob/master/lib/Digest/RIPEMD.rakumod

say rmd160 "Rosetta Code";

=begin CREDITS
Crypto-JS v2.0.0
http:#code.google.com/p/crypto-js/
Copyright (c) 2009, Jeff Mott. All rights reserved.
=end CREDITS

proto rmd160($) returns Blob is export {*}
multi rmd160(Str $str) { samewith $str.encode }

multi rmd160(Blob $data) {

  sub rotl(uint32 $n, $b) { $n +< $b +| $n +> (32 - $b) }

  blob8.new:
    map |*.polymod(256 xx 3),
    |reduce
      -> blob32 $h, @words {
        blob32.new: [Z+] map {$_[[^5].rotate(++$)]}, $h, |await
          map -> [&f, $r, @K, $s] {
            start {
              reduce -> $A, $j {
                $A[4],
                rotl(
                  ($A[0] + (BEGIN [
                    * +^ * +^ *,
                    { $^x +& $^y +| +^$x +& $^z },
                    (* +| +^*) +^ *,
                    { $^x +& $^z +| $^y +& +^$^z },
                    { $^x +^ ($^y +| +^$^z) }
                  ])[&f($j) div 16](|$A[1..3])
                  + @words[$r[$j]] + @K[$j]) mod 2**32,
                  $s[$j]
                ) + $A[4],
                $A[1],
                rotl($A[2], 10),
                $A[3]
              }, $h, |^80
            }
          },
          BEGIN Array.new:
            map -> [ &a,$b,@c,$d ] {
              [&a,.($b),(flat @c »xx» 16),.($d)] given *.comb».parse-base(16)
            },
            (  +*,
              "0123456789ABCDEF74D1A6F3C0952EB83AE49F812706DB5C19BA08C4D37FE56240597C2AE138B6FD",
              <0x00000000 0x5a827999 0x6ed9eba1 0x8f1bbcdc 0xa953fd4e>,
              "BEFC5879BDEF6798768DB97F7CF9B7DCBD67E9DFE8D65C75BCEFEF989E56865C9F5B68DC5CDEB856"
            ),
            (79-*,
              "5E7092B4D6F81A3C6B370D5AEF8C4912F5137E69B8C2A04D86413BF05C2D97AECFA4158762DE039B",
              <0x50a28be6 0x5c4dd124 0x6d703ef3 0x7a6d76e9 0x00000000>,
              "899BDFF5778BEEC69DF7C89B77C76FDB97FB866ECD5EDD75F58BEE6E69C9C5F885C9C5E68D65FDBB"
            )
          ;
      },
      (BEGIN blob32.new: 0x67452301, 0xefcdab89, 0x98badcfe, 0x10325476, 0xc3d2e1f0),
      |blob32.new(
        blob8.new(
          $data.list,
          0x80,
          0 xx (-($data.elems + 1 + 8) % 64),
          |(8 * $data).polymod: 256 xx 7
        ).rotor(4).map: { :256[@^x.reverse] }
      ).rotor(16);
}
#----------------------------------------------------- 851 rock-paper-scissors-1
my %vs = (
    options => [<Rock Paper Scissors>],
    ro => {
        ro => [ 2, ''                        ],
        pa => [ 1, 'Paper covers Rock: '     ],
        sc => [ 0, 'Rock smashes Scissors: ' ]
    },
    pa => {
        ro => [ 0, 'Paper covers Rock: '    ],
        pa => [ 2, ''                       ],
        sc => [ 1, 'Scissors cut Paper: '   ]
    },
    sc => {
        ro => [ 1, 'Rock smashes Scissors: '],
        pa => [ 0, 'Scissors cut Paper: '   ],
        sc => [ 2, ''                       ]
    }
);

my %choices = %vs<options>.map({; $_.substr(0,2).lc => $_ });
my $keys    = %choices.keys.join('|');
my $prompt  = %vs<options>.map({$_.subst(/(\w\w)/, -> $/ {"[$0]"})}).join(' ')~"? ";
my %weight  = %choices.keys »=>» 1;

my @stats = 0,0,0;
my $round;

while my $player = (prompt "Round {++$round}: " ~ $prompt).lc {
    $player.=substr(0,2);
    say 'Invalid choice, try again.' and $round-- and next
      unless $player.chars == 2 and $player ~~ /<$keys>/;
    my $computer = (flat %weight.keys.map( { $_ xx %weight{$_} } )).pick;
    %weight{$_.key}++ for %vs{$player}.grep( { $_.value[0] == 1 } );
    my $result = %vs{$player}{$computer}[0];
    @stats[$result]++;
    say "You chose %choices{$player},  Computer chose %choices{$computer}.";
    print %vs{$player}{$computer}[1];
    print ( 'You win!', 'You Lose!','Tie.' )[$result];
    say " - (W:{@stats[0]} L:{@stats[1]} T:{@stats[2]})\n",
};
#---------------------------------------------- 852 rodrigues-rotation-formula-1
sub infix:<⋅> { [+] @^a »×« @^b }
sub norm      (@v) { sqrt @v⋅@v }
sub normalize (@v) { @v X/ @v.&norm }
sub getAngle  (@v1,@v2) { 180/π × acos (@v1⋅@v2) / (@v1.&norm × @v2.&norm) }

sub crossProduct ( @v1, @v2 ) {
    my \a = <1 2 0>; my \b = <2 0 1>;
    (@v1[a] »×« @v2[b]) »-« (@v1[b] »×« @v2[a])
}

sub aRotate ( @p, @v, $a ) {
    my \ca = cos $a/180×π;
    my \sa = sin $a/180×π;
    my \t = 1 - ca;
    my (\x,\y,\z) = @v;
    map { @p⋅$_ },
        [   ca + x×x×t, x×y×t -  z×sa, x×z×t +  y×sa],
        [x×y×t +  z×sa,    ca + y×y×t, y×z×t -  x×sa],
        [z×x×t -  y×sa, z×y×t +  x×sa,    ca + z×z×t]
}

my @v1 = [5,-6,  4];
my @v2 = [8, 5,-30];
say join ' ', aRotate @v1, normalize(crossProduct @v1, @v2), getAngle @v1, @v2;
#---------------------------------------------- 853 rodrigues-rotation-formula-2
sub infix:<•> { sum @^v1 Z× @^v2 } # dot product

sub infix:<❌> (@v1, @v2) {         # cross product
    my \a = <1 2 0>; my \b = <2 0 1>;
    @v1[a] »×« @v2[b] »-« @v1[b] »×« @v2[a]
}

sub norm (*@v) { sqrt @v • @v }

sub normal (*@v) { @v X/ @v.&norm }

sub angle-between (@v1, @v2) { acos( (@v1 • @v2) / (@v1.&norm × @v2.&norm) ) }

sub infix:<⁢> is equiv(&infix:<×>) { $^a × $^b } # invisible times

sub postfix:<°> (\d) { d × τ / 360 } # degrees to radians

sub rodrigues-rotate( @point, @axis, $θ ) {
    my ( \cos𝜃, \sin𝜃 ) = cis($θ).reals;
    my ( \𝑥, \𝑦, \𝑧 )   = @axis;
    my \𝑡 = 1 - cos𝜃;

    map @point • *, [
       [ 𝑥²⁢𝑡 + cos𝜃, 𝑦⁢𝑥⁢𝑡 - 𝑧⁢sin𝜃, 𝑧⁢𝑥⁢𝑡 + 𝑦⁢sin𝜃 ],
       [ 𝑥⁢𝑦⁢𝑡 + 𝑧⁢sin𝜃, 𝑦²⁢𝑡 + cos𝜃, 𝑧⁢𝑦⁢𝑡 - 𝑥⁢sin𝜃 ],
       [ 𝑥⁢𝑧⁢𝑡 - 𝑦⁢sin𝜃, 𝑦⁢𝑧⁢𝑡 + 𝑥⁢sin𝜃, 𝑧²⁢𝑡 + cos𝜃 ]
    ]
}

sub point-vector (@point, @vector) {
    rodrigues-rotate @point, normal(@point ❌ @vector), angle-between @point, @vector
}

put qq:to/TESTING/;
Task example - Point and composite axis / angle:
{ point-vector [5, -6, 4], [8, 5, -30] }

Perhaps more useful, (when calculating a range of motion for a robot appendage,
for example), feeding a point, axis of rotation and rotation angle separately;
since theoretically, the point vector and axis of rotation should be constant:

{
(0, 10, 20 ... 180).map( { # in degrees
    sprintf "Rotated %3d°: %.13f, %.13f, %.13f", $_,
    rodrigues-rotate [5, -6, 4], ([5, -6, 4] ❌ [8, 5, -30]).&normal, .°
}).join: "\n"
}
TESTING
#--------------------------------------------------- 854 roman-numerals-decode-1
sub rom-to-num($r) {
    [+] gather $r.uc ~~ /
        ^
        [
        | M  { take 1000 }
        | CM { take 900 }
        | D  { take 500 }
        | CD { take 400 }
        | C  { take 100 }
        | XC { take 90 }
        | L  { take 50 }
        | XL { take 40 }
        | X  { take 10 }
        | IX { take 9 }
        | V  { take 5 }
        | IV { take 4 }
        | I  { take 1 }
        ]+
        $
    /;
}

say "$_ => &rom-to-num($_)" for <MCMXC MDCLXVI MMVIII>;
#--------------------------------------------------- 855 roman-numerals-decode-2
sub rom-to-num($r) {
    [+] gather $r.uc ~~ /
        ^
        ( (C*)M { take 1000 - 100 * $0.chars } )*
        ( (C*)D { take  500 - 100 * $0.chars } )?
        ( (X*)C { take  100 -  10 * $0.chars } )*
        ( (X*)L { take   50 -  10 * $0.chars } )?
        ( (I*)X { take   10 -       $0.chars } )*
        ( (I*)V { take    5 -       $0.chars } )?
        (     I { take    1                  } )*
        [ $ || { return NaN } ]
    /;
}

say "$_ => ", rom-to-num($_) for <MCMXC mdclxvi MMViii IIXX ILL>;
#----------------------------------------------------- 856 roman-numerals-encode
my %symbols =
    1 => "I", 5 => "V", 10 => "X", 50 => "L", 100 => "C",
    500 => "D", 1_000 => "M";

my @subtractors =
    1_000, 100,  500, 100,  100, 10,  50, 10,  10, 1,  5, 1,  1, 0;

multi sub roman (0) { '' }
multi sub roman (Int $n) {
    for @subtractors -> $cut, $minus {
        $n >= $cut
            and return %symbols{$cut} ~ roman($n - $cut);
        $n >= $cut - $minus
            and return %symbols{$minus} ~ roman($n + $minus);
     }
}

# Sample usage

for 1 .. 2_010 -> $x {
    say roman($x);
}
#----------------------------------------------- 857 roots-of-a-cubic-polynomial
my \r = 1/sqrt(2);
my Pair @m = [[
      triple       => [[ 1, -1,  0], [ 0,  1, -1], [ 0,  0,  1] ],
      double       => [[ 2,  0,  0], [ 0, -1,  0], [ 0,  0, -1] ],
      distinct     => [[ 2,  0,  0], [ 0,  3,  4], [ 0,  4,  9] ],
      rotation     => [[ 1,  0,  0], [ 0,  r, -r], [ 0,  r,  r] ],
   ]];
for ^@m {
   my Pair $pair = @m[$_];                  print "\n  {1+$_}:  {$pair.key} ";
   my @t = $pair.value.[];                  say 'matrix: 	  ', @t.raku;
   my @poly = polynomial( @t );             say 'polynomial:  ', @poly.raku;
   my @reduction = reduction( |@poly );     say 'reduction :  ', @reduction.raku;
   my ( $s, $e ) = spectrum( @t );          say 'eigenvalues: ', @$s.raku;
                                            say 'errors: 	  ', @$e.raku;
}
sub horner( \x, \a, \b, \c, \d ) {          # cubic polynomial using horner's method
    ((a * x + b) * x + c) * x + d
}
sub polynomial( @t ) {
    my \a = 1;                                  # create characteristic polynomial
    my \b = -(@t[0;0] + @t[1;1] + @t[2;2]);                     # = -trace
    my \c = ( @t[0;0]*@t[1;1] + @t[1;1]*@t[2;2] + @t[2;2]*@t[0;0] )
            -(@t[1;2]*@t[2;1] + @t[2;0]*@t[0;2] + @t[0;1]*@t[1;0] );
    my \d = - @t[0;0] * @t[1;1] * @t[2;2]
            - @t[0;1] * @t[1;2] * @t[2;0]
            - @t[0;2] * @t[1;0] * @t[2;1]
            + @t[0;0] * @t[2;1] * @t[1;2]
            + @t[0;1] * @t[1;0] * @t[2;2]
            + @t[0;2] * @t[1;1] * @t[2;0];                  # = -determinant
    return [ a, b, c, d]>>.narrow;
}
sub reduction( \a, \b, \c, \d ) {
    my \delta = 18 * a * b * c * d - 4 * b **3 * d + b**2 * c**2 - 4 * a * c**3 - 27 * a**2 * d**2;
    my \p = (3 * a * c - b * b) / (3 * a * a);
    my \q = (2 * b ** 3 - 9 * a * b * c + 27 * a ** 2 * d) / (27 * a ** 3);
    my \d0 = b*b - 3 * a * c;
    my \d1 = 2*b**3 - 9*a*b*c + 27 * a**2 * d;
    return [ delta, p, q, d0, d1 ];
}
sub solution( \a, \b, \c, \d, \delta, \p, \q, \d0, \d1 ) {
    my @x;
    if abs(delta) =~= 0 {           # say " multiple real roots ", p.raku ;
        if abs(p) =~= 0 {           # say " triple equal real roots: ";;
            @x[$_] = 0 for ^3;
        }
        else {                      # say ' double real root:';
            @x[0] = 3 * q / p;
            @x[1] = -3 * q /(2 * p);
            @x[2] = @x[1];
        }
    }
    elsif delta > 0 {               # say " three distinct real roots:";
        @x[$_] = 2*sqrt(-p/3) * cos( acos( sqrt( -3 / p ) * 3 * q /( 2 * p ) )/3 - 2*pi * $_/ 3 ) for ^3;
    }
    else {      # delta < 0;        say " one real root and two complex conjugate roots:";
        my $g = do {
            if d0 == 0 and d1 < 0 {
                -(-d1)**⅓;
            }
            elsif d0 < 0 and d1 == 0 {
                -sqrt(-d0);
            }
            else {
                my \s = Complex( d1**2 - 4 * d0**3 ).sqrt;
                my \g1 = (( d1 + s )/2)**⅓;
                my \g2 = (( d1 - s )/2)**⅓;
                g1 == 0 ?? g2 !! g1
            }
        }
        my Complex $z = $g * ( -1 + Complex(-3).sqrt )/2;
        @x[0] = -⅓ * ( $g + d0 / $g );
        @x[1] = -⅓ * ( $z + d0 / $z );
        @x[2] = @x[1].conj;
    }
    @x[$_] -= ⅓ * b / a for ^3;
    return @x;
}
sub spectrum( @mat ) {
    my ( \a, \b, \c, \d )         = polynomial( @mat );
    my (\delta, \p, \q, \d0, \d1) = reduction( a, b, c, d );
    my @s = solution( a, b, c, d, delta, p, q, d0, d1 )>>.narrow;
    my @e = @s.map( { horner( $_, a, b, c, d ) })>>.narrow;
    return ( @s, @e );
}
#------------------------------------------------------- 858 roots-of-a-function
sub f(\x) { x³ - 3*x² + 2*x }

my $start = -1;
my $stop = 3;
my $step = 0.001;

for $start, * + $step ... $stop -> $x {
    state $sign = 0;
    given f($x) {
        my $next = .sign;
        when 0.0 {
            say "Root found at $x";
        }
        when $sign and $next != $sign {
            say "Root found near $x";
        }
        NEXT $sign = $next;
    }
}
#--------------------------------------------- 859 roots-of-a-quadratic-function
for
[1, 2, 1],
[1, 2, 3],
[1, -2, 1],
[1, 0, -4],
[1, -10⁶, 1]
-> @coefficients {
    printf "Roots for %d, %d, %d\t=> (%s, %s)\n",
    |@coefficients, |quadroots(@coefficients);
}

sub quadroots (*[$a, $b, $c]) {
    ( -$b + $_ ) / (2 × $a),
    ( -$b - $_ ) / (2 × $a)
    given
    ($b² - 4 × $a × $c ).Complex.sqrt.narrow
}
#---------------------------------------------------------- 860 roots-of-unity-1
constant n = 10;
for ^n -> \k {
    say cis(k*τ/n);
}
#---------------------------------------------------------- 861 roots-of-unity-2
.say for 1.roots(9)
#------------------------------------------ 862 rosetta-code-find-bare-lang-tags
my $lang = '(no language)';
my $total = 0;
my %blanks;

for lines() {
  when / '<lang>' / {
    %blanks{$lang}++;
    $total++;
  }
  when ms/ '==' '{{' 'header' '|' ( <-[}]>+? ) '}}' '==' / {
    $lang = $0.lc;
  }
}

say "$total bare language tag{ 's' if $total != 1 }\n";
say .value, ' in ', .key for %blanks.sort;
#------------------------------------------- 863 round-robin-tournament-schedule
my @players = (1,0)[$_%2] .. $_ given 12;
my $half = +@players div 2;
my $round = 0;

loop {
    printf "Round %2d: %s\n", ++$round, "{ zip( @players[^$half], @players[$half..*].reverse ).map: { sprintf "(%2d vs %-2d)", |$_ } }";
    @players[1..*].=rotate(-1);
    last if [<] @players;
}
#----------------------------------------- 864 routh-hurwitz-stability-criterion
# 20260101 Raku programming solution

# Global epsilon for numerical stability checks
constant DEFAULT_TOLERANCE   = 1e-9;
# Epsilon value for replacing a zero in the first column
constant EPSILON_REPLACEMENT = 0.01;

sub routh-hurwitz( @coeff-vector is copy,
                   :$epss-replacement = EPSILON_REPLACEMENT,
                   :$tolerance = DEFAULT_TOLERANCE) {

   without my $first-non-zero-idx = @coeff-vector.first(*.abs > $tolerance,:k) {
      my $num-coeffs =   @coeff-vector.elems max 1;
      my $rh-cols    = ( $num-coeffs div 2 ) max 1;
      my @table      = [ 0e0 xx $rh-cols ] xx $num-coeffs;
      return @table, 0, False, "System has all zero coefficients, stability is ill-defined (considered unstable).";
   }

   # Trim leading zeros
   @coeff-vector = @coeff-vector[$first-non-zero-idx..*];
   my $coeff-length = @coeff-vector.elems;

   if $coeff-length == 0 {
      return [[0e0]], 0, False, "Coefficient vector is empty after trimming."
   }

   if $coeff-length == 1 {
      return @coeff-vector[0].abs < $tolerance
         ?? ( [[@coeff-vector[0]]], 0, False, "System is P(s)=0, unstable." )
         !! [[@coeff-vector[0]]], 0, True, "System is stable (0th order, non-zero constant).";
   }

   my $rh-table-column = ( $coeff-length / 2.0 ).ceiling max 1;
   my @rh-table        = [ 0e0 xx $rh-table-column ] xx $coeff-length;

   for @coeff-vector.kv -> $k, $val { # Fill Row 0 and Row 1 from coefficients
      my $row-idx = $k % 2;
      my $col-idx = $k div 2;
      if $col-idx < $rh-table-column { @rh-table[$row-idx][$col-idx] = $val }
   }

   my $had-row-zeros = False;

   if $coeff-length > 1 { # Special check for row 1 if all zeros
      my ($is-zero, $msg) = check-and-fix-zero-row(@rh-table, 1, $coeff-length, $tolerance);
      if $is-zero { $had-row-zeros = True }
   }

   for 2..^$coeff-length -> $i-py-row { # Calculate other elements of the table
      my $prev-row-py      = $i-py-row - 1;
      my $prev-prev-row-py = $i-py-row - 2;

      # Special case: row of all zeros in previous row
      my ($is-prev-zero, $msg-prev) = check-and-fix-zero-row(@rh-table, $prev-row-py, $coeff-length, $tolerance);
      if $is-prev-zero { $had-row-zeros = True }

      # Denominator for the current row's calculation
      my $denominator = @rh-table[$prev-row-py][0];

      if $denominator.abs < $tolerance {
         if $epss-replacement.abs < $tolerance {
            return @rh-table, $coeff-length, False, "System unstable or ill-defined: Division by zero, and epsilon ({$epss-replacement}) is zero.";
         }
         ($denominator, @rh-table[$prev-row-py][0]) = $epss-replacement xx 2
      }

      for ^($rh-table-column - 1) -> $j-col {
         my $next-col = $j-col + 1;
         my ($val1, $val2) = do if $next-col < $rh-table-column {
            @rh-table[$prev-prev-row-py][$next-col] // 0e0,
            @rh-table[$prev-row-py][$next-col] // 0e0
         }
         my $numerator = ($denominator * $val1) -
                         (@rh-table[$prev-prev-row-py][0] * $val2);
         @rh-table[$i-py-row][$j-col] = $numerator / $denominator;
      }

      # Snap small values to zero to handle floating point errors
      for ^$rh-table-column -> $j {
         given @rh-table[$i-py-row][$j] { $_ = 0e0 if .abs < $tolerance }
      }

      # Special case: row of all zeros after calculation
      my ($is-curr-zero, $msg-curr) = check-and-fix-zero-row(@rh-table, $i-py-row, $coeff-length, $tolerance);
      $had-row-zeros = True if $is-curr-zero;

      # Special case: zero in the first column
      given @rh-table[$i-py-row][0] { $_ = $epss-replacement if .abs < $tolerance }
   }

   # Compute number of right hand side poles
   my $unstable-poles = 0;
   my @first-column = ^$coeff-length .map: { @rh-table[$_][0] } ;
   for @first-column.rotor(2 => -1) {
      next if .[0].abs < $tolerance || .[1].abs < $tolerance; # close to zero
      $unstable-poles++ if .[0].sign * .[1].sign == -1
   }

   my $is-stable = $unstable-poles == 0;
   my $message = do if $is-stable {
      do if $had-row-zeros {
         "System is marginally stable (poles on the imaginary axis)."
      } elsif @coeff-vector[*-1].abs < $tolerance {
         "System is marginally stable (pole at origin)."
      } else {
         "System is STABLE."
      }
   } else {
      "System is UNSTABLE with $unstable-poles pole(s) in the RHP."
   }
   return @rh-table, $unstable-poles, $is-stable, $message
}

# Helper to detect a row of zeros and replace it with the derivative of the Auxiliary Polynomial (Previous Row)
sub check-and-fix-zero-row(@table, $row-idx, $total-rows, $tolerance) {
   # 1. Check if row is all zeros
    return (False, "") if @table[$row-idx].first: *.abs >= $tolerance;

   # 2. Get Previous Row (Auxiliary Polynomial)
   my $prev-row-idx = $row-idx - 1;
   return (False, "Error: First row cannot be zero derived.") if $prev-row-idx < 0;
   # 3. Calculate Derivative
   my $order = ($total-rows - 1) - $prev-row-idx;

   my $all-zeros-generated = True;
   for @table[$prev-row-idx].kv -> $key,$value {
      my $current-power = $order - 2 * $key;
      my $coeff = $value // 0e0;

      if $current-power > 0 {
         @table[$row-idx][$key] = my $new-val = $coeff * $current-power;
         $all-zeros-generated = False if $new-val.abs >= $tolerance;
      } else {
         @table[$row-idx][$key] = 0e0
      }
   }
   if $all-zeros-generated {
      return (True, "Repeated poles on imaginary axis (Unstable).")
   }
   return (True, "")
}

sub print-routh-details(Str $coeff-str, @rh-table is copy, $unstable-poles,
                        $is-stable, Str $message, Bool :$show-roots = False,
                        :@original-coeffs, :$tolerance = DEFAULT_TOLERANCE) {
   say "\nFor coefficient vector: $coeff-str";
   say "Routh-Hurwitz Table:";

   if @rh-table.Bool { # non-empty
      # Check if the table is properly structured
      unless @rh-table[0] ~~ Positional && @rh-table[0].Bool { # not valid table
         say "(Table generation failed or system trivial/empty)";
         say "\n$message";
         return;
      }
      # Replace very small numbers with 0
      for @rh-table -> @row {
         for @row.kv -> $key, $value {
            @row[$key] = 0e0 if $value.abs < $tolerance * 10
         }
      }
      my $max-char-len = 0;
      my @str-table-rows = @rh-table.map: -> @row {
         my $last-sig-idx = @row.first: *.abs > $tolerance, :end, :k;
         my $effective-cols = (($last-sig-idx // 0) + 1) max 1;

         [ gather for @row[^$effective-cols] {
            $max-char-len max= chars take sprintf("%.4g", $_)
         } ]
      }
      for @str-table-rows { say $_.map(*.fmt("%{$max-char-len}s")).join: " | " }
   } else {
      say "(Table generation failed or system trivial/empty)";
   }

   say "\n$message";

   if $show-roots && @original-coeffs {
      my @coeffs = @original-coeffs;

      # Trim leading zeros
      my $first-nz-idx = ( @coeffs.first: * > $tolerance, :k ) // 0;
      @coeffs = @coeffs[$first-nz-idx..*];

      # Check if we have any coefficients left and they're not all zero
      if @coeffs.elems == 0 || @coeffs.all == 0 {
         say "\nPolynomial is trivial (e.g., 0 or empty), roots are undefined or infinite.";
         return;
      }

      if @coeffs.elems > 1 {
         say "\nRoots of the polynomial:";
         my @roots = find-polynomial-roots(@coeffs);
         for @roots -> $r {
            # Handle both Complex and Num types
            my $r-real = $r ~~ Complex ?? $r.re !! $r;
            my $r-imag = $r ~~ Complex ?? $r.im !! 0;

            # Clean up near-zero values
            $r-real = 0e0 if $r-real.abs < $tolerance;
            $r-imag = 0e0 if $r-imag.abs < $tolerance;

            if $r-imag.abs > $tolerance { # Format with proper sign handling
               my $sign = $r-imag >= 0 ?? '+' !! '-';
               printf(" %.4f %s %.4fi\n", $r-real, $sign, $r-imag.abs);
            } else {
               printf(" %.4f\n", $r-real)
            }
         }
      } elsif @coeffs.elems == 1 && @coeffs[0].abs > $tolerance {
         say "\nPolynomial is a non-zero constant (0th order), no roots in finite plane."
      } else {
         say "\nPolynomial is trivial (e.g., 0 or empty), roots are undefined or infinite."
      }
   }
}

# Polynomial root finding using Durand-Kerner method
sub find-polynomial-roots(@coeffs-in, :$tol = 1e-8, :$max-iter = 100) {
   return () if @coeffs-in.elems < 2;

   my @coeffs = @coeffs-in>>.Complex;
   my $n = @coeffs.elems - 1;

   # Normalize to monic polynomial
   return () if ( my $leading = @coeffs[0] ).abs < 1e-9;
   @coeffs = @coeffs.map: * / $leading;

   # Initial guesses on a circle in complex plane
   my @roots = ^$n .map: { (0.4 + 0.9i) ** $_ };

   for ^$max-iter {
      my ($max-delta, @new-roots) = 0e0, @roots;
      for ^$n -> $k {
         my $p-val = eval-polynomial(@coeffs, @roots[$k]);
         my $denom = 1e0 + 0i;

         for ^$n -> $j { $j==$k ?? (next) !! $denom *= @roots[$k] - @roots[$j] }

         $denom = $tol + 0i if $denom.abs < $tol ; # Avoid division by zero

         @new-roots[$k] = @roots[$k] - my $delta = $p-val / $denom;
         $max-delta max= $delta.abs
      }
      @roots = @new-roots;
      last if $max-delta < $tol
   }
   # Sort and return roots by real part (descending), then imag part (ascending)
   return @roots.sort: { -.re, .im }
}

sub eval-polynomial(@coeffs, $x) { [+] @coeffs Z* ($x X**(@coeffs.elems^...0)) }

my $show-all-roots = True;

for my @test-cases = (
   ("Stable: s^3 + 6s^2 + 11s + 6", [1, 6, 11, 6]),
   ("Unstable: s^3 - 6s^2 + 11s - 6", [1, -6, 11, -6]),
   ("Marginally Stable (jw-axis, Row of Zeros): s^3 + s^2 + s + 1", [1, 1, 1, 1]),
   ("Marginally Stable (jw-axis, Row of Zeros): s^2 + 1", [1, 0, 1]),
   ("Marginally Stable (epsilon case): s^3 + 2s^2 + s + 2", [1, 2, 1, 2]),
   ("Unstable (row of zeros & RHP): s^5 + 2s^4 + 3s^3 + 6s^2 + 5s + 10", [1, 2, 3, 6, 5, 10]),
   ("Stable: s + 1", [1, 1]),
   ("Stable: s^2 + 2s + 1", [1, 2, 1]),
   ("Unstable: s^2 - 1", [1, 0, -1]),
   ("Marginally Stable (all jw-axis): s^4 + 3s^2 + 2", [1, 0, 3, 0, 2]),
   ("All Zero Coefficients", [0, 0, 0]),
   ("Single Zero Coefficient", [0]),
   ("Single Non-Zero Coefficient (Stable)", [5]),
   ("Leading Zeros: 0s^3 + s^2 + 2s + 1", [0, 1, 2, 1]),
   ("Unstable (2 RHP): s^4 - s^3 -7s^2 + s + 6", [1, -1, -7, 1, 6]),
   ("Marginally Stable (Ogata Example): s^6+2s^5+8s^4+12s^3+20s^2+16s+16", [1, 2, 8, 12, 20, 16, 16]),
   ("Marginally Stable (User Example): s^5+s^4+2s^3+2s^2+s+1", [1, 1, 2, 2, 1, 1]),
   ("Simplest s", [1, 0]), # s=0 -> one pole at origin (marginally stable)
   ("Order 0: constant", [10]), # stable
   ("Order 0: zero", [0]), # unstable
   ("Test case leading to problems with aux poly (constant aux poly)", [1, 1, 0, 0]), # s^3+s^2
) -> ($desc, @coeffs) {
   say "--- Testing Case: $desc ---";
   try {
      my ($rh-table, $unstable-poles, $is-stable, $message) = routh-hurwitz(@coeffs);
      print-routh-details(@coeffs.raku, $rh-table, $unstable-poles,
                          $is-stable, $message, :show-roots($show-all-roots),
                          :original-coeffs(@coeffs));
      CATCH {
         default { say "Error during Routh-Hurwitz calculation: {.message}" }
      }
   }
   say "-" x 60, "\n";
}
#------------------------------------------------------------------ 865 rsa-code
class RSA-message {
    has ($.n, $.e, $.d); # the 3 elements that define an RSA key

    my @alphabet = |('A' .. 'Z'), ' ';
    my $rad = +@alphabet;
    my %code = @alphabet Z=> 0 .. *;
    subset Text of Str where /^^ @alphabet+ $$/;

    method encode(Text $t) {
        [+] %code{$t.flip.comb} Z× (1, $rad, $rad×$rad … *);
    }

    method decode(Int $n is copy) {
        @alphabet[
            gather loop {
                take $n % $rad;
                last if $n < $rad;
                $n div= $rad;
            }
        ].join.flip;
    }
}

constant $n = 9516311845790656153499716760847001433441357;
constant $e = 65537;
constant $d = 5617843187844953170308463622230283376298685;

my $fmt = "%48s %s\n";

my $message = 'ROSETTA CODE';
printf $fmt, 'Secret message is', $message;

my $rsa = RSA-message.new: n => $n, e => $e, d => $d;
printf $fmt, 'Secret message in integer form is',
    my $numeric-message = $rsa.encode: $message;

printf $fmt, 'After exponentiation with public exponent we get',
    my $numeric-cipher = expmod $numeric-message, $e, $n;

printf $fmt, 'This turns into the string',
    my $text-cipher = $rsa.decode: $numeric-cipher;

printf $fmt, 'If we re-encode it in integer form we get',
    my $numeric-cipher2 = $rsa.encode: $text-cipher;

printf $fmt, 'After exponentiation with SECRET exponent we get',
    my $numeric-message2 = expmod $numeric-cipher2, $d, $n;

printf $fmt, 'This turns into the string',
    my $message2 = $rsa.decode: $numeric-message2;
#------------------------------------------------------- 866 run-length-encoding
sub encode($str) { $str.subst(/(.) $0*/, { $/.chars ~ $0 }, :g) }

sub decode($str) { $str.subst(/(\d+) (.)/, { $1 x $0 }, :g) }

my $e = encode('WWWWWWWWWWWWBWWWWWWWWWWWWBBBWWWWWWWWWWWWWWWWWWWWWWWWBWWWWWWWWWWWWWW');
say $e;
say decode($e);
#-------------------------------------------------------- 867 runge-kutta-method
sub runge-kutta(&yp) {
    return -> \t, \y, \δt {
        my $a = δt * yp( t, y );
        my $b = δt * yp( t + δt/2, y + $a/2 );
        my $c = δt * yp( t + δt/2, y + $b/2 );
        my $d = δt * yp( t + δt, y + $c );
        ($a + 2*($b + $c) + $d) / 6;
    }
}

constant δt = .1;
my &δy = runge-kutta { $^t * sqrt($^y) };

loop (
    my ($t, $y) = (0, 1);
    $t <= 10;
    ($t, $y) »+=« (δt, δy($t, $y, δt))
) {
    printf "y(%2d) = %12f ± %e\n", $t, $y, abs($y - ($t**2 + 4)**2 / 16)
    if $t %% 1;
}
#-------------------------------------- 868 runtime-evaluation-in-an-environment
use MONKEY-SEE-NO-EVAL;
sub eval_with_x($code, *@x) { [R-] @x.map: -> \x { EVAL $code } }

say eval_with_x('3 * x', 5, 10);      # Says "15".
say eval_with_x('3 * x', 5, 10, 50);  # Says "105".
#------------------------------------------------------------- 869 s-expressions
grammar S-Exp {
  rule TOP    {^ <s-list> $};

  token s-list { '(' ~ ')' [ <in_list>+ % [\s+] | '' ] }
  token in_list { <s-token> | <s-list> }

  proto token s-token {*}
  token s-token:sym<Num>    {\d*\.?\d+}
  token s-token:sym<String> {'"' ['\"' |<-[\\"]>]*? '"'} #'
  token s-token:sym<Atom>   {<-[()\s]>+}

}

# The Actions class, for each syntactic rule there is a method
# that stores some data in the abstract syntax tree with make
class S-Exp::ACTIONS {
  method TOP ($/) {make $<s-list>.ast}
  method s-list ($/) {make [$<in_list>».ast]}
  method in_list ($/) {make $/.values[0].ast}

  method s-token:sym<Num> ($/){make +$/}
  method s-token:sym<String> ($/){make ~$/.substr(1,*-1)}
  method s-token:sym<Atom> ($/){make ~$/}
}

multi s-exp_writer (Positional $ary) {'(' ~ $ary.map(&s-exp_writer).join(' ') ~ ')'}
multi s-exp_writer (Numeric    $num) {~$num}
multi s-exp_writer (Str        $str) {
  return $str unless $str ~~ /<[(")]>|\s/;
  return '()' if $str eq '()';
  '"' ~ $str.subst('"', '\"' ) ~ '"';
}


my $s-exp = '((data "quoted data" 123 4.5)
 (data (!@# (4.5) "(more" "data)")))';

my $actions = S-Exp::ACTIONS.new();
my $raku_array = (S-Exp.parse($s-exp, :$actions)).ast;

say "the expression:\n$s-exp\n";
say "the Raku expression:\n{$raku_array.raku}\n";
say "and back:\n{s-exp_writer($raku_array)}";
#-------------------------------------------- 870 safe-and-sophie-germain-primes
put join "\n", (^∞ .grep: { .is-prime && ($_*2+1).is-prime } )[^50].batch(10)».fmt: "%4d";
#------------------------------------- 871 sailors-coconuts-and-a-monkey-problem
my @ones = flat 'th', 'st', 'nd', 'rd', 'th' xx 6;
my @teens = 'th' xx 10;
my @suffix = lazy flat (@ones, @teens, @ones xx 8) xx *;

# brute force the first six
for 1 .. 6 -> $sailors { for $sailors .. * -> $coconuts { last if check( $sailors, $coconuts ) } }

# finesse 7 through 15
for 7 .. 15 -> $sailors { next if check( $sailors, coconuts( $sailors ) ) }

sub is_valid ( $sailors is copy, $nuts is copy ) {
    return 0, 0 if $sailors == $nuts == 1;
    my @shares;
    for ^$sailors {
        return () unless $nuts % $sailors == 1;
        push @shares, ($nuts - 1) div $sailors;
        $nuts -= (1 + $nuts div $sailors);
    }
    push @shares, $nuts div $sailors;
    return @shares if !?($nuts % $sailors);
}

sub check ($sailors, $coconuts) {
    if my @piles = is_valid($sailors, $coconuts) {
        say "\nSailors $sailors: Coconuts $coconuts:";
        for ^(@piles - 1) -> $k {
             say "{$k+1}@suffix[$k+1] takes @piles[$k], gives 1 to the monkey."
        }
        say "The next morning, each sailor takes @piles[*-1]\nwith none left over for the monkey.";
        return True;
    }
    False;
}

multi sub coconuts ( $sailors where { $sailors % 2 == 0 } ) { ($sailors - 1) * ($sailors ** $sailors - 1) }
multi sub coconuts ( $sailors where { $sailors % 2 == 1 } ) { $sailors ** $sailors - $sailors + 1 }
#--------------------------------------------------------------- 872 same-fringe
sub fringe ($tree) {
    multi sub fringey (Pair $node) { fringey $_ for $node.kv; }
    multi sub fringey ( Any $leaf) { take $leaf; }

    gather fringey $tree;
}

sub samefringe ($a, $b) { fringe($a) eqv fringe($b) }

# Testing:

my $a = 1 => 2 => 3 => 4 => 5 => 6 => 7 => 8;
my $b = 1 => (( 2 => 3 ) => (4 => (5 => ((6 => 7) => 8))));
my $c = (((1 => 2) => 3) => 4) => 5 => 6 => 7 => 8;

my $x = 1 => 2 => 3 => 4 => 5 => 6 => 7 => 8 => 9;
my $y = 0 => 2 => 3 => 4 => 5 => 6 => 7 => 8;
my $z = 1 => 2 => (4 => 3) => 5 => 6 => 7 => 8;

say  so samefringe $a, $a;
say  so samefringe $a, $b;
say  so samefringe $a, $c;

say not samefringe $a, $x;
say not samefringe $a, $y;
say not samefringe $a, $z;
#------------------------------------------- 873 scope-function-names-and-labels
# call a routine before it has been defined
say log();              # prints: outer

# define a subroutine that overrides a CORE function
sub log { 'outer' };
{
    # redefine the subroutine in this block
    sub log { 'inner' };
    {
        # redefine the subroutine yet again
        sub log { 'way down inside' };

        # call it within this block
        say log();                 # prints: way down inside

        # call it from the block one level out
        say &OUTER::log();         # prints: inner

        # call it from the block two levels out
        say &OUTER::OUTER::log();  # prints: outer

        # call it from the outermost block
        say &UNIT::log();          # prints: outer

        # call a subroutine that is post declared in outermost scope
        outersub()
    }

    {
        # subroutine in an inner block that doesn't redefine it
        # uses definition from nearest enclosing block
        say log();      # prints: inner
    }
    # call it within this block
    say log();          # prints: inner

    # call it from the block one level out
    say &OUTER::log();  # prints: outer
}

sub outersub{
    # call subroutine within this block - gets outer sub
    say log();          # prints: outer

    # call subroutine from the scope of the callers block
    say &CALLER::log(); # prints: way down inside

    # call subroutine from the outer scope of the callers block
    say &CALLER::OUTER::log(); # prints: inner

    # call the original overridden CORE routine
    say &CORE::log(e);  # prints: 1 ( natural log of e )
}
#--------------------------------------------------------- 874 scope-modifiers-2
sub a {
    my $*dyn = 'a';
    c();
}
sub b {
    my $*dyn = 'b';
    c();
}
sub c {
    say $*dyn;
}
a();  # says a
b();  # says b
#------------------------------------------------ 875 sealed-classes-and-methods
# 20240626 Raku programming solution

role MovieWatcherRole { has Str $.name;
   method WatchMovie() { say "$.name is watching the movie."   }
   method EatPopcorn() { say "$.name is enjoying the popcorn." }
}

class MovieWatcher does MovieWatcherRole {
   method new(Str $name) { self.bless(:$name) }
}

class ParentMovieWatcher is MovieWatcher { }

role ChildMovieWatcherRole {
   method EatPopcorn() { say "$.name is eating too much popcorn." }
}

class ChildMovieWatcher is MovieWatcher does ChildMovieWatcherRole { }

role YoungChildMovieWatcherRole {
   method WatchMovie() {
      say "Sorry, $.name, you are too young to watch the movie."
   }
}

class YoungChildMovieWatcher is ChildMovieWatcher does YoungChildMovieWatcherRole { }

for ParentMovieWatcher.new('Donald'),
    ChildMovieWatcher.new('Lisa'),
    YoungChildMovieWatcher.new('Fred')
{ .WatchMovie and .EatPopcorn }
#----------------------------------------------------------- 876 search-a-list-1
my @haystack = <Zig Zag Wally Ronald Bush Krusty Charlie Bush Bozo>;

for <Washington Bush> -> $needle {
    say "$needle -- { @haystack.first($needle, :k) // 'not in haystack' }";
}
#----------------------------------------------------------- 877 search-a-list-2
my Str @haystack = <Zig Zag Wally Ronald Bush Krusty Charlie Bush Bozo>;

for <Washingston Bush> -> $needle {
    my $first = @haystack.first($needle, :k);

    if defined $first {
        my $last = @haystack.first($needle, :k, :end);
        say "$needle -- first at $first, last at $last";
    }
    else {
        say "$needle -- not in haystack";
    }
}
#----------------------------------------------------------- 878 search-a-list-3
my @haystack = <Zig Zag Wally Ronald Bush Krusty Charlie Bush Bozo>;

my %index;
%index{.value} //= .key for @haystack.pairs;

for <Washington Bush> -> $needle {
    say "$needle -- { %index{$needle} // 'not in haystack' }";
}
#-------------------------------------------------- 879 search-a-list-of-records
my @cities =
  { name => 'Lagos',                population => 21.0  },
  { name => 'Cairo',                population => 15.2  },
  { name => 'Kinshasa-Brazzaville', population => 11.3  },
  { name => 'Greater Johannesburg', population =>  7.55 },
  { name => 'Mogadishu',            population =>  5.85 },
  { name => 'Khartoum-Omdurman',    population =>  4.98 },
  { name => 'Dar Es Salaam',        population =>  4.7  },
  { name => 'Alexandria',           population =>  4.58 },
  { name => 'Abidjan',              population =>  4.4  },
  { name => 'Casablanca',           population =>  3.98 },
;

say @cities.first(*<name> eq 'Dar Es Salaam', :k);
say @cities.first(*<population> < 5).<name>;
say @cities.first(*<name>.match: /^A/).<population>;
#-------------------------------------------------------------------- 880 sedols
sub sedol( Str $s ) {
    die 'No vowels allowed' if $s  ~~ /<[AEIOU]>/;
    die 'Invalid format'    if $s !~~ /^ <[0..9B..DF..HJ..NP..TV..Z]>**6 $ /;

    my %base36 = (flat 0..9, 'A'..'Z') »=>« ^36;
    my @weights = 1, 3, 1, 7, 3, 9;

    my @vs = %base36{ $s.comb };
    my $checksum = [+] @vs Z* @weights;
    my $check_digit = (10 - $checksum % 10) % 10;
    return $s ~ $check_digit;
}

say sedol($_) for <
    710889
    B0YBKJ
    406566
    B0YBLH
    228276
    B0YBKL
    557910
    B0YBKR
    585284
    B0YBKT
    B00030
>;
#--------------------------------------------- 881 segmentation-fault-protection
my @array = [1, 2, 3, 4, 5, 6];
my $var = @array[500];

say $var;
#---------------------------------------------------- 882 self-contained-numbers
sub self-contained ($n) {
    my $m = $n;
    while $m > 1 {
        $m %% 2 ?? ($m div= 2) !! ($m = $m * 3 + 1);
        return True if $m %% $n;
    }
    False;
}

say (^Inf).map(* * 2 + 1).hyper(:1000batch).map({ $_ if .&self-contained })[^7]
#-------------------------------------------------------------- 883 self-numbers
# 20201127 Raku programming solution

my ( $st, $count, $i, $pow, $digits, $offset, $lastSelf, $done, @selfs) =
     now,      0,  1,   10,       1,       9,         0, False;

# while ( $count < 1e8 ) {
until $done {
   my $isSelf = True;
   my $sum    = (my $start = max ($i-$offset), 0).comb.sum;
   loop ( my $j = $start; $j < $i; $j+=1 ) {
      if $j+$sum == $i { $isSelf = False and last }
      ($j+1)%10 != 0 ?? ( $sum+=1 ) !! ( $sum = ($j+1).comb.sum ) ;
   }
   if $isSelf {
      $count+=1;
      $lastSelf = $i;
      if $count ≤ 50 {
         @selfs.append: $i;
         if $count == 50 {
            say "The first 50 self numbers are:\n", @selfs;
            $done = True;
         }
      }
   }
   $i+=1;
   if $i % $pow == 0 {
      $pow *= 10;
      $digits+=1 ;
      $offset = $digits * 9
   }
}

# say "The 100 millionth self number is ", $lastSelf;
# say "Took ", now - $st, " seconds."
#----------------------------------------------------- 884 send-+-more-=-money-1
enum <D E M N O R S Y>;

sub find_solution ( ) {
    for ('0'..'9').combinations(8) -> @c {
        .return with @c.permutations.first: -> @p {
            @p[M] !== 0 and

            @p[  S,E,N,D].join
          + @p[  M,O,R,E].join
         == @p[M,O,N,E,Y].join
        }
    }
}

my @s = find_solution();
say "    {@s[  S,E,N,D].join}";
say " +  {@s[  M,O,R,E].join}";
say "== { @s[M,O,N,E,Y].join}";
#----------------------------------------------- 885 send-an-unknown-method-call
my $object = 42 but role { method add-me($x) { self + $x } }
my $name = 'add-me';
say $object."$name"(5);  # 47
#--------------------------------------------------- 886 sequence-of-non-squares
sub nth-term (Int $n) { $n + round sqrt $n }

# Print the first 22 values of the sequence
say (nth-term $_ for 1 .. 22);

# Check that the first million values of the sequence are indeed non-square
for 1 .. 1_000_000 -> $i {
    say "Oops, nth-term($i) is square!" if (sqrt nth-term $i) %% 1;
}
#-------------------------------------- 887 sequence-of-primes-by-trial-division
constant @primes = 2, 3, { first * %% none(@_), (@_[* - 1], * + 2 ... *) } ... *;

say @primes[^100];
#-------------------------------------------- 888 sequence-of-primorial-primes-1
constant @primes     = |grep *.is-prime, 2..*;
constant @primorials = [\*] 1, @primes;

my @pp_indexes := |@primorials.pairs.map: {
    .key if ( .value + any(1, -1) ).is-prime
};

say ~ @pp_indexes[ 0 ^.. 20 ]; # Skipping bogus first element.
#------------------------------ 889 sequence:-nth-number-with-exactly-n-divisors
sub div-count (\x) {
    return 2 if x.is-prime;
    +flat (1 .. x.sqrt.floor).map: -> \d {
        unless x % d { my \y = x div d; y == d ?? y !! (y, d) }
    }
}

my $limit = 20;

my @primes = grep { .is-prime }, 1..*;
@primes[$limit]; # prime the array. SCNR

put "First $limit terms of OEIS:A073916";
put (1..$limit).hyper(:2batch).map: -> $n {
    ($n > 4 and $n.is-prime) ??
    exp($n - 1, @primes[$n - 1]) !!
    do {
        my $i = 0;
        my $iterator = $n %% 2 ?? (1..*) !! (1..*).map: *²;
        $iterator.first: {
            next unless $n == .&div-count;
            next unless ++$i == $n;
            $_
        }
    }
};
#- 890 sequence:-smallest-number-greater-than-previous-term-with-exactly-n-divisors
sub div-count (\x) {
    return 2 if x.is-prime;
    +flat (1 .. x.sqrt.floor).map: -> \d {
        unless x % d { my \y = x div d; y == d ?? y !! (y, d) }
    }
}

my $limit = 15;

my $m = 1;
put "First $limit terms of OEIS:A069654";
put (1..$limit).map: -> $n { my $ = $m = first { $n == .&div-count }, $m..Inf };
#------------------------- 891 sequence:-smallest-number-with-exactly-n-divisors
sub div-count (\x) {
    return 2 if x.is-prime;
    +flat (1 .. x.sqrt.floor).map: -> \d {
        unless x % d { my \y = x div d; y == d ?? y !! (y, d) }
    }
}

constant @divcount = lazy (1..Inf).hyper.map(&div-count);

my $limit = 35;

put "First $limit terms of OEIS:A005179";
put ((1..$limit).map: -> $n {
    $n.is-prime ?? (2 ** ($n - 1)) !! 1 + @divcount.first: * == $n, :k
}).batch(5)>>.fmt("%10d").join: "\n";
#--------------------------------------------------------- 892 set-consolidation
multi consolidate() { () }
multi consolidate(Set \this is copy, *@those) {
    gather {
        for consolidate |@those -> \that {
            if this ∩ that { this = this ∪ that }
            else           { take that }
        }
        take this;
    }
}

enum Elems <A B C D E F G H I J K>;
say $_, "\n    ==> ", consolidate |$_
    for [set(A,B), set(C,D)],
        [set(A,B), set(B,D)],
        [set(A,B), set(C,D), set(D,B)],
        [set(H,I,K), set(A,B), set(C,D), set(D,B), set(F,G,H)];
#------------------------------------------------------- 893 set-of-real-numbers
class Iv {
    has $.range handles <min max excludes-min excludes-max minmax ACCEPTS>;
    method empty {
	$.min after $.max or $.min === $.max && ($.excludes-min || $.excludes-max)
    }
    multi method Bool() { not self.empty };
    method length() { $.max - $.min }
    method gist() {
	($.excludes-min ?? '(' !! '[') ~
	$.min ~ ',' ~ $.max ~
	($.excludes-max ?? ')' !! ']');
    }
}

class IvSet {
    has Iv @.intervals;

    sub canon (@i) {
	my @new = consolidate(|@i).grep(*.so);
	@new.sort(*.range.min);
    }

    method new(@ranges) {
	my @iv = canon @ranges.map: { Iv.new(:range($_)) }
	self.bless(:intervals(@iv));
    }

    method complement {
	my @new;
	my @old = @!intervals;
	if not @old {
	    return iv -Inf..Inf;
	}
	my $pre;
	push @old, Inf^..Inf unless @old[*-1].max === Inf;
	if @old[0].min === -Inf {
	    $pre = @old.shift;
	}
	else {
	    $pre = -Inf..^-Inf;
	}
	while @old {
	    my $old = @old.shift;
	    my $excludes-min = !$pre.excludes-max;
	    my $excludes-max = !$old.excludes-min;
	    push @new, Range.new($pre.max,$old.min,:$excludes-min,:$excludes-max);
	    $pre = $old;
	}
	IvSet.new(@new);
    }

    method ACCEPTS(IvSet:D $me: $candidate) {
	so $.intervals.any.ACCEPTS($candidate);
    }
    method empty { so $.intervals.all.empty }
    multi method Bool() { not self.empty };

    method length() { [+] $.intervals».length }
    method gist() { join ' ', $.intervals».gist }
}

sub iv(**@ranges) { IvSet.new(@ranges) }

multi infix:<∩> (Iv $a, Iv $b) {
    if $a.min ~~ $b or $a.max ~~ $b or $b.min ~~ $a or $b.max ~~ $a {
	my $min = $a.range.min max $b.range.min;
	my $max = $a.range.max min $b.range.max;
	my $excludes-min = not $min ~~ $a & $b;
	my $excludes-max = not $max ~~ $a & $b;
	Iv.new(:range(Range.new($min,$max,:$excludes-min, :$excludes-max)));
    }
}
multi infix:<∪> (Iv $a, Iv $b) {
    my $min = $a.range.min min $b.range.min;
    my $max = $a.range.max max $b.range.max;
    my $excludes-min = not $min ~~ $a | $b;
    my $excludes-max = not $max ~~ $a | $b;
    Iv.new(:range(Range.new($min,$max,:$excludes-min, :$excludes-max)));
}

multi infix:<∩> (IvSet $ars, IvSet $brs) {
    my @overlap;
    for $ars.intervals -> $a {
	for $brs.intervals -> $b {
	    if $a.min ~~ $b or $a.max ~~ $b or $b.min ~~ $a or $b.max ~~ $a {
		my $min = $a.range.min max $b.range.min;
		my $max = $a.range.max min $b.range.max;
		my $excludes-min = not $min ~~ $a & $b;
		my $excludes-max = not $max ~~ $a & $b;
		push @overlap, Range.new($min,$max,:$excludes-min, :$excludes-max);
	    }
	}
    }
    IvSet.new(@overlap)
}

multi infix:<∪> (IvSet $a, IvSet $b) {
    iv |$a.intervals».range, |$b.intervals».range;
}

multi consolidate() { () }
multi consolidate($this is copy, *@those) {
    gather {
        for consolidate |@those -> $that {
            if $this ∩ $that { $this ∪= $that }
            else             { take $that }
        }
        take $this;
    }
}

multi infix:<−> (IvSet $a, IvSet $b) { $a ∩ $b.complement }

multi prefix:<−> (IvSet $a) { $a.complement; }

constant ℝ = iv -Inf..Inf;

my $s1 = iv(0^..1) ∪ iv(0..^2);
my $s2 = iv(0..^2) ∩ iv(1^..2);
my $s3 = iv(0..^3) − iv(0^..^1);
my $s4 = iv(0..^3) − iv(0..1) ;

say "\t\t\t\t0\t1\t2";
say "(0, 1] ∪ [0, 2) -> $s1.gist()\t", 0 ~~ $s1,"\t", 1 ~~ $s1,"\t", 2 ~~ $s1;
say "[0, 2) ∩ (1, 2] -> $s2.gist()\t", 0 ~~ $s2,"\t", 1 ~~ $s2,"\t", 2 ~~ $s2;
say "[0, 3) − (0, 1) -> $s3.gist()\t", 0 ~~ $s3,"\t", 1 ~~ $s3,"\t", 2 ~~ $s3;
say "[0, 3) − [0, 1] -> $s4.gist()\t", 0 ~~ $s4,"\t", 1 ~~ $s4,"\t", 2 ~~ $s4;

say '';

say "ℝ is not empty: ", !ℝ.empty;
say "[0,3] − ℝ is empty: ", not iv(0..3) − ℝ;

my $A = iv(0..10) ∩
   iv |(0..10).map({ $_ - 1/6 .. $_ + 1/6 }).cache;

my $B = iv 0..sqrt(1/6),
      |(1..99).map({ sqrt($_-1/6) .. sqrt($_ + 1/6) }), sqrt(100-1/6)..10;

say 'A − A is empty: ', not $A − $A;

say '';

my $C = $A − $B;
say "A − B =";
say "  ",.gist for $C.intervals;
say "Length A − B = ", $C.length;
#--------------------------------------------------- 894 set-right-adjacent-bits
sub rab (Int $n, Int $b = 1) {
    my $m = $n;
    $m +|= ($n +> $_) for ^ $b+1;
    $m
}

sub lab (Int $n, Int $b = 1) {
    my $m = $n;
    $m +|= ($n +< $_) for ^ $b+1;
    $m
}

say "Powers of 2 ≤ 8, 0 - Right-adjacent-bits: 2";
.&rab(2).base(2).fmt('%04s').say for <8 4 2 1 0>;

# Test with a few integers.
for 8,4, 18455760086304825618,5, 5444684034376312377319904082902529876242,15 -> $integer, $bits {

    say "\nInteger: $integer - Right-adjacent-bits: up to $bits";

    .say for ^$bits .map: -> $b { $integer.&rab($b).base: 2 };

    say "\nInteger: $integer - Left-adjacent-bits: up to $bits";

    .say for ^$bits .map: -> $b { $integer.&lab($b).fmt("%{0~$bits+$integer.msb}b") };

}
#----------------------------------------------------------------------- 895 set
use Test;

my $a = set <a b c>;
my $b = set <b c d>;
my $c = set <a b c d e>;

ok 'c' ∈ $a, "c is an element in set A";
nok 'd' ∈ $a, "d is not an element in set A";

is-deeply $a ∪ $b, set(<a b c d>), "union; a set of all elements either in set A or in set B";
is-deeply $a ∩ $b, set(<b c>), "intersection; a set of all elements in both set A and set B";
is $a (-) $b, set(<a>), "difference; a set of all elements in set A, except those in set B";

ok $a ⊆ $c, "subset; true if every element in set A is also in set B";
nok $c ⊆ $a, "subset; false if every element in set A is not also in set B";
ok $a ⊂ $c, "strict subset; true if every element in set A is also in set B";
nok $a ⊂ $a, "strict subset; false for equal sets";
ok $a === set(<a b c>), "equality; true if every element of set A is in set B and vice-versa";
nok $a === $b, "equality; false for differing sets";
#------------------------------------------------------------------- 896 sha-1-1
sub postfix:<mod2³²> { $^x % 2**32 }
sub infix:<⊕>        { ($^x + $^y)mod2³² }
sub S                { ($^x +< $^n)mod2³² +| ($x +> (32-$n)) }

my \f = -> \B,\C,\D { (B +& C) +| ((+^B)mod2³² +& D)   },
        -> \B,\C,\D { B +^ C +^ D                      },
        -> \B,\C,\D { (B +& C) +| (B +& D) +| (C +& D) },
        -> \B,\C,\D { B +^ C +^ D                      };

my \K = 0x5A827999, 0x6ED9EBA1, 0x8F1BBCDC, 0xCA62C1D6;

sub sha1-pad(Blob $msg)
{
    my \bits = 8 * $msg.elems;
    my @padded = flat $msg.list, 0x80, 0x00 xx (-($msg.elems + 1 + 8) % 64);
    flat @padded.map({ :256[$^a,$^b,$^c,$^d] }), (bits +> 32)mod2³², (bits)mod2³²;
}

sub sha1-block(@H, @M is copy)
{
    @M.push: S(1, [+^] @M[$_ «-« <3 8 14 16>] ) for 16 .. 79;

    my ($A,$B,$C,$D,$E) = @H;
    for 0..79 -> \t {
        ($A, $B, $C, $D, $E) =
        S(5,$A) ⊕ f[t div 20]($B,$C,$D) ⊕ $E ⊕ @M[t] ⊕ K[t div 20],
        $A, S(30,$B), $C, $D;
    }
    @H »⊕=« ($A,$B,$C,$D,$E);
}

sub sha1(Blob $msg) returns Blob
{
    my @M = sha1-pad($msg);
    my @H = 0x67452301, 0xEFCDAB89, 0x98BADCFE, 0x10325476, 0xC3D2E1F0;
    sha1-block(@H,@M[$_..$_+15]) for 0, 16...^ +@M;
    Blob.new: flat map { reverse .polymod(256 xx 3) }, @H;
}

say sha1(.encode('ascii')), "  $_"
   for 'abc',
       'abcdbcdecdefdefgefghfghighijhijkijkljklmklmnlmnomnopnopq',
       'Rosetta Code',
       'Ars longa, vita brevis';
#----------------------------------------------------------------- 897 sha-256-1
say sha256 "Rosetta code";

our proto sha256($) returns blob8 {*}

multi sha256(Str $str) { samewith $str.encode }
multi sha256(blob8 $data) {
  sub rotr { $^a +> $^b +| $a +< (32 - $b) }
  sub init { ^Inf .grep(&is-prime).map: { (($_ - .Int)*2**32).Int } o &^f }
  sub   Ch { $^x +& $^y +^ +^$x +& $^z }
  sub  Maj { $^x +& $^y +^ $x +& $^z +^ $y +& $z }
  sub   Σ0 { rotr($^x,  2) +^ rotr($x, 13) +^ rotr($x, 22) }
  sub   Σ1 { rotr($^x,  6) +^ rotr($x, 11) +^ rotr($x, 25) }
  sub   σ0 { rotr($^x,  7) +^ rotr($x, 18) +^ $x +>  3 }
  sub   σ1 { rotr($^x, 17) +^ rotr($x, 19) +^ $x +> 10 }

  return blob8.new:
    map |*.polymod(256 xx 3).reverse,
   |reduce -> $H, $block {
     blob32.new: $H[] Z+
       reduce -> $h, $j {
         my uint32 ($T1, $T2) =
      $h[7] + Σ1($h[4]) + Ch(|$h[4..6])
      + (BEGIN init(* **(1/3))[^64])[$j] +
      (
       (state buf32 $w .= new)[$j] = $j < 16 ?? $block[$j] !!
       σ0($w[$j-15]) + $w[$j-7] + σ1($w[$j-2]) + $w[$j-16]
      ),
         Σ0($h[0]) + Maj(|$h[0..2]);
         blob32.new: $T1 + $T2, |$h[0..2], $h[3] + $T1, |$h[4..6];
       }, $H, |^64;
   },
   (BEGIN init(&sqrt)[^8]),
   |blob32.new(
       blob8.new(
         @$data,
         0x80,
         0 xx (-($data + 1 + 8) mod 64),
         (8*$data).polymod(256 xx 7).reverse
         ).rotor(4)
       .map: { :256[@$_] }
     ).rotor(16)
}
#----------------------------------------------------------- 898 shape-machine-1
my $input = (+prompt()).FatRat;
my $previous = 0.FatRat;
my $count;
my $places = 36;
loop {
    $input += 3;
    $input ×= .86;
    last if $previous.substr(0,$places) eq $input.substr(0,$places);
    ++$count;
    say ($previous = $input).substr(0,$places);
}
say "$count repetitions";
#----------------------------------------------------------- 899 shape-machine-2
say (4.FatRat, (* + 3) × .86 … *)[999]
#------------------------------------------ 900 shift-list-elements-to-left-by-3
# 20210315 Raku programming solution

say [1..9].rotate(3)
#------------------------------------- 901 shoelace-formula-for-polygonal-area-1
sub area-by-shoelace(@p) {
    (^@p).map({@p[$_;0] * @p[($_+1)%@p;1] - @p[$_;1] * @p[($_+1)%@p;0]}).sum.abs / 2
}

say area-by-shoelace( [ (3,4), (5,11), (12,8), (9,5), (5,6) ] );
#------------------------------------- 902 shoelace-formula-for-polygonal-area-2
sub area-by-shoelace ( @p ) {
    my @x := @p».[0];
    my @y := @p».[1];

    my $s := ( @x Z* @y.rotate( 1) ).sum
           - ( @x Z* @y.rotate(-1) ).sum;

    return $s.abs / 2;
}

say area-by-shoelace( [ (3,4), (5,11), (12,8), (9,5), (5,6) ] );
#-------------------------------------------------- 903 short-circuit-evaluation
use MONKEY-SEE-NO-EVAL;

sub a ($p) { print 'a'; $p }
sub b ($p) { print 'b'; $p }

for 1, 0 X 1, 0 -> ($p, $q) {
    for '&&', '||' -> $op {
        my $s = "a($p) $op b($q)";
        print "$s: ";
        EVAL $s;
        print "\n";
    }
}
#--------------------------------------------- 904 shortest-common-supersequence
sub lcs(Str $xstr, Str $ystr) { # longest common subsequence
    return "" unless $xstr && $ystr;
    my ($x, $xs, $y, $ys) = $xstr.substr(0, 1), $xstr.substr(1), $ystr.substr(0, 1), $ystr.substr(1);
    return $x eq $y
        ?? $x ~ lcs($xs, $ys)
        !! max(:by{ $^a.chars }, lcs($xstr, $ys), lcs($xs, $ystr) );
}

sub scs ($u, $v) { # shortest common supersequence
    my @lcs = (lcs $u, $v).comb;
    my $pat = '(.*)' ~ join('(.*)',@lcs) ~ '(.*)';
    my $regex = "rx/$pat/".EVAL;
    my @u = ($u ~~ $regex).list;
    my @v = ($v ~~ $regex).list;
    my $scs = shift(@u) ~ shift(@v);
    $scs ~= $_ ~ shift(@u) ~ shift(@v) for @lcs;
    return $scs;
}

my $u = 'abcbdab';
my $v = 'bdcaba';
printf "Strings: %s %s\n", $u, $v;
printf "Longest common subsequence:   %s\n", lcs $u, $v;
printf "Shortest common supersquence: %s\n", scs $u, $v;
#---------------------------------------------------------- 905 show-ascii-table
sub glyph ($_) {
    when * < 33 { (0x2400 + $_).chr } # display symbol names for invisible glyphs
    when 127    { '␡' }
    default     { .chr }
}

say '{|class="wikitable" style="text-align:center;background-color:hsl(39, 90%, 95%)"';

for (^128).rotor(16) -> @row {
    say '|-';
    printf(q[|%d<br>0x%02X<br><big><big title="%s">%s</big></big>] ~ "\n",
      $_, $_, .&glyph.uniname.subst('SYMBOL FOR ', ''),
      .&glyph.subst('|', '<nowiki>|</nowiki>')) for @row;
}

say '|}';
#--- 906 show-the-decimal-value-of-a-number-of-1s-appended-with-a-3-then-squared
say "$_, {.²}" for (^∞).map({ ( 1 x $_ ~ 3)} ).grep({ .is-prime })[^8]
#------------------------------------------------------------ 907 show-the-epoch
say DateTime.new(0)
#--------------------------------------------------------- 908 sierpinski-carpet
sub carpet
{
    (['#'], -> @c {
       [
        |@c.map({$_ x 3}),
        |@c.map({ $_ ~ $_.trans('#'=>' ') ~ $_}),
        |@c.map({$_ x 3})
       ]
    } ... *).map: { .join("\n") };
}

say carpet[3];

# Same as above, structured as an array bound to a sequence, with a separate sub for clarity.
sub weave ( @c ) {
   [
    |@c.map({ $_ x 3 }),
    |@c.map({ $_ ~ .trans( '#' => ' ' ) ~ $_ }),
    |@c.map({ $_ x 3 })
   ]
}

my @carpet = ( ['#'], &weave ... * ).map: { .join: "\n" };

say @carpet[3];

# Output of both versions matches task example.
#------------------------------------------------------- 909 sierpinski-triangle
sub sierpinski ($n) {
    my @down  = '*';
    my $space = ' ';
    for ^$n {
        @down = |("$space$_$space" for @down), |("$_ $_" for @down);
        $space x= 2;
    }
    return @down;
}

.say for sierpinski 4;
#--------------------------------------------------- 910 sieve-of-eratosthenes-1
sub sieve( Int $limit ) {
    my @is-prime = False, False, slip True xx $limit - 1;

    gather for @is-prime.kv -> $number, $is-prime {
        if $is-prime {
            take $number;
            loop (my $s = $number**2; $s <= $limit; $s += $number) {
                @is-prime[$s] = False;
            }
        }
    }
}

(sieve 100).join(",").say;
#--------------------------------------------------- 911 sieve-of-eratosthenes-5
sub primes ( UInt $n ) {
    gather {
        # create an iterator from 2 to $n (inclusive)
        my $iterator := (2..$n).iterator;

        loop {
            # If it passed all of the filters it must be prime
            my $prime := $iterator.pull-one;
            # unless it is actually the end of the sequence
            last if $prime =:= IterationEnd;

            take $prime; # add the prime to the `gather` sequence

            # filter out the factors of the current prime
            $iterator := Seq.new($iterator).grep(* % $prime).iterator;
            # (2..*).grep(* % 2).grep(* % 3).grep(* % 5).grep(* % 7)…
        }
    }
}

put primes( 100 );
#------------------------------------------------------ 912 sieve-of-pritchard-1
unit sub MAIN($limit = 150);

my $maxS = 1;
my $length = 2;
my $p = 3;
my @s = ();

while $p*$p <= $limit {
  if $length < $limit {
    extend-to [$p*$length, $limit].min;
  }
  delete-multiples-of($p);
  $p = next(1);
}
if $length < $limit {
  extend-to $limit;
}

# Done, build the list of actual primes from the array
$p = 3;
my @primes = 2, |gather while $p <= $limit {
  take $p;
  $p = next($p);
};
say @primes;

exit;

sub extend-to($n) {
  my $w = 1;
  my $x = $length + 1;
  while $x <= $n {
     append $x;
     $w = next($w);
     $x = $length + $w;
  }
  $length = $n;
  if $length == $limit {
    append $limit+2;
  }
}

sub delete-multiples-of($p) {
  my $f = $p;
  while $p*$f <= $length {
    $f = next($f);
  }
  while $f > 1 {
    $f = prev($f);
    delete($p*$f);
  }
}

sub append($w) {
  @s[$maxS-1] = $w;
  @s[$w-2] = $maxS;
  $maxS = $w;
}

sub next($w) { @s[$w-1]; }
sub prev($w) { @s[$w-2]; }

sub delete($pf) {
  my $temp1 = @s[$pf-2];
  my $temp2 = @s[$pf-1];
  @s[$temp1-1] = $temp2;
  @s[($temp2-2)%@s] = $temp1;
}
#------------------------------------------------------ 913 sieve-of-pritchard-2
unit sub MAIN($limit = 150);

class Wheel {
  has $.members is rw;
  has $.length is rw;
  method extend(*@limits) {
    my @members = $.members.keys;
    for @members -> $w {
      my $n = $w + $.length;
      while $n <= @limits.all {
        $.members.set($n);
        $n += $.length;
      }
    }
    $.length = @limits.min;
  }
}

# start with W₀=({1},1)
my $wheel = Wheel.new: :members(SetHash(1)), :length(1);
my $prime = 2;
my @primes = ();

while $prime * $prime <= $limit {
  if $wheel.length < $limit {
    $wheel.extend($prime*$wheel.length, $limit);
  }
  for $wheel.members.keys.sort(-*) -> $w {
    $wheel.members.unset($prime * $w);
  }
  @primes.push: $prime;
  $prime = $prime == 2 ?? 3 !! $wheel.members.keys.grep(*>1).sort[0];
}

if $wheel.length < $limit {
  $wheel.extend($limit);
}
@primes.append:  $wheel.members.keys.grep: * != 1;
say @primes.sort;
#------------------------------------------------ 914 sign-of-an-integer-signum-
say .sign.fmt("%2d: $_") for 1, -5, 2⁷⁶, -7⁴⁴, π, Inf, -Inf, 0, -0, -0.0, -0e0;
#----------------------------------------------- 915 singly-linked-list-reversal
# 20240220 Raku programming solution

class Cell { has ($.value, $.next) is rw;

   method reverse {
      my ($list, $prev) = self, Nil;
      while $list.defined {
         my $next = $list.next;
         $list.next = $prev;
         ($list, $prev) = ($next, $list)
      }
      return $prev;
   }

   method gist {
      my $cell = self;
      return ( gather while $cell.defined {
         take $cell.value andthen $cell = $cell.next;
      } ).Str
   }
}

sub cons ($value, $next = Nil) { Cell.new(:$value, :$next) }

my $list = cons 10, (cons 20, (cons 30, (cons 40, Nil)));

say $list = $list.reverse;
say $list = $list.reverse;
#-------------------------------------------- 916 singly-linked-list-traversal-1
my $list = 1 => 2 => 3 => 4 => 5 => 6 => Mu;

loop (my $l = $list; $l; $l.=value) {
    say $l.key;
}
#-------------------------------------------- 917 singly-linked-list-traversal-2
use MONKEY-TYPING;
augment class Pair {
    method traverse () {
        gather loop (my $l = self; $l; $l.=value) {
            take $l.key;
        }
    }
}

my $list = [=>] 'Ⅰ' .. 'Ⅻ', Mu;
say ~$list.traverse;
#--------------------------------------------------------------------- 918 sleep
my $sec = prompt("Sleep for how many microfortnights? ") * 1.2096;
say "Sleeping...";
sleep $sec;
say "Awake!";
#----------------------------------------- 919 smallest-enclosing-circle-problem
class P { has ($.x, $.y) is rw;                # Point
   method gist { "({$.x~", "~$.y})" }
}

class C { has (P $.c, Numeric $.r);            # Circle
   method gist { "Center = " ~$.c.gist ~ " and Radius = $.r\n" }

   # tests whether a circle contains the point 'p'
   method contains(P \p --> Bool) { distSq($.c, p) ≤ $.r² }

   # tests whether a circle contains a slice of point
   method encloses(@ps --> Bool) { [and] @ps.map: { $.contains($_) } }
}

sub infix:<−> (P \a, P \b) { a.x - b.x, a.y - b.y } # note: Unicode 'minus'

# returns the square of the distance between two points
sub distSq (P \a, P \b) { [+] (a − b)»² }

sub getCenter (\bx, \by, \cx, \cy --> P) {
   my (\b,\c,\d) = bx²+by², cx²+cy², bx*cy - by*cx;
   P.new: x => (cy*b - by*c) / (2 * d), y => (bx*c - cx*b) / (2 * d)
} # returns the center of a circle defined by 3 points

sub circleFrom3 (P \a, P \b, P \c --> C)  {
   my \k = $ = getCenter |(b − a), |(c − a);
   k.x, k.y Z[+=] a.x, a.y;
   C.new: c => k, r => distSq(k, a).sqrt
} # returns a unique circle that intersects 3 points

sub circleFrom2 (P \a, P \b --> C ) {
   my \center = P.new: x => ((a.x + b.x) / 2), y => ((a.y + b.y) / 2) ;
   C.new: c => center, r => (distSq(a, b).sqrt / 2)
} # returns smallest circle that intersects 2 points

sub secTrivial( @rs --> C ) {
   given @rs {
      when * == 0 { return C.new: c => (P.new: x => 0, y => 0), r => 0 }
      when * == 1 { return C.new: c => @rs[0], r => 0 }
      when * == 2 { return circleFrom2 |@rs }
      when * == 3 { #`{ no-op } }
      when *  > 3 { die "There shouldn't be more than 3 points." }
   }
   for 0, 1 X 1, 2 -> ( \i, \j ) {
      return $_ if .encloses(@rs) given circleFrom2 |@rs[i,j]
   }
   circleFrom3 |@rs
} # returns smallest enclosing circle for n ≤ 3

sub Welzl-helper( @ps is copy, @rs is copy , \n --> C ) {
   return secTrivial(@rs) if n == 0 or @rs == 3;
   my \p = @ps.shift;
   return $_ if .contains(p) given Welzl-helper @ps, @rs, n-1;
   Welzl-helper @ps, @rs.append(p), n-1
} # helper function for Welzl method

# applies the Welzl algorithm to find the SEC
sub welzl(@ps --> C) { Welzl-helper @ps.pick(*), [], @ps }

my @tests = (
   [ (0,0), (0,1), (1,0) ],
   [ (5,-2), (-3,-2), (-2,5), (1,6), (0,2) ]
).map: {
   @_.map: { P.new: x => $_[0], y => $_[1] }
}

say "Solution for smallest circle enclosing {$_.gist} :\n", welzl $_ for @tests;
#--------------------------------------------------------- 920 smallest-multiple
say "$_: ", [lcm] 2..$_ for <10 20 200 2000>
#------ 921 smallest-number-k-such-that-k+2^m-is-composite-for-all-m-less-than-k
put (1..∞).hyper(:250batch).map(* × 2 + 1).grep( -> $k { !(1 ..^ $k).first: ($k + 1 +< *).is-prime } )[^5]
#---------------------------------------------------------- 922 smallest-numbers
sub smallest ( $n ) {
    state  @powers = '', |map { $_ ** $_ }, 1 .. *;

    return @powers.first: :k, *.contains($n);
}

.say for (^51).map(&smallest).batch(10)».fmt('%2d');
#-------------------------------------- 923 smallest-square-that-begins-with-n-1
# 20210319 Raku programming solution

my @needles  = (1..49);
my @haystack = (1..*) Z× (1..*);
# my @haystack = ( 1, 4, -> \a, \b { 2*b - a + 2 } ... * );
# my @haystack = ( 1, { (++$)² } ... * );
for @needles -> \needle {
   for @haystack -> \hay {
      { say needle, " => ", hay and last } if hay.starts-with: needle
   }
}
#-------------------------------------- 924 smallest-square-that-begins-with-n-2
say $_ => ^Inf .map(*²).first: *.starts-with: $_ for 1..49;
#------------------------------------------------------------- 925 smith-numbers
constant @primes = 2, |(3, 5, 7 ... *).grep: *.is-prime;

multi factors ( 1 ) { 1 }
multi factors ( Int $remainder is copy ) {
  gather for @primes -> $factor {

    # if remainder < factor², we're done
    if $factor * $factor > $remainder {
      take $remainder if $remainder > 1;
      last;
    }

    # How many times can we divide by this prime?
    while $remainder %% $factor {
        take $factor;
        last if ($remainder div= $factor) === 1;
    }
  }
}
# Code above here is verbatim from RC:Count_in_factors#Raku

sub is_smith_number ( Int $n ) {
  (!$n.is-prime) and ( [+] $n.comb ) == ( [+] factors($n).join.comb );
}

my @s = grep &is_smith_number, 2 ..^ 10_000;
say "{@s.elems} Smith numbers below 10_000";
say 'First 10: ', @s[  ^10      ];
say 'Last  10: ', @s[ *-10 .. * ];
#------------------------------------------------------------------- 926 sokoban
sub MAIN() {
    my $level = q:to//;
#######
#     #
#     #
#. #  #
#. $$ #
#.$$  #
#.#  @#
#######

    say 'level:';
    print $level;
    say 'solution:';
    say solve($level);
}

class State {
    has Str $.board;
    has Str $.sol;
    has Int $.pos;

    method move(Int $delta --> Str) {
        my $new = $!board;
        if $new.substr($!pos,1) eq '@' {
            substr-rw($new,$!pos,1) = ' ';
        } else {
            substr-rw($new,$!pos,1) = '.';
        }
        my $pos := $!pos + $delta;
        if $new.substr($pos,1) eq ' ' {
            substr-rw($new,$pos,1) = '@';
        } else {
            substr-rw($new,$pos,1) = '+';
        }
        return $new;
    }

    method push(Int $delta --> Str) {
        my $pos := $!pos + $delta;
        my $box := $pos + $delta;
        return '' unless $!board.substr($box,1) eq ' ' | '.';
        my $new = $!board;
        if $new.substr($!pos,1) eq '@' {
            substr-rw($new,$!pos,1) = ' ';
        } else {
            substr-rw($new,$!pos,1) = '.';
        }
        if $new.substr($pos,1) eq '$' {
            substr-rw($new,$pos,1) = '@';
        } else {
            substr-rw($new,$pos,1) = '+';
        }
        if $new.substr($box,1) eq ' ' {
            substr-rw($new,$box,1) = '$';
        } else {
            substr-rw($new,$box,1) = '*';
        }
        return $new;
    }
}

sub solve(Str $start --> Str) {
    my $board = $start;
    my $width = $board.lines[0].chars + 1;
    my @dirs =
        ["u", "U", -$width],
        ["r", "R", 1],
        ["d", "D", $width],
        ["l", "L", -1];

    my %visited = $board => True;

    my $pos = $board.index('@');
    my @open = State.new(:$board, :sol(''), :$pos);
    while @open {
        my $state = @open.shift;
        for @dirs -> [$move, $push, $delta] {
            my $board;
            my $sol;
            my $pos = $state.pos + $delta;
            given $state.board.substr($pos,1) {
                when '$' | '*' {
                    $board = $state.push($delta);
                    next if $board eq "" || %visited{$board};
                    $sol = $state.sol ~ $push;
                    return $sol unless $board ~~ /<[ . + ]>/;
                }
                when ' ' | '.' {
                    $board = $state.move($delta);
                    next if %visited{$board};
                    $sol = $state.sol ~ $move;
                }
                default { next }
            }
            @open.push: State.new: :$board, :$sol, :$pos;
            %visited{$board} = True;
        }
    }
    return "No solution";
}
#----------------------------------------------- 927 soloways-recurring-rainfall
# Write a program that will read in integers and
# output their average. Stop reading when the
# value 99999 is input.


my ($periods, $accumulation, $rainfall) = 0, 0;

loop {
    loop {
        $rainfall = prompt 'Integer units of rainfall in this time period? (999999 to finalize and exit)>: ';
        last if $rainfall.chars and $rainfall.Numeric !~~ Failure and $rainfall.narrow ~~ Int and $rainfall ≥ 0;
        say 'Invalid input, try again.';
    }
    last if $rainfall == 999999;
    ++$periods;
    $accumulation += $rainfall;
    say-it;
}

say-it;

sub say-it { printf "Average rainfall %.2f units over %d time periods.\n", ($accumulation / $periods) || 0, $periods }
#----------------------------------------------------- 928 solve-a-hidato-puzzle
my @adjacent = [-1, -1], [-1, 0], [-1, 1],
               [ 0, -1],          [ 0, 1],
               [ 1, -1], [ 1, 0], [ 1, 1];

solveboard q:to/END/;
        __ 33 35 __ __ .. .. ..
        __ __ 24 22 __ .. .. ..
        __ __ __ 21 __ __ .. ..
        __ 26 __ 13 40 11 .. ..
        27 __ __ __  9 __  1 ..
        .. .. __ __ 18 __ __ ..
        .. .. .. .. __  7 __ __
        .. .. .. .. .. ..  5 __
        END

sub solveboard($board) {
    my $max = +$board.comb(/\w+/);
    my $width = $max.chars;

    my @grid;
    my @known;
    my @neigh;
    my @degree;

    @grid = $board.lines.map: -> $line {
        [ $line.words.map: { /^_/ ?? 0 !! /^\./ ?? Rat !! $_ } ]
    }

    sub neighbors($y,$x --> List) {
        eager gather for @adjacent {
            my $y1 = $y + .[0];
            my $x1 = $x + .[1];
            take [$y1,$x1] if defined @grid[$y1][$x1];
        }
    }

    for ^@grid -> $y {
        for ^@grid[$y] -> $x {
            if @grid[$y][$x] -> $v {
                @known[$v] = [$y,$x];
            }
            if @grid[$y][$x].defined {
                @neigh[$y][$x] = neighbors($y,$x);
                @degree[$y][$x] = +@neigh[$y][$x];
            }
        }
    }
    print "\e[0H\e[0J";

    my $tries = 0;

    try_fill 1, @known[1];

    sub try_fill($v, $coord [$y,$x] --> Bool) {
        return True if $v > $max;
        $tries++;

        my $old = @grid[$y][$x];

        return False if +$old and $old != $v;
        return False if @known[$v] and @known[$v] !eqv $coord;

        @grid[$y][$x] = $v;               # conjecture grid value

        print "\e[0H";                    # show conjectured board
        for @grid -> $r {
            say do for @$r {
                when Rat { ' ' x $width }
                when 0   { '_' x $width }
                default  { .fmt("%{$width}d") }
            }
        }


        my @neighbors = @neigh[$y][$x][];

        my @degrees;
        for @neighbors -> \n [$yy,$xx] {
            my $d = --@degree[$yy][$xx];  # conjecture new degrees
            push @degrees[$d], n;         # and categorize by degree
        }

        for @degrees.grep(*.defined) -> @ties {
            for @ties.reverse {           # reverse works better for this hidato anyway
                return True if try_fill $v + 1, $_;
            }
        }

        for @neighbors -> [$yy,$xx] {
            ++@degree[$yy][$xx];          # undo degree conjectures
        }

        @grid[$y][$x] = $old;             # undo grid value conjecture
        return False;
    }

    say "$tries tries";
}
#------------------------------------------------- 929 solve-a-holy-knights-tour
my @adjacent =
               [ -2, -1],  [ -2, 1],
      [-1,-2],                       [-1,+2],
      [+1,-2],                       [+1,+2],
               [ +2, -1],  [ +2, 1];

put "\n" xx 60;

solveboard q:to/END/;
    . 0 0 0
    . 0 . 0 0
    . 0 0 0 0 0 0 0
    0 0 0 . . 0 . 0
    0 . 0 . . 0 0 0
    1 0 0 0 0 0 0
    . . 0 0 . 0
    . . . 0 0 0
    END

sub solveboard($board) {
    my $max = +$board.comb(/\w+/);
    my $width = $max.chars;

    my @grid;
    my @known;
    my @neigh;
    my @degree;

    @grid = $board.lines.map: -> $line {
        [ $line.words.map: { /^_/ ?? 0 !! /^\./ ?? Rat !! $_ } ]
    }

    sub neighbors($y,$x --> List) {
        eager gather for @adjacent {
            my $y1 = $y + .[0];
            my $x1 = $x + .[1];
            take [$y1,$x1] if defined @grid[$y1][$x1];
        }
    }

    for ^@grid -> $y {
        for ^@grid[$y] -> $x {
            if @grid[$y][$x] -> $v {
                @known[$v] = [$y,$x];
            }
            if @grid[$y][$x].defined {
                @neigh[$y][$x] = neighbors($y,$x);
                @degree[$y][$x] = +@neigh[$y][$x];
            }
        }
    }
    print "\e[0H\e[0J";

    my $tries = 0;

    try_fill 1, @known[1];

    sub try_fill($v, $coord [$y,$x] --> Bool) {
        return True if $v > $max;
        $tries++;

        my $old = @grid[$y][$x];

        return False if +$old and $old != $v;
        return False if @known[$v] and @known[$v] !eqv $coord;

        @grid[$y][$x] = $v;               # conjecture grid value

        print "\e[0H";                    # show conjectured board
        for @grid -> $r {
            say do for @$r {
                when Rat { ' ' x $width }
                when 0   { '_' x $width }
                default  { .fmt("%{$width}d") }
            }
        }


        my @neighbors = @neigh[$y][$x][];

        my @degrees;
        for @neighbors -> \n [$yy,$xx] {
            my $d = --@degree[$yy][$xx];  # conjecture new degrees
            push @degrees[$d], n;         # and categorize by degree
        }

        for @degrees.grep(*.defined) -> @ties {
            for @ties.reverse {           # reverse works better for this hidato anyway
                return True if try_fill $v + 1, $_;
            }
        }

        for @neighbors -> [$yy,$xx] {
            ++@degree[$yy][$xx];          # undo degree conjectures
        }

        @grid[$y][$x] = $old;             # undo grid value conjecture
        return False;
    }

    say "$tries tries";
}
#----------------------------------------------------- 930 solve-a-hopido-puzzle
my @adjacent = [3, 0],
      [2, -2],         [2, 2],
   [0, -3],                [0, 3],
      [-2, -2],        [-2, 2],
               [-3, 0];

solveboard q:to/END/;
    . _ _ . _ _ .
    _ _ _ _ _ _ _
    _ _ _ _ _ _ _
    . _ _ _ _ _ .
    . . _ _ _ . .
    . . . 1 . . .
    END

sub solveboard($board) {
    my $max = +$board.comb(/\w+/);
    my $width = $max.chars;

    my @grid;
    my @known;
    my @neigh;
    my @degree;

    @grid = $board.lines.map: -> $line {
        [ $line.words.map: { /^_/ ?? 0 !! /^\./ ?? Rat !! $_ } ]
    }

    sub neighbors($y,$x --> List) {
        eager gather for @adjacent {
            my $y1 = $y + .[0];
            my $x1 = $x + .[1];
            take [$y1,$x1] if defined @grid[$y1][$x1];
        }
    }

    for ^@grid -> $y {
        for ^@grid[$y] -> $x {
            if @grid[$y][$x] -> $v {
                @known[$v] = [$y,$x];
            }
            if @grid[$y][$x].defined {
                @neigh[$y][$x] = neighbors($y,$x);
                @degree[$y][$x] = +@neigh[$y][$x];
            }
        }
    }
    print "\e[0H\e[0J";

    my $tries = 0;

    try_fill 1, @known[1];

    sub try_fill($v, $coord [$y,$x] --> Bool) {
        return True if $v > $max;
        $tries++;

        my $old = @grid[$y][$x];

        return False if +$old and $old != $v;
        return False if @known[$v] and @known[$v] !eqv $coord;

        @grid[$y][$x] = $v;               # conjecture grid value

        print "\e[0H";                    # show conjectured board
        for @grid -> $r {
            say do for @$r {
                when Rat { ' ' x $width }
                when 0   { '_' x $width }
                default  { .fmt("%{$width}d") }
            }
        }


        my @neighbors = @neigh[$y][$x][];

        my @degrees;
        for @neighbors -> \n [$yy,$xx] {
            my $d = --@degree[$yy][$xx];  # conjecture new degrees
            push @degrees[$d], n;         # and categorize by degree
        }

        for @degrees.grep(*.defined) -> @ties {
            for @ties.reverse {           # reverse works better for this hidato anyway
                return True if try_fill $v + 1, $_;
            }
        }

        for @neighbors -> [$yy,$xx] {
            ++@degree[$yy][$xx];          # undo degree conjectures
        }

        @grid[$y][$x] = $old;             # undo grid value conjecture
        return False;
    }

    say "$tries tries";
}
#---------------------------------------------------- 931 solve-a-numbrix-puzzle
my @adjacent =           [-1, 0],
               [ 0, -1],          [ 0, 1],
                         [ 1, 0];
put "\n" xx 60;

solveboard q:to/END/;
    __ __ __ __ __ __ __ __ __
    __ __ 46 45 __ 55 74 __ __
    __ 38 __ __ 43 __ __ 78 __
    __ 35 __ __ __ __ __ 71 __
    __ __ 33 __ __ __ 59 __ __
    __ 17 __ __ __ __ __ 67 __
    __ 18 __ __ 11 __ __ 64 __
    __ __ 24 21 __  1  2 __ __
    __ __ __ __ __ __ __ __ __
    END

# And
put "\n" xx 60;

solveboard q:to/END/;
    0  0  0  0  0  0  0  0  0
    0 11 12 15 18 21 62 61  0
    0  6  0  0  0  0  0 60  0
    0 33  0  0  0  0  0 57  0
    0 32  0  0  0  0  0 56  0
    0 37  0  1  0  0  0 73  0
    0 38  0  0  0  0  0 72  0
    0 43 44 47 48 51 76 77  0
    0  0  0  0  0  0  0  0  0
    END


sub solveboard($board) {
    my $max = +$board.comb(/\w+/);
    my $width = $max.chars;

    my @grid;
    my @known;
    my @neigh;
    my @degree;

    @grid = $board.lines.map: -> $line {
        [ $line.words.map: { /^_/ ?? 0 !! /^\./ ?? Rat !! $_ } ]
    }

    sub neighbors($y,$x --> List) {
        eager gather for @adjacent {
            my $y1 = $y + .[0];
            my $x1 = $x + .[1];
            take [$y1,$x1] if defined @grid[$y1][$x1];
        }
    }

    for ^@grid -> $y {
        for ^@grid[$y] -> $x {
            if @grid[$y][$x] -> $v {
                @known[$v] = [$y,$x];
            }
            if @grid[$y][$x].defined {
                @neigh[$y][$x] = neighbors($y,$x);
                @degree[$y][$x] = +@neigh[$y][$x];
            }
        }
    }
    print "\e[0H\e[0J";

    my $tries = 0;

    try_fill 1, @known[1];

    sub try_fill($v, $coord [$y,$x] --> Bool) {
        return True if $v > $max;
        $tries++;

        my $old = @grid[$y][$x];

        return False if +$old and $old != $v;
        return False if @known[$v] and @known[$v] !eqv $coord;

        @grid[$y][$x] = $v;               # conjecture grid value

        print "\e[0H";                    # show conjectured board
        for @grid -> $r {
            say do for @$r {
                when Rat { ' ' x $width }
                when 0   { '_' x $width }
                default  { .fmt("%{$width}d") }
            }
        }


        my @neighbors = @neigh[$y][$x][];

        my @degrees;
        for @neighbors -> \n [$yy,$xx] {
            my $d = --@degree[$yy][$xx];  # conjecture new degrees
            push @degrees[$d], n;         # and categorize by degree
        }

        for @degrees.grep(*.defined) -> @ties {
            for @ties.reverse {           # reverse works better for this hidato anyway
                return True if try_fill $v + 1, $_;
            }
        }

        for @neighbors -> [$yy,$xx] {
            ++@degree[$yy][$xx];          # undo degree conjectures
        }

        @grid[$y][$x] = $old;             # undo grid value conjecture
        return False;
    }

    say "$tries tries";
}
#------------------------------------------------------- 932 solve-a-rubiks-cube
# 20230401 Raku programming solution

my @data=<UL DL RF UB FD BR DB UF DR UR BL FL FDR BLU DLB URB RUF FLD BRD FUL>;
my @goal=<UF UR UB UL DF DR DB DL FR FL BR BL UFR URB UBL ULF DRF DFL DLB DBR>;

sub printAlg ($x) { #--- Algorithms.

   my $algo  = 'x0F0DN0EB0H00N0B0R0KB0L0QB0G1A1M11C1I1E1OFI2'~
               'DN2IEOB2H22N2B2GRM2MKGB2GLM2QBK23D3EN3E3B3N33H3';
   $algo ~~ s:g
      !(\D*)(\d)!{
      $0 ~ <ILOFCLKHRNQCL OBIRALOBIRAL CEJHPEIMIG DFNRHRDKMQ>[$1]
      #  ~ [~] reverse map { TR/G..R/M..X/ }, " $0".comb }!;
         ~ " $0".trans( ['G'..'R'] => ['M'..'X'] ).flip }!;

   my @algo = $algo.split: ' ';

   #`[[[ or use the following to save some CPU power and time # my @algo = <
      xILOFCLKHRNQCLx  FILOFCLKHRNQCLF    DNILOFCLKHRNQCLTD EBILOFCLKHRNQCLBE
      HILOFCLKHRNQCLN  ILOFCLKHRNQCL      NILOFCLKHRNQCLT   BILOFCLKHRNQCLB
      RILOFCLKHRNQCLX  KBILOFCLKHRNQCLBQ  LILOFCLKHRNQCLR   QBILOFCLKHRNQCLBW
      GOBIRALOBIRALM   AOBIRALOBIRALA     MOBIRALOBIRALS    OBIRALOBIRAL
      COBIRALOBIRALC   IOBIRALOBIRALO     EOBIRALOBIRALE    OFICEJHPEIMIGOFU
      DNCEJHPEIMIGTD   IEOBCEJHPEIMIGBUEO HCEJHPEIMIGN      CEJHPEIMIG
      NCEJHPEIMIGT     BCEJHPEIMIGB       GRMCEJHPEIMIGSXM  MKGBCEJHPEIMIGBMQS
      GLMCEJHPEIMIGSRM QBKCEJHPEIMIGQBW   DFNRHRDKMQ        DDFNRHRDKMQD
      ENDFNRHRDKMQTE   EDFNRHRDKMQE       BDFNRHRDKMQB      NDFNRHRDKMQT
      DFNRHRDKMQ       HDFNRHRDKMQN >; #]]]

   say [~] my @moves = map {
      substr('UDFBLR', (my $ord=.ord-65) % 6, 1) ~ substr("2 '", $ord div 6, 1)
   }, @algo[$x].comb;

   return @moves.elems
}

my $total = 0;

for 1..18 -> $x { #--- Orient.
   until @data[$x] ∈ @goal {
      $total += printAlg $x;
      @data[$x]                 ~~ s/(.)(.+)/$1$0/;
      @data[$x < 12 ?? 0 !! 19] ~~ s/(.+)(.)/$1$0/;
   }
}

for ^41 { #--- Permute.
   for ^20 -> $w {
      next if @data[$w] eq @goal[$w];
      my $x = 0;
      until @data[$w] eq @goal[$x] { $x++ };
      $x < 12 ?? ( @data[0,$x,12,15] = @data[$x,0,15,12] )
              !! ( @data[12,$x]      = @data[$x,12]      );
      $total += printAlg $x+=18 and last
   }
}

say "\nTotal number of moves : $total";
#---------------------------------- 933 solve-equations-with-substitution-method
sub solve-system-of-two-linear-equations ( [ \a1, \b1, \c1 ], [ \a2, \b2, \c2 ] ) {
    my \X = ( b2 * c1   -   b1 * c2 )
          / ( b2 * a1   -   b1 * a2 );

    my \Y = ( a1 * X    -   c1 ) / -b1;

    return X, Y;
}
say solve-system-of-two-linear-equations( (3,1,-1), (2,-3,-19) );
#------------------------------------------- 934 solve-hanging-lantern-problem-1
unit sub MAIN(*@columns);

sub postfix:<!>($n) { [*] 1..$n }

say [+](@columns)! / [*](@columns»!);
#------------------------------------------- 935 solve-hanging-lantern-problem-2
unit sub MAIN(*@columns, :v(:$verbose)=False);

my @sequences = @columns
              . pairs
              . map({ (.key+1) xx .value })
              . flat
              . permutations
              . map( *.join(',') )
              . unique;

if ($verbose) {
  say "There are {+@sequences} possible takedown sequences:";
  say "[$_]" for @sequences;
} else {
  say +@sequences;
}
#------------------------------------------- 936 solve-hanging-lantern-problem-3
unit sub MAIN(*@columns, :v(:$verbose)=False);

my @sequences = @columns
              . pairs
              . map({ (.key+1) xx .value })
              . flat
              . permutations
              . map( *.join(',') )
              . unique;

if ($verbose) {
  my @offsets = |0,|(1..@columns).map: { [+] @columns[0..$_-1] };
  my @matrix;
  for ^@columns.max -> $i {
    for ^@columns -> $j {
      my $value = $i < @columns[$j] ?? ($i+@offsets[$j]+1) !! Nil;
      @matrix[$j][$i] = $value if $value;;
      print "\t" ~ ($value // " ");
    }
    say '';
  }
  say "There are {+@sequences} possible takedown sequences:";
  for @sequences».split(',') -> @seq {
    my @work = @matrix».clone;
    my $seq = '[';
    for @seq -> $col {
      $seq ~= @work[$col-1].pop ~ ',';
    }
    $seq ~~ s/','$/]/;
    say $seq;
  }
} else {
  say +@sequences;
}
#-------------------------------------------- 937 solve-the-no-connection-puzzle
my @adjacent = gather -> $y, $x {
    take [$y,$x] if abs($x|$y) > 2;
} for flat -5 .. 5 X -5 .. 5;

solveboard q:to/END/;
    . _ . . _ .
    . . . . . .
    _ . _ 1 . _
    . . . . . .
    . _ . . _ .
    END

sub solveboard($board) {
    my $max = +$board.comb(/\w+/);
    my $width = $max.chars;

    my @grid;
    my @known;
    my @neigh;
    my @degree;

    @grid = $board.lines.map: -> $line {
        [ $line.words.map: { /^_/ ?? 0 !! /^\./ ?? Rat !! $_ } ]
    }

    sub neighbors($y,$x --> List) {
        eager gather for @adjacent {
            my $y1 = $y + .[0];
            my $x1 = $x + .[1];
            take [$y1,$x1] if defined @grid[$y1][$x1];
        }
    }

    for ^@grid -> $y {
        for ^@grid[$y] -> $x {
            if @grid[$y][$x] -> $v {
                @known[$v] = [$y,$x];
            }
            if @grid[$y][$x].defined {
                @neigh[$y][$x] = neighbors($y,$x);
                @degree[$y][$x] = +@neigh[$y][$x];
            }
        }
    }
    print "\e[0H\e[0J";

    my $tries = 0;

    try_fill 1, @known[1];

    sub try_fill($v, $coord [$y,$x] --> Bool) {
        return True if $v > $max;
        $tries++;

        my $old = @grid[$y][$x];

        return False if +$old and $old != $v;
        return False if @known[$v] and @known[$v] !eqv $coord;

        @grid[$y][$x] = $v;               # conjecture grid value

        print "\e[0H";                    # show conjectured board
        for @grid -> $r {
            say do for @$r {
                when Rat { ' ' x $width }
                when 0   { '_' x $width }
                default  { .fmt("%{$width}d") }
            }
        }


        my @neighbors = @neigh[$y][$x][];

        my @degrees;
        for @neighbors -> \n [$yy,$xx] {
            my $d = --@degree[$yy][$xx];  # conjecture new degrees
            push @degrees[$d], n;         # and categorize by degree
        }

        for @degrees.grep(*.defined) -> @ties {
            for @ties.reverse {           # reverse works better for this hidato anyway
                return True if try_fill $v + 1, $_;
            }
        }

        for @neighbors -> [$yy,$xx] {
            ++@degree[$yy][$xx];          # undo degree conjectures
        }

        @grid[$y][$x] = $old;             # undo grid value conjecture
        return False;
    }

    say "$tries tries";
}
#------------------------------------------- 938 solve-triangle-solitaire-puzzle
constant @start =  <
        0
       1 1
      1 1 1
     1 1 1 1
    1 1 1 1 1
>».Int;

constant @moves =
    [ 0, 1, 3],[ 0, 2, 5],[ 1, 3, 6],
    [ 1, 4, 8],[ 2, 4, 7],[ 2, 5, 9],
    [ 3, 4, 5],[ 3, 6,10],[ 3, 7,12],
    [ 4, 7,11],[ 4, 8,13],[ 5, 8,12],
    [ 5, 9,14],[ 6, 7, 8],[ 7, 8, 9],
    [10,11,12],[11,12,13],[12,13,14];

my $format = (1..5).map: {' ' x 5-$_, "%d " x $_, "\n"};

sub solve(@board, @move) {
    return "   Solved" if @board.sum == 1;
    return Nil if @board[@move[1]] == 0;
    my $valid = do given @board[@move[0]] {
        when 0 {
            return Nil if @board[@move[2]] == 0;
            "move {@move[2]} to {@move[0]}\n ";
        }
        default {
            return Nil if @board[@move[2]] == 1;
            "move {@move[0]} to {@move[2]}\n ";
        }
    }

    my @new-layout = @board;
    @new-layout[$_] = 1 - @new-layout[$_] for @move;
    my $result;
    for @moves -> @this-move {
        $result = solve(@new-layout, @this-move);
        last if $result
    }
    $result ?? "$valid\n " ~ sprintf($format, |@new-layout) ~ $result !! $result
}

print "Starting with\n ", sprintf($format, |@start);

my $result;
for @moves -> @this-move {
    $result = solve(@start, @this-move);
    last if $result
};
say $result ?? $result !! "No solution found";
#--------------------------------------- 939 sort-a-list-of-object-identifiers-1
.say for sort *.comb(/\d+/)».Int, <
    1.3.6.1.4.1.11.2.17.19.3.4.0.10
    1.3.6.1.4.1.11.2.17.5.2.0.79
    1.3.6.1.4.1.11.2.17.19.3.4.0.4
    1.3.6.1.4.1.11150.3.4.0.1
    1.3.6.1.4.1.11.2.17.19.3.4.0.1
    1.3.6.1.4.1.11150.3.4.0
>;
#------------------------------------- 940 sort-an-array-of-composite-structures
my class Employee {
   has Str $.name;
   has Rat $.wage;
}

my $boss     = Employee.new( name => "Frank Myers"     , wage => 6755.85 );
my $driver   = Employee.new( name => "Aaron Fast"      , wage => 2530.40 );
my $worker   = Employee.new( name => "John Dude"       , wage => 2200.00 );
my $salesman = Employee.new( name => "Frank Mileeater" , wage => 4590.12 );

my @team = $boss, $driver, $worker, $salesman;

my @orderedByName = @team.sort( *.name )».name;
my @orderedByWage = @team.sort( *.wage )».name;

say "Team ordered by name (ascending order):";
say @orderedByName.join('  ');
say "Team ordered by wage (ascending order):";
say @orderedByWage.join('  ');
#-------------------------------------------- 941 sort-an-outline-at-every-level
my @tests = q:to/END/.split( /\n\n+/ )».trim;
zeta
    beta
    gamma
        lambda
        kappa
        mu
    delta
alpha
    theta
    iota
    epsilon

zeta
	gamma
		mu
		lambda
		kappa
	delta
	beta
alpha
	theta
	iota
	epsilon

alpha
    epsilon
	iota
    theta
zeta
    beta
    delta
    gamma
    	kappa
        lambda
        mu

zeta
    beta
   gamma
        lambda
         kappa
        mu
    delta
alpha
    theta
    iota
    epsilon
END

for @tests -> $t {
    say "{'=' x 55}\nUnsorted:\n$t";
    my $indent = try detect-indent $t;
    next unless $indent;
    say "\nSorted ascending:";
    pretty-print import($t, :level($indent) ).List, :ws($indent);
    say "\nSorted descending:";
    pretty-print import($t, :level($indent) ).List, :ws($indent), :desc;
}

sub detect-indent ($text) {
    my $consistent = $text.lines.map(* ~~ / ^ (\h*) /).join.comb.Set;
    note "\nUnwilling to continue; Inconsistent indent characters." and return '' if +$consistent > 1;
    my @ws = $text.lines.map: (* ~~ / ^ (\h*) /)».Str;
    my $indent = @ws.grep( *.chars > 0 ).min.first;
    note "\nUnwilling to continue; Inconsistent indentation." and return '' unless all
      @ws.map: { next unless .[0]; (.[0].chars %% $indent.chars) }
    $indent
}

sub import (Str $trees, :$level) {
    my $forest = '[';
    my $last = -Inf;
    for $trees.lines -> $branch {
        $branch ~~ / ($($level))* /;
        my $this = +$0;
        $forest ~= do {
            given $this cmp $last {
                when More { (?$this ?? q[ => \[ ] !! "" )~ "'{$branch.trim}'" }
                when Same { ", '{$branch.trim}'" }
                when Less { "{']' x $last - $this}, '{$branch.trim}' " }
            }
        }
        $last = $this;
    }
    $forest ~= ']' x 1 + $last;
    use MONKEY-SEE-NO-EVAL;
    $forest.EVAL;
}

multi pretty-print (List $struct, :$level = 0, :$ws = '    ', :$desc = False) {
    if $desc {
        pretty-print($_, :level($level), :$ws, :$desc ) for $struct.flat.sort.reverse.List
    } else {
        pretty-print($_, :level($level), :$ws, :$desc ) for $struct.flat.sort.List
    }
}

multi pretty-print (Pair $struct, :$level = 0, :$ws = '    ', :$desc = False) {
    say $ws x $level, $struct.key;
    pretty-print( $struct.value.sort( ).List, :level($level + 1), :$ws, :$desc )
}

multi pretty-print (Str $struct, :$level = 0, :$ws = '    ', :$desc = False) {
    say $ws x $level , $struct;
}
#--------------------------------------------------- 942 sort-disjoint-sublist-1
my @values  = 7, 6, 5, 4, 3, 2, 1, 0;
my @indices = 6, 1, 7;

@values[ @indices.sort ] .= sort;

say @values;
#--------------------------------------------------- 943 sort-disjoint-sublist-2
sub disjointSort( @values, @indices --> List ) {
   my @sortedValues = @values[ @indices ].sort ;
   for @indices.sort -> $insert {
      @values[ $insert ] = @sortedValues.shift ;
   }
   return @values ;
}

my @values = ( 7 , 6 , 5 , 4 , 3 , 2 , 1 , 0 ) ;
my @indices = ( 6 , 1 , 7 ) ;
my @sortedValues = disjointSort( @values , @indices ) ;
say @sortedValues ;
#-------------------------------------------- 944 sort-numbers-lexicographically
sub lex (Real $n, $step = 1) {
    ($n < 1 ?? ($n, * + $step …^ * > 1)
            !! ($n, * - $step …^ * < 1)).sort: ~*
}

# TESTING
for 13, 21, -22, (6, .333), (-4, .25), (-5*π, e) {
    my ($bound, $step) = |$_, 1;
    say "Boundary:$bound, Step:$step >> ", lex($bound, $step).join: ', ';
}
#----------------------------------------- 945 sort-primes-from-list-to-a-list-1
put <2 43 81 122 63 13 7 95 103>.grep( &is-prime ).sort
#----------------------------------------- 946 sort-primes-from-list-to-a-list-2
put <2 43 81 122 63 13 7 95 103>.grep( &is-prime ).sort: ~*
#------------------------------------------------------------ 947 sort-stability
use v6;
my @cities =
    ['UK', 'London'],
    ['US', 'New York'],
    ['US', 'Birmingham'],
    ['UK', 'Birmingham'],
    ;

.say for @cities.sort: { .[1] };
#------------------------ 948 sort-the-letters-of-string-in-alphabetical-order-1
sub sort_within_string ( $_ is copy ) {
    constant @lexographic_order = sort *.fc, map &chr, 1..255;

    return join '', gather for @lexographic_order -> $l {
        my $count = s:g/$l//;
        take $l x $count;
        LAST { warn "Original string had non-ASCII chars: {.raku}" if .chars }
    }
}
say trim .&sort_within_string for q:to/END/.lines;
The quick brown fox jumps over the lazy dog, apparently
Now is the time for all good men to come to the aid of their country.
END
#------------------------------------------------------ 949 sort-three-variables
# Sorting strings. Added a vertical bar between strings to make them discernable
my ($a, $b, $c) = 'lions, tigers, and', 'bears,  oh my!', '(from "The Wizard of Oz")';
say "sorting: {($a, $b, $c).join('|')}";
say ($a, $b, $c).sort.join('|'), ' - standard lexical string sort';

# Sorting numeric things
my ($x, $y, $z) = 7.7444e4, -12, 18/2;
say "\nsorting: $x $y $z";
say ($x, $y, $z).sort, ' - standard numeric sort, low to high';

# Or, with a modified comparitor:
for  -*,       ' - numeric sort high to low',
     ~*,       ' - lexical "string" sort',
     *.chars,  ' - sort by string length short to long',
     -*.chars, ' - or long to short'
  -> $comparitor, $type {
    my ($x, $y, $z) = 7.7444e4, -12, 18/2;
    say ($x, $y, $z).sort( &$comparitor ), $type;
}
say '';

# sort ALL THE THINGS
# sorts by lexical order with numeric values by magnitude.
.say for ($a, $b, $c, $x, $y, $z).sort;
#-------------------------------------------- 950 sort-using-a-custom-comparator
my @strings = <Here are some sample strings to be sorted>;
put @strings.sort:{.chars, .lc};
put sort -> $x { $x.chars, $x.lc }, @strings;
#-------------------------------------------- 951 sorting-algorithms-bead-sort-1
# routine cribbed from List::Utils;
sub transpose(@list is copy) {
    gather {
        while @list {
            my @heads;
            if @list[0] !~~ Positional { @heads = @list.shift; }
            else { @heads = @list.map({$_.shift unless $_ ~~ []}); }
            @list = @list.map({$_ unless $_ ~~ []});
            take [@heads];
        }
    }
}

sub beadsort(@l) {
    (transpose(transpose(map {[1 xx $_]}, @l))).map(*.elems);
}

my @list = 2,1,3,5;
say beadsort(@list).perl;
#-------------------------------------------- 952 sorting-algorithms-bead-sort-2
sub beadsort(*@list) {
    my @rods;
    for words ^«@list -> $x { @rods[$x].push(1) }
    gather for ^@rods[0] -> $y {
        take [+] @rods.map: { .[$y] // last }
    }
}

say beadsort 2,1,3,5;
#----------------------------------------------- 953 sorting-algorithms-bogosort
sub bogosort (@list is copy) {
    @list .= pick(*) until [<=] @list;
    return @list;
}

my @nums = (^5).map: { rand };
say @nums.sort.Str eq @nums.&bogosort.Str ?? 'ok' !! 'not ok';
#--------------------- 954 sorting-algorithms-cocktail-sort-with-shifting-bounds
sub cocktail_sort ( @a ) {
    my ($min, $max) = 0, +@a - 2;
    loop {
        my $swapped_forward = 0;
        for $min .. $max -> $i {
            given @a[$i] cmp @a[$i+1] {
                when More {
                    @a[ $i, $i+1 ] .= reverse;
                    $swapped_forward = 1
                }
                default {}
            }
        }
        last if not $swapped_forward;
        $max -= 1;

        my $swapped_backward = 0;
        for ($min .. $max).reverse -> $i {
            given @a[$i] cmp @a[$i+1] {
                when More {
                    @a[ $i, $i+1 ] .= reverse;
                    $swapped_backward = 1
                }
                default {}
            }
        }
        last if not $swapped_backward;
        $min += 1;
    }
    @a
}

my @weights = (flat 0..9, 'A'..'F').roll(2 + ^4 .roll).join xx 100;
say @weights.sort.Str eq @weights.&cocktail_sort.Str ?? 'ok' !! 'not ok';
#------------------------------------------ 955 sorting-algorithms-cocktail-sort
sub cocktail_sort ( @a ) {
    my $range = 0 ..^ @a.end;
    loop {
        my $swapped_forward = 0;
        for $range.list -> $i {
            if @a[$i] > @a[$i+1] {
                @a[ $i, $i+1 ] .= reverse;
                $swapped_forward = 1;
            }
        }
        last if not $swapped_forward;

        my $swapped_backward = 0;
        for $range.reverse -> $i {
            if @a[$i] > @a[$i+1] {
                @a[ $i, $i+1 ] .= reverse;
                $swapped_backward = 1;
            }
        }
        last if not $swapped_backward;
    }
    return @a;
}

my @weights = (^50).map: { 100 + ( 1000.rand.Int / 10 ) };
say @weights.sort.Str eq @weights.&cocktail_sort.Str ?? 'ok' !! 'not ok';
#---------------------------------------------- 956 sorting-algorithms-comb-sort
sub comb_sort ( @a is copy ) {
    my $gap = +@a;
    my $swaps = 1;
    while $gap > 1 or $swaps {
        $gap = ( ($gap * 4) div 5 ) || 1 if $gap > 1;

        $swaps = 0;
        for ^(+@a - $gap) -> $i {
            my $j = $i + $gap;
            if @a[$i] > @a[$j] {
                @a[$i, $j] .= reverse;
                $swaps = 1;
            }
        }
    }
    return @a;
}

my @weights = (^50).map: { 100 + ( 1000.rand.Int / 10 ) };
say @weights.sort.Str eq @weights.&comb_sort.Str ?? 'ok' !! 'not ok';
#--------------------------------------------- 957 sorting-algorithms-cycle-sort
sub cycle_sort ( @nums ) {
    my $writes = 0;

    # Loop through the array to find cycles to rotate.
    for @nums.kv -> $cycle_start, $item is copy {

        # Find where to put the item.
        my $pos = $cycle_start
                + @nums[ $cycle_start ^.. * ].grep: * < $item;

        # If the item is already there, this is not a cycle.
        next if $pos == $cycle_start;

        # Otherwise, put the item there or right after any duplicates.
        $pos++ while $item == @nums[$pos];
        ( @nums[$pos], $item ) .= reverse;
        $writes++;

        # Rotate the rest of the cycle.
        while $pos != $cycle_start {

            # Find where to put the item.
            $pos = $cycle_start
                 + @nums[ $cycle_start ^.. * ].grep: * < $item;

            # Put the item there or right after any duplicates.
            $pos++ while $item == @nums[$pos];
            ( @nums[$pos], $item ) .= reverse;
            $writes++;
        }
    }

    return $writes;
}

my @a = <0 1 2 2 2 2 1 9 3.5 5 8 4 7 0 6>;

say @a;
say 'writes ', cycle_sort(@a);
say @a;
#--------------------------------------------- 958 sorting-algorithms-gnome-sort
sub gnome_sort (@a) {
    my ($i, $j) = 1, 2;
    while $i < @a {
        if @a[$i - 1] <= @a[$i] {
            ($i, $j) = $j, $j + 1;
        }
        else {
            (@a[$i - 1], @a[$i]) = @a[$i], @a[$i - 1];
            $i--;
            ($i, $j) = $j, $j + 1 if $i == 0;
        }
    }
}

my @n = (1..10).roll(20);
say @n.&gnome_sort ~~ @n.sort ?? 'ok' !! 'not ok';
#----------------------------------------------- 959 sorting-algorithms-heapsort
sub heap_sort ( @list ) {
    for ( 0 ..^ +@list div 2 ).reverse -> $start {
        _sift_down $start, @list.end, @list;
    }

    for ( 1 ..^ +@list ).reverse -> $end {
        @list[ 0, $end ] .= reverse;
        _sift_down 0, $end-1, @list;
    }
}

sub _sift_down ( $start, $end, @list ) {
    my $root = $start;
    while ( my $child = $root * 2 + 1 ) <= $end {
        $child++ if $child + 1 <= $end and [<] @list[ $child, $child+1 ];
        return if @list[$root] >= @list[$child];
        @list[ $root, $child ] .= reverse;
        $root = $child;
    }
}

my @data = 6, 7, 2, 1, 8, 9, 5, 3, 4;
say 'Input  = ' ~ @data;
@data.&heap_sort;
say 'Output = ' ~ @data;
#----------------------------------------- 960 sorting-algorithms-insertion-sort
sub insertion_sort ( @a is copy ) {
    for 1 .. @a.end -> $i {
        my $value = @a[$i];
        my $j;
        loop ( $j = $i-1; $j >= 0 and @a[$j] > $value; $j-- ) {
            @a[$j+1] = @a[$j];
        }
        @a[$j+1] = $value;
    }
    return @a;
}

my @data = 22, 7, 2, -5, 8, 4;
say 'input  = ' ~ @data;
say 'output = ' ~ @data.&insertion_sort;
#----------------------------------------- 961 sorting-algorithms-pancake-sort-1
sub pancake_sort(@a is copy) {
    my $endpoint = @a.end;
    while $endpoint > 0 and not [<] @a {
        my $max_i = [0..$endpoint].max: { @a[$_] };
        my $max   = @a[$max_i];
        if @a[$endpoint] == $max {
            $endpoint-- while $endpoint >= 0 and @a[$endpoint] == $max;
            next;
        }
        # @a[$endpoint] is not $max, so it needs flipping;
        # Flip twice if max is not already at the top.
        @a[0..$max_i]    .= reverse if $max_i != 0;
        @a[0..$endpoint] .= reverse;
        $endpoint--;
    }
    return @a;
}

for <6 7 2 1 8 9 5 3 4>,
    <4 5 7 1 46 78 2 2 1 9 10>,
    <0 -9 -8 2 -7 8 6 -2 -8 3> -> @data {
   say 'input  = ' ~ @data;
   say 'output = ' ~ @data.&pancake_sort
}
#----------------------------------------- 962 sorting-algorithms-pancake-sort-2
# 20240908 Updated Raku programming solution

sub pancake-sort(@data is copy) { # imperative
   for @data.elems - 1 ... 1 {
      @data[0 .. @data[0..$_].maxpairs[*-1].key] .= reverse;
      @data[0 .. $_] .= reverse;
   }
   return @data
}

sub pancake_sort(@data is copy) { # recursive
   return @data if @data.elems <= 1;
   @data[0 .. @data.maxpairs[*-1].key] .= reverse;
   return pancake_sort(@data[1..*-1]).append: @data[0]
}

for <6 7 2 1 8 9 5 3 4>,
    <4 5 7 1 46 78 2 2 1 9 10>,
    <0 -9 -8 2 -7 8 6 -2 -8 3> -> @data {
   say 'input  = ' ~ @data;
   say 'output = ' ~ pancake-sort(@data);
   say 'output = ' ~ pancake_sort(@data) ~ "\n"
}
#------------------------------------------ 963 sorting-algorithms-patience-sort
multi patience(*@deck) {
    my @stacks;
    for @deck -> $card {
        with @stacks.first: $card before *[*-1] -> $stack {
            $stack.push: $card;
        }
        else {
            @stacks.push: [$card];
        }
    }
    gather while @stacks {
        take .pop given min :by(*[*-1]), @stacks;
        @stacks .= grep: +*;
    }
}

say ~patience ^10 . pick(*);
#--------------------------------------- 964 sorting-algorithms-permutation-sort
# Lexicographic permuter from "Permutations" task.
sub next_perm ( @a ) {
    my $j = @a.end - 1;
    $j-- while $j >= 1 and [>] @a[ $j, $j+1 ];

    my $aj = @a[$j];
    my $k  = @a.end;
    $k-- while [>] $aj, @a[$k];

    @a[ $j, $k ] .= reverse;

    my Int $r = @a.end;
    my Int $s = $j + 1;
    while $r > $s {
        @a[ $r, $s ] .= reverse;
        $r--;
        $s++;
    }
}

sub permutation_sort ( @a ) {
    my @n = @a.keys;
    my $perm_count = [*] 1 .. +@n; # Factorial
    for ^$perm_count {
        my @permuted_a = @a[ @n ];
        return @permuted_a if [le] @permuted_a;
        next_perm(@n);
    }
}

my @data  = < c b e d a >; # Halfway between abcde and edcba
say 'Input  = ' ~ @data;
say 'Output = ' ~ @data.&permutation_sort;
#--------------------------------------- 965 sorting-algorithms-selection-sort-1
sub selection_sort ( @a is copy ) {
    for 0 ..^ @a.end -> $i {
        my $min = [ $i+1 .. @a.end ].min: { @a[$_] };
        @a[$i, $min] = @a[$min, $i] if @a[$i] > @a[$min];
    }
    return @a;
}

my @data = 22, 7, 2, -5, 8, 4;
say 'input  = ' ~ @data;
say 'output = ' ~ @data.&selection_sort;
#--------------------------------------------- 966 sorting-algorithms-shell-sort
sub shell_sort ( @a is copy ) {
    loop ( my $gap = (@a/2).round; $gap > 0; $gap = ( $gap * 5 / 11 ).round ) {
        for $gap .. @a.end -> $i {
            my $temp = @a[$i];

            my $j;
            loop ( $j = $i; $j >= $gap; $j -= $gap ) {
                my $v = @a[$j - $gap];
                last if $v <= $temp;
                @a[$j] = $v;
            }

            @a[$j] = $temp;
        }
    }
    return @a;
}
my @data = 22, 7, 2, -5, 8, 4;
say 'input  = ' ~ @data;
say 'output = ' ~ @data.&shell_sort;
#------------------------------------------- 967 sorting-algorithms-sleep-sort-1
await map -> $delay { start { sleep $delay ; say $delay } },
    <6 8 1 12 2 14 5 2 1 0>;
#-------------------------------------------- 968 sorting-algorithms-stooge-sort
sub stoogesort( @L, $i = 0, $j = @L.end ) {
    @L[$j,$i] = @L[$i,$j] if @L[$i] > @L[$j];

    my $interval = $j - $i;

    if $interval > 1 {
         my $t = ( $interval + 1 ) div 3;
         stoogesort( @L, $i   , $j-$t );
         stoogesort( @L, $i+$t, $j    );
         stoogesort( @L, $i   , $j-$t );
    }
    return @L;
}

my @L = 1, 4, 5, 3, -6, 3, 7, 10, -2, -5;

stoogesort(@L).Str.say;
#----------------------------- 969 sorting-algorithms-tree-sort-on-a-linked-list
# 20231201 Raku programming solution

class BinaryTree { has ($.node, $.leftSubTree, $.rightSubTree) is rw;

   method insert($item) {
      if not $.node.defined {
         $.node = $item;
         ($.leftSubTree, $.rightSubTree)>>.&{ $_ = BinaryTree.new }
      } elsif $item cmp $.node < 0 {
         $.leftSubTree.insert($item);
      } else {
         $.rightSubTree.insert($item);
      }
   }

   method inOrder(@ll) {
      return unless $.node.defined;
      $.leftSubTree.inOrder(@ll);
      @ll.push($.node);
      $.rightSubTree.inOrder(@ll);
   }
}

sub treeSort(@ll) {
   my $searchTree = BinaryTree.new;
   for @ll -> $i { $searchTree.insert($i) }
   $searchTree.inOrder(my @ll2);
   return @ll2
}

sub printLinkedList(@ll, Str $fmt, Bool $sorted) {
   for @ll -> $i { printf "$fmt ", $i }
   $sorted ?? say() !! print "-> "
}

my @ll  = <5 3 7 9 1>;
#my @ll = [37, 88, 13, 18, 72, 77, 29, 93, 21, 97, 37, 42, 67, 22, 29, 2];
printLinkedList(@ll, "%d", False);
my @lls = treeSort(@ll);
printLinkedList(@lls, "%d", True);

my @ll2 = <d c e b a>;
#my @ll2 = <one two three four five six seven eight nine ten>;
printLinkedList(@ll2, "%s", False);
my @lls2 = treeSort(@ll2);
printLinkedList(@lls2, "%s", True);
#------------------------------------------------------------------- 970 soundex
sub soundex ($name --> Str) {
    my $first = substr($name,0,1).uc;
    gather {
        take $first;
        my $fakefirst = '';
        $fakefirst = "de " if $first ~~ /^ <[AEIOUWH]> /;
        "$fakefirst$name".lc.trans('wh' => '') ~~ /
            ^
            [
                [
                | <[ bfpv     ]>+ { take 1 }
                | <[ cgjkqsxz ]>+ { take 2 }
                | <[ dt       ]>+ { take 3 }
                | <[ l        ]>+ { take 4 }
                | <[ mn       ]>+ { take 5 }
                | <[ r        ]>+ { take 6 }
                ]
            || .
            ]+
            $ { take 0,0,0 }
        /;
    }.flat.[0,2,3,4].join;
}

for < Soundex     S532
      Example     E251
      Sownteks    S532
      Ekzampul    E251
      Euler       E460
      Gauss       G200
      Hilbert     H416
      Knuth       K530
      Lloyd       L300
      Lukasiewicz L222
      Ellery      E460
      Ghosh       G200
      Heilbronn   H416
      Kant        K530
      Ladd        L300
      Lissajous   L222
      Wheaton     W350
      Ashcraft    A261
      Burroughs   B620
      Burrows     B620
      O'Hara      O600 >
-> $n, $s {
    my $s2 = soundex($n);
    say $n.fmt("%16s "), $s, $s eq $s2 ?? " OK" !! " NOT OK $s2";
}
#------------------------------------------------------ 971 sparkline-in-unicode
constant @bars = '▁' ... '█';
while prompt 'Numbers separated by anything: ' -> $_ {
    my @numbers = map +*, .comb(/ '-'? [[\d+ ['.' \d*]?] | ['.' \d+]] /);
    my ($mn,$mx) = @numbers.minmax.bounds;
    say "min: $mn.fmt('%5f'); max: $mx.fmt('%5f')";
    say @bars[ @numbers.map: { @bars * ($_ - $mn) / ($mx - $mn) min @bars - 1 } ].join;
}
#-------------------------------------------------------- 972 special-factorials
sub postfix:<!> ($n) {   [*] 1 .. $n }
sub postfix:<$> ($n) { [R**] 1 .. $n }

sub sf ($n) { [*] map {                      $_! }, 1 .. $n }
sub H  ($n) { [*] map {                $_ ** $_  }, 1 .. $n }
sub af ($n) { [+] map { (-1) ** ($n - $_) *  $_! }, 1 .. $n }
sub rf ($n) {
    state @f = 1, |[\*] 1..*;
    $n == .value ?? .key !! Nil given @f.first: :p, * >= $n;
}

say 'sf : ', map &sf , 0..9;
say 'H  : ', map &H  , 0..9;
say 'af : ', map &af , 0..9;
say '$  : ', map *$  , 1..4;

say '5$ has ', 5$.chars, ' digits';

say 'rf : ', map &rf, 1, 2, 6, 24, 120, 720, 5040, 40320, 362880, 3628800;
say 'rf(119) = ', rf(119).raku;
#--------------------------------------------------- 973 special-neighbor-primes
# 20210809 Raku programming solution

for (grep {.is-prime}, 3..*).rotor(2 => -1) -> (\P1,\P2) {
   last if P2 ≥ Ⅽ;
   ($_ = P1+P2-1).is-prime and printf "%2d, %2d => %3d\n", P1, P2, $_
}
#----------------------------------------------- 974 special-pythagorean-triplet
hyper for 1..998 -> $a {
    my $a2 = $a²;
    for $a + 1 .. 999 -> $b {
        my $c = 1000 - $a - $b;
        last if $c < $b;
        say "$a² + $b² = $c²\n$a  + $b  + $c = {$a+$b+$c}\n$a  × $b  × $c = {$a×$b×$c}"
            and exit if $a2 + $b² == $c²
    }
}
#----------------------------------------------- 975 spinning-rod-animation-text
class throbber {
    has @.frames;
    has $.delay is rw = 0;
    has $!index = 0;
    has Bool $.marquee = False;
    method next {
        $!index = ($!index + 1) % +@.frames;
        sleep $.delay if $.delay;
        if $!marquee {
            ("\b" x @.frames) ~ @.frames.rotate($!index).join;
        }
        else {
            "\b" ~ @.frames[$!index];
        }
    }
}

my $rod = throbber.new( :frames(< | / - \ >), :delay(.25) );
print "\e[?25lLong running process...  ";
print $rod.next for ^20;

my $clock = throbber.new( :frames("🕐" .. "🕛") );
print "\r\nSomething else with a delay...   ";
until my $done {
    # do something in a loop;
    sleep 1/12;
    print "\b", $clock.next;
    $done = True if $++ >= 60;
}

my $moon = throbber.new( :frames('🌑🌒🌓🌔🌕🌖🌗🌘'.comb) );
print "\r\nGonna be a long night...   ";
until my $end {
    # do something in a loop;
    sleep 1/8;
    print "\b", $moon.next;
    $end = True if $++ >= 60;
}

my $scroll = throbber.new( :frames('PLEASE STAND BY...      '.comb), :delay(.1), :marquee );
print "\r\nEXPERIENCING TECHNICAL DIFFICULTIES: { $scroll.frames.join }";
print $scroll.next for ^95;

END { print "\e[?25h\n" } # clean up on exit
#----------------------------------------------------------- 976 spiral-matrix-3
sub spiral_matrix ( $n ) {
    my @sm;
    my $len = $n;
    my $pos = 0;

    for ^($n/2).ceiling -> $i {
        my $j = $i +  1;
        my $e = $n - $j;

        @sm[$i     ][$i + $_] = $pos++ for         ^(  $len); # Top
        @sm[$j + $_][$e     ] = $pos++ for         ^(--$len); # Right
        @sm[$e     ][$i + $_] = $pos++ for reverse ^(  $len); # Bottom
        @sm[$j + $_][$i     ] = $pos++ for reverse ^(--$len); # Left
    }

    return @sm;
}

say .fmt('%3d') for spiral_matrix(5);
#--------------------- 977 split-a-character-string-based-on-change-of-character
sub group-chars ($str) { $str.comb: / (.) $0* / }

# Testing:

for Q[gHHH5YY++///\], Q[fff﻿﻿﻿n⃗n⃗n⃗»»»  ℵℵ☄☄☃☃̂☃🤔🇺🇸🤦‍♂️👨‍👩‍👧‍👦] -> $string {
    put 'Original: ', $string;
    put '   Split: ', group-chars($string).join(', ');
}
#------------------------------------------------------- 978 square-but-not-cube
my @square-and-cube = map { .⁶ }, 1..Inf;

my @square-but-not-cube = (1..Inf).map({ .² }).grep({ $_ ∉ @square-and-cube[^@square-and-cube.first: * > $_, :k]});

put "First 30 positive integers that are a square but not a cube: \n",  @square-but-not-cube[^30];

put "\nFirst 15 positive integers that are both a square and a cube: \n", @square-and-cube[^15];
#------------------------------------------------------ 979 square-free-integers
# Prime factorization routines
sub prime-factors ( Int $n where * > 0 ) {
    return $n if $n.is-prime;
    return [] if $n == 1;
    my $factor = find-factor( $n );
    flat prime-factors( $factor ), prime-factors( $n div $factor );
}

sub find-factor ( Int $n, $constant = 1 ) {
    return 2 unless $n +& 1;
    if (my $gcd = $n gcd 6541380665835015) > 1 {
        return $gcd if $gcd != $n
    }
    my $x      = 2;
    my $rho    = 1;
    my $factor = 1;
    while $factor == 1 {
        $rho *= 2;
        my $fixed = $x;
        for ^$rho {
            $x = ( $x * $x + $constant ) % $n;
            $factor = ( $x - $fixed ) gcd $n;
            last if 1 < $factor;
        }
    }
    $factor = find-factor( $n, $constant + 1 ) if $n == $factor;
    $factor;
}

# Task routine
sub is-square-free (Int $n) { my @v = $n.&prime-factors.Bag.values; @v.sum/@v <= 1 }

# The Task
# Parts 1 & 2
for 1, 145, 1e12.Int, 145+1e12.Int -> $start, $end {
    say "\nSquare─free numbers between $start and $end:\n",
    ($start .. $end).hyper(:4batch).grep( &is-square-free ).list.fmt("%3d").comb(84).join("\n");
}

# Part 3
for 1e2, 1e3, 1e4, 1e5, 1e6 {
    say "\nThe number of square─free numbers between 1 and {$_} (inclusive) is: ",
    +(1 .. .Int).race.grep: &is-square-free;
}
#-------------------------------------------------------------- 980 stack-traces
sub g { say Backtrace.new.concise }
sub f { g }
sub MAIN { f }
#--------------------------------------------------------- 981 state-name-puzzle
my @states = <
    Alabama Alaska Arizona Arkansas California Colorado Connecticut Delaware
    Florida Georgia Hawaii Idaho Illinois Indiana Iowa Kansas Kentucky
    Louisiana Maine Maryland Massachusetts Michigan Minnesota Mississippi
    Missouri Montana Nebraska Nevada New_Hampshire New_Jersey New_Mexico
    New_York North_Carolina North_Dakota Ohio Oklahoma Oregon Pennsylvania
    Rhode_Island South_Carolina South_Dakota Tennessee Texas Utah Vermont
    Virginia Washington West_Virginia Wisconsin Wyoming
>;

say "50 states:";
.say for anastates @states;

say "\n54 states:";
.say for sort anastates @states, < New_Kory Wen_Kory York_New Kory_New New_Kory >;

sub anastates (*@states) {
    my @s = @states.unique».subst('_', ' ');

    my @pairs = gather for ^@s -> $i {
	for $i ^..^ @s -> $j {
	    take [ @s[$i], @s[$j] ];
	}
    }

    my $equivs = hash @pairs.classify: *.lc.comb.sort.join;

    gather for $equivs.values -> @c {
	for ^@c -> $i {
	    for $i ^..^ @c -> $j {
		my $set = set @c[$i].list, @c[$j].list;
		take @c[$i].list.join(', ') ~ ' = ' ~ @c[$j].list.join(', ') if $set == 4;
	    }
	}
    }
}
#------------------------------------------------------------ 982 steady-squares
.say for ({$++²}…*).kv.grep( {$^v.ends-with: $^k} )[1..10]
#-------------------------------------------------------- 983 steffensens-method
# 20230928 Raku programming solution

sub aitken($f, $p0) {
   my $p2   = $f( my $p1 = $f($p0) );
   my $p1m0 = $p1 - $p0;
   return $p0 - $p1m0*$p1m0/($p2-2.0*$p1+$p0);
}

sub steffensenAitken($f, $pinit, $tol, $maxiter) {
   my ($iter, $p) = 1, aitken($f, my $p0 = $pinit);
   while abs($p-$p0) > $tol and $iter < $maxiter {
      $p = aitken($f, $p0 = $p);
      $iter++
   }
   return abs($p-$p0) > $tol ?? NaN !! $p
}

sub deCasteljau($c0, $c1, $c2, $t) {
   my $s = 1.0 - $t;
   return $s*($s*$c0 + $t*$c1) + $t*($s*$c1 + $t*$c2)
}

sub xConvexLeftParabola($t) { return deCasteljau(2.0, -8.0, 2.0, $t) }

sub yConvexRightParabola($t) { return deCasteljau(1.0, 2.0, 3.0, $t) }

sub implicitEquation($x, $y) { return 5.0*$x*$x + $y - 5.0 }

sub f($t) {
   implicitEquation(xConvexLeftParabola($t), yConvexRightParabola($t)) + $t
}

my $t0 = 0.0;
for ^11 {
   print "t0 = {$t0.fmt: '%0.1f'} : ";
   my $t = steffensenAitken(&f, $t0, 0.00000001, 1000);
   if $t.isNaN {
      say "no answer";
   } else {
      my ($x, $y) = xConvexLeftParabola($t), yConvexRightParabola($t);
      if abs(implicitEquation($x, $y)) <= 0.000001 {
         printf "intersection at (%f, %f)\n", $x, $y;
      } else {
         say "spurious solution";
      }
   }
   $t0 += 0.1;
}
#-------------------------------------------------------- 984 stem-and-leaf-plot
my @data = <
     12 127  28  42  39 113  42  18  44 118  44
     37 113 124  37  48 127  36  29  31 125 139
    131 115 105 132 104 123  35 113 122  42 117
    119  58 109  23 105  63  27  44 105  99  41
    128 121 116 125  32  61  37 127  29 113 121
     58 114 126  53 114  96  25 109   7  31 141
     46  13  27  43 117 116  27   7  68  40  31
    115 124  42 128  52  71 118 117  38  27 106
     33 117 116 111  40 119  47 105  57 122 109
    124 115  43 120  43  27  27  18  28  48 125
    107 114  34 133  45 120  30 127  31 116 146
>».Int.sort;

my Int $stem_unit = 10;
my %h = @data.classify: * div $stem_unit;

my $range = [minmax] %h.keys».Int;
my $stem_format =  "%{$range.min.chars max $range.max.chars}d";

for $range.list -> $stem {
    my $leafs = %h{$stem} // [];
    say $stem.fmt($stem_format), ' | ', ~$leafs.map: * % $stem_unit;
}
#----------------------------------------------------- 985 stern-brocot-sequence
constant @Stern-Brocot = 1, 1, { |(@_[$_ - 1] + @_[$_], @_[$_]) given ++$ } ... *;
 
put @Stern-Brocot[^15];
 
for flat 1..10, 100 -> $ix {
    say "First occurrence of {$ix.fmt('%3d')} is at index: {(1+@Stern-Brocot.first($ix, :k)).fmt('%4d')}";
}
 
say so 1 == all map ^1000: { [gcd] @Stern-Brocot[$_, $_ + 1] }
#---------------------------------------- 986 stirling-numbers-of-the-first-kind
sub Stirling1 (Int \n, Int \k) {
    return 1 unless n || k;
    return 0 unless n && k;
    state %seen;
    (%seen{"{n - 1}|{k - 1}"} //= Stirling1(n - 1, k - 1)) +
    (n - 1) * (%seen{"{n - 1}|{k}"} //= Stirling1(n - 1, k))
}

my $upto = 12;

my $mx = (1..^$upto).map( { Stirling1($upto, $_) } ).max.chars;

put 'Unsigned Stirling numbers of the first kind: S1(n, k):';
put 'n\k', (0..$upto)».fmt: "%{$mx}d";

for 0..$upto -> $row {
    $row.fmt('%-3d').print;
    put (0..$row).map( { Stirling1($row, $_) } )».fmt: "%{$mx}d";
}

say "\nMaximum value from the S1(100, *) row:";
say (^100).map( { Stirling1 100, $_ } ).max;
#--------------------------------------- 987 stirling-numbers-of-the-second-kind
sub Stirling2 (Int \n, Int \k) {
    ((1,), { (0, |@^last) »+« (|(@^last »*« @^last.keys), 0) } … *)[n;k]
}

my $upto = 12;

my $mx = (1..^$upto).map( { Stirling2($upto, $_) } ).max.chars;

put 'Stirling numbers of the second kind: S2(n, k):';
put 'n\k', (0..$upto)».fmt: "%{$mx}d";

for 0..$upto -> $row {
    $row.fmt('%-3d').print;
    put (0..$row).map( { Stirling2($row, $_) } )».fmt: "%{$mx}d";
}

say "\nMaximum value from the S2(100, *) row:";
say (^100).map( { Stirling2 100, $_ } ).max;
#--------------------------------------------------- 988 straddling-checkerboard
class Straddling_Checkerboard {
    has @!flat_board; # 10x3 stored as 30x1
    has $!plain2code; # full translation table, invertable
    has @!table;      # Printable layout, like Wikipedia entry

    my $numeric_escape = '/';
    my $exclude = /<-[A..Z0..9.]>/; # Omit the escape character

    method display_table { gather { take ~ .list for @!table } };

    method decode ( Str $s --> Str ) {
        $s.trans($!plain2code.antipairs);
    }

    method encode ( Str $s, :$collapse? --> Str ) {
        my $replace = $collapse ?? '' !! '.';
        $s.uc.subst( $exclude, $replace, :g ).trans($!plain2code);
    }

    submethod BUILD ( :$alphabet, :$u where 0..9, :$v where 0..9 ) {
        die if $u == $v;
        die if $alphabet.comb.sort.join ne [~] flat './', 'A'..'Z';

        @!flat_board = $alphabet.uc.comb;
        @!flat_board.splice( $u min $v, 0, Any );
        @!flat_board.splice( $u max $v, 0, Any );

        @!table = [ ' ',|            [ 0 ..  9]                              ],
                  [ ' ',|@!flat_board[ 0 ..  9].map: {.defined ?? $_ !! ' '} ],
                  [ $u, |@!flat_board[10 .. 19]                              ],
                  [ $v, |@!flat_board[20 .. 29]                              ];

        my @order = 0..9; # This may be passed as a param in the future

        my @nums = flat @order,
                   @order.map({ +"$u$_" }),
                   @order.map({ +"$v$_" });

        my %c2p = @nums Z=> @!flat_board;
        %c2p{$_}:delete if %c2p{$_} eqv Any for keys %c2p;
        my %p2c = %c2p.invert;
        %p2c{$_} = %p2c{$numeric_escape} ~ $_ for 0..9;
        $!plain2code = [%p2c.keys] => [%p2c.values];
    }
}

sub MAIN ( :$u = 3, :$v = 7, :$alphabet = 'HOLMESRTABCDFGIJKNPQUVWXYZ./' ) {
    my Straddling_Checkerboard $sc .= new: :$u, :$v, :$alphabet;
    $sc.display_table;

    for 0..1 -> $collapse {
        my $original = 'One night-it was on the twentieth of March, 1888-I was returning';
        my $en = $sc.encode($original, :$collapse);
        my $de = $sc.decode($en);
        say '';
        say "Original: $original";
        say "Encoded:  $en";
        say "Decoded:  $de";
    }
}
#----------------------------------------------------------- 989 strange-numbers
sub infix:<′>(\x,\y) { abs(x - y) ∈ (2, 3, 5, 7) }

my ($low,$high) = 100, 500;
my @strange.push: $_ if so all .comb.rotor(2 => -1).map: { .[0] ′ .[1] } for $low ^..^ $high;

say "Between $low and $high there are {+@strange} strange numbers:\n";
print @strange.batch(20)».fmt("%4d").join: "\n";
#------------------------------------------------------ 990 strange-plus-numbers
unit sub MAIN ($start = 100, $end = 500);
put +$_, " matching numbers from $start to $end:\n", $_ given
  ($start .. $end).hyper(:256batch,:8degree).grep: { all .comb.rotor(2 => -1).map: { .sum.is-prime } };
#--------------------------------------------- 991 strange-unique-prime-triplets
# 20210312 Raku programming solution

for 30, 1000 -> \k {
   given (2..k).grep(*.is-prime).combinations(3).grep(*.sum.is-prime) {
      say "Found ", +$_, " strange unique prime triplets up to ", k
   }
}
#-------------------------------------------------------------- 992 stream-merge
sub merge_streams ( @streams ) {
    my @s = @streams.map({ hash( STREAM => $_, HEAD => .get ) })\
                    .grep({ .<HEAD>.defined });

    return gather while @s {
        my $h = @s.min: *.<HEAD>;
        take $h<HEAD>;
        $h<HEAD> := $h<STREAM>.get
            orelse @s .= grep( { $_ !=== $h } );
    }
}

say merge_streams([ @*ARGS».&open ]);
#------------------------------------------------------------- 993 string-append
my $str = "foo";
$str ~= "bar";
say $str;
#--------------------------------------------------------------- 994 string-case
my $word = "alpha BETA" ;
say uc $word;         # all uppercase (subroutine call)
say $word.uc;         # all uppercase (method call)
# from now on we use only method calls as examples
say $word.lc;         # all lowercase
say $word.tc;         # first letter titlecase
say $word.tclc;       # first letter titlecase, rest lowercase
say $word.wordcase;   # capitalize each word
#------------------------------------------------------- 995 string-comparison-1
sub compare($a,$b) {
    my $A = "{$a.WHAT.^name} '$a'";
    my $B = "{$b.WHAT.^name} '$b'";

    if $a eq $b { say "$A and $B are lexically equal" }
    if $a ne $b { say "$A and $B are not lexically equal" }

    if $a gt $b { say "$A is lexically after $B" }
    if $a lt $b { say "$A is lexically before than $B" }

    if $a ge $b { say "$A is not lexically before $B" }
    if $a le $b { say "$A is not lexically after $B" }

    if $a === $b { say "$A and $B are identical objects" }
    if $a !=== $b { say "$A and $B are not identical objects" }

    if $a eqv $b { say "$A and $B are generically equal" }
    if $a !eqv $b { say "$A and $B are not generically equal" }

    if $a before $b { say "$A is generically after $B" }
    if $a after $b { say "$A is generically before $B" }

    if $a !after $b { say "$A is not generically before $B" }
    if $a !before $b { say "$A is not generically after $B" }

    say "The lexical relationship of $A and $B is { $a leg $b }" if $a ~~ Stringy;
    say "The generic relationship of $A and $B is { $a cmp $b }";
    say "The numeric relationship of $A and $B is { $a <=> $b }" if $a ~~ Numeric;
    say '';
}

compare 'YUP', 'YUP';
compare 'BALL', 'BELL';
compare 24, 123;
compare 5.1, 5;
compare 5.1e0, 5 + 1/10;
#------------------------------------------------------- 996 string-comparison-2
say "\c[KELVIN SIGN]".uniname;
# => LATIN CAPITAL LETTER K

my $kelvin = "\c[KELVIN SIGN]";
my $k = "\c[LATIN CAPITAL LETTER K]";
say ($kelvin eq $k); # True, lexically equal
say ($kelvin eqv $k); # True, generically equal
say ($kelvin === $k); # True, identical objects
#------------------------------------------------------ 997 string-concatenation
my $s = 'hello';
say $s ~ ' literal';
my $s1 = $s ~ ' literal';
say $s1;

# or, using mutating concatenation:

$s ~= ' literal';
say $s;
#-------------------------------------------- 998 string-interpolation-included-
my $extra = "little";
say "Mary had a $extra lamb";           # variable interpolation
say "Mary had a { $extra } lamb";       # expression interpolation
printf "Mary had a %s lamb.\n", $extra; # standard printf
say $extra.fmt("Mary had a %s lamb");   # inside-out printf
my @lambs = <Jimmy Bobby Tommy>;
say Q :array { $$$ The lambs are called @lambs[]\\\.} # only @-sigiled containers are interpolated
#----------------------------------------------------------- 999 string-length-1
say 'møøse'.encode('UTF-8').bytes;
#---------------------------------------------------------- 1000 string-length-2
say 'møøse'.codes;
#---------------------------------------------------------- 1001 string-length-3
say 'møøse'.chars;
#----------------------------------------------------------- 1002 string-prepend
# explicit concatentation
$_ = 'byte';
$_ = 'kilo' ~ $_;
.say;

# interpolation as concatenation
$_ = 'buck';
$_ = "mega$_";
.say;

# lvalue substr
$_ = 'bit';
substr-rw($_,0,0) = 'nano';
.say;

# regex substitution
$_ = 'fortnight';
s[^] = 'micro';
.say;

# reversed append assignment
$_ = 'cooper';
$_ [R~]= 'mini';
.say;
#---------------------------------- 1003 strip-a-set-of-characters-from-a-string
sub strip_chars ( $s, $chars ) {
    return $s.trans( $chars.comb X=> '' );
}

say strip_chars( 'She was a soul stripper. She took my heart!', 'aei' );
#----------------------------------------------------- 1004 strip-block-comments
sample().split(/ '/*' .+? '*/' /).print;

sub sample {
'   /**
    * Some comments
    * longer comments here that we can parse.
    *
    * Rahoo
    */
    function subroutine() {
     a = /* inline comment */ b + c ;
    }
    /*/ <-- tricky comments */

    /**
     * Another comment.
     */
    function something() {
    }
'}
#------------------------------ 1005 strip-whitespace-from-a-string-top-and-tail
my $s = "\r\n \t\x2029 Good Stuff \x202F\n";
say $s.trim;
say $s.trim.raku;
say $s.trim-leading.raku;
say $s.trim-trailing.raku;
#--------------------------------------------------------- 1006 sub-unit-squares
my @upper = 1,|(1 .. *).map((* × 2)²);
my @lower = (^∞).map: *²;
my \R = [\+] 0, 1, 10, 100 … *;

my $l = 0;

.say for (gather {
    (^∞).map: -> $u {
        next if @upper[$u].contains: 0;
        my $chars = @upper[$u].chars;
        loop {
            $l++ and next   if @upper[$u] - @lower[$l]  > R[$chars];
            take @upper[$u] if @upper[$u] - @lower[$l] == R[$chars];
            last;
        }
    }
})[^7]
#------------------------------------------------------- 1007 subset-sum-problem
my @pairs =
    alliance => -624, archbishop => -915, balm => 397, bonnet => 452,
    brute => 870, centipede => -658, cobol => 362, covariate => 590,
    departure => 952, deploy => 44, diophantine => 645, efferent => 54,
    elysee => -326, eradicate => 376, escritoire => 856, exorcism => -983,
    fiat => 170, filmy => -874, flatworm => 503, gestapo => 915,
    infra => -847, isis => -982, lindholm => 999, markham => 475,
    mincemeat => -880, moresby => 756, mycenae => 183, plugging => -266,
    smokescreen => 423, speakeasy => -745, vein => 813;
my @weights = @pairs».value;
my %name = @pairs.hash.invert;

.say for (1..27).hyper(:3batch).map: -> $n {
    given @weights.combinations($n).first({ 0 == [+] @^comb }) {
        when .so { "Length $n: ({.map: {%name{$_}}})" }
        default  { "Length $n: (none)" }
    }
}
#------------------------------------------------------ 1008 substitution-cipher
my $chr = (' ' .. '}').join('');
my $key = $chr.comb.pick(*).join('');

# Be very boring and use the same key every time to fit task reqs.
$key = q☃3#}^",dLs*>tPMcZR!fmC rEKhlw1v4AOgj7Q]YI+|pDB82a&XFV9yzuH<WT%N;iS.0e:`G\n['6@_{bk)=-5qx(/?$JoU☃;

sub MAIN ($action = 'encode', $file = '') {

    die 'Only options are encode or decode.' unless $action ~~ any 'encode'|'decode';

    my $text = qq:to/END/;
        Here we have to do is there will be a input/source file in which
        we are going to Encrypt the file by replacing every upper/lower
        case alphabets of the source file with another predetermined
        upper/lower case alphabets or symbols and save it into another
        output/encrypted file and then again convert that output/encrypted
        file into original/decrypted file. This type of Encryption/Decryption
        scheme is often called a Substitution Cipher.
        END

    $text = $file.IO.slurp if $file;

    say "Key = $key\n";

    if $file {
        say &::($action)($text);
    } else {
        my $encoded;
        say "Encoded text: \n {$encoded = encode $text}";
        say "Decoded text: \n {decode $encoded}";
    }
}

sub encode ($text) { $text.trans($chr => $key) }

sub decode ($text) { $text.trans($key => $chr) }
#------------------------------------------------------- 1009 substring-primes-1
my @p = (^10).grep: *.is-prime;

say gather while @p {
    .take for @p;

    @p = ( @p X~ <3 7> ).grep: { .is-prime and .substr(*-2,2).is-prime }
}
#------------------------------------------------------- 1010 substring-primes-2
my $prime-tests = 0;
my @non-primes;
sub spy-prime ($n) {
    $prime-tests++;
    my $is-p = $n.is-prime;

    push @non-primes, $n unless $is-p;
    return $is-p;
}

my @p = <2 3 5 7>;

say gather while @p {
    .take for @p;

    @p = ( @p X~ <3 7> ).grep: { !.ends-with(33|77) and .&spy-prime };
}
.say for :$prime-tests, :@non-primes;
#--------------------------------------------------- 1011 substring-top-and-tail
my $s = '𝄪♯♮♭𝄫';

print qq:to/END/;
    Original:
    $s

    Remove first character:
    { substr($s, 1) }
    { $s.substr(1) }

    Remove last character:
    { substr($s, 0, *-1) }
    { $s.substr( 0, *-1) }
    { $s.chop }

    Remove first and last characters:
    { substr($s, 1, *-1) }
    { $s.substr(1, *-1) }
    END
#---------------------------------------------------------------- 1012 substring
my $str = 'abcdefgh';
my $n = 2;
my $m = 3;
say $str.substr($n, $m);
say $str.substr($n);
say $str.substr(0, *-1);
say $str.substr($str.index('d'), $m);
say $str.substr($str.index('de'), $m);
#---------------------------------------------------- 1013 subtractive-generator
sub bentley-clever($seed) {
    constant $mod = 1_000_000_000;
    my @seeds = ($seed % $mod, 1, (* - *) % $mod ... *)[^55];
    my @state = @seeds[ 34, (* + 34 ) % 55 ... 0 ];

    sub subrand() {
        push @state, (my $x = (@state.shift - @state[*-24]) % $mod);
        $x;
    }

    subrand for 55 .. 219;

    &subrand ... *;
}

my @sr = bentley-clever(292929);
.say for @sr[^10];
#----------------------------------------------------------- 1014 sudan-function
multi F (0, $x, $y) { $x + $y }
multi F ($n where * > 0, $x, 0) { $x }
multi F ($n, $x, $y) { F($n-1, F($n, $x, $y-1), F($n, $x, $y-1) + $y) }

# Testing
for 0, 6, 1, 15 -> $f, $g {
    my @range = ^$g;
    say "\{|class=\"wikitable\"\n", "|+ F\<sub>$f\</sub> (x,y)\n" ~ '!x\y!!', join '!!', @range;
    -> $r { say "|-\n" ~ '|' ~ join '||', $r, @range.map:{ F($f, $r, $_) } } for @range;
    say( "|}" );
}
#----------------------------------------------------------------- 1015 sudoku-1
my @A = <
    5 3 0  0 2 4  7 0 0
    0 0 2  0 0 0  8 0 0
    1 0 0  7 0 3  9 0 2

    0 0 8  0 7 2  0 4 9
    0 2 0  9 8 0  0 7 0
    7 9 0  0 0 0  0 8 0

    0 0 0  0 3 0  5 0 6
    9 6 0  0 1 0  3 0 0
    0 5 0  6 9 0  0 1 0
>;

my &I = * div 9;  # line number
my &J = * % 9;    # column number
my &K = { ($_ div 27) * 3 + $_ % 9 div 3 }; # bloc number

sub solve {
    for ^@A -> $i {
	next if @A[$i];
	my @taken-values = @A[
	    grep {
		I($_) == I($i) || J($_) == J($i) || K($_) == K($i)
	    }, ^@A
	];
	for grep none(@taken-values), 1..9 {
	    @A[$i] = $_;
	    solve;
	}
	return @A[$i] = 0;
    }
    my $i = 1;
    for ^@A {
	print "@A[$_] ";
	print " "  if $i %% 3;
	print "\n" if $i %% 9;
	print "\n" if $i++ %% 27;
    }
}
solve;
#-------------------------------------------------------------- 1016 suffix-tree
multi suffix-tree(Str $str) { suffix-tree flat map &flip, [\~] $str.flip.comb }
multi suffix-tree(@a) {
    hash
    @a == 0 ?? () !!
    @a == 1 ?? ( @a[0] => [] ) !!
    gather for @a.classify(*.substr(0, 1)) {
        my $subtree = suffix-tree(grep *.chars, map *.substr(1), .value[]);
        if $subtree == 1 {
            my $pair = $subtree.pick;
            take .key ~ $pair.key => $pair.value;
        } else {
            take .key => $subtree;
        }
    }
}

my $tree = root => suffix-tree 'banana$';

.say for visualize-tree $tree, *.key, *.value.List;

sub visualize-tree($tree, &label, &children,
                   :$indent = '',
                   :@mid = ('├─', '│ '),
                   :@end = ('└─', '  '),
) {
    sub visit($node, *@pre) {
        gather {
            take @pre[0] ~ $node.&label;
            my @children = sort $node.&children;
            my $end = @children.end;
            for @children.kv -> $_, $child {
                when $end { take visit($child, (@pre[1] X~ @end)) }
                default   { take visit($child, (@pre[1] X~ @mid)) }
            }
        }
    }
    flat visit($tree, $indent xx 2);
}
#---------------------------------------------- 1017 sum-and-product-of-an-array
my @ary = 1, 5, 10, 100;
say 'Sum: ',     [+] @ary;
say 'Product: ', [*] @ary;
#--------------------------------------------------- 1018 sum-and-product-puzzle
sub grep-unique (&by, @list) { @list.classify(&by).values.grep(* == 1).map(*[0]) }
sub sums        ($n)         { ($_, $n - $_ for 2 .. $n div 2) }
sub product     ([$x, $y])   { $x * $y }
sub sum         ([$x, $y])   { $x + $y }

my @all-pairs = (|($_ X $_+1 .. 98) for 2..97);

# Fact 1:
my %p-unique := Set.new: map ~*, grep-unique &product, @all-pairs;
my @s-pairs = @all-pairs.grep: { none (%p-unique{~$_} for sums sum $_) };

# Fact 2:
my @p-pairs = grep-unique &product, @s-pairs;

# Fact 3:
my @final-pairs = grep-unique &sum, @p-pairs;

printf "X = %d, Y = %d\n", |$_ for @final-pairs;
#------------------------------------------------- 1019 sum-digits-of-an-integer
say Σ $_ for <1 1234 1020304 fe f0e DEADBEEF>;

sub Σ { [+] $^n.comb.map: { :36($_) } }
#----------------------------------------------- 1020 sum-multiples-of-3-and-5-1
sub sum35($n) { [+] grep * %% (3|5), ^$n; }

say sum35 1000;
#----------------------------------------------- 1021 sum-multiples-of-3-and-5-2
sub sum-mults($first, $limit) {
    (my $last = $limit - 1) -= $last % $first;
    ($last div $first) * ($first + $last) div 2;
}

sub sum35(\n) {
    sum-mults(3,n) + sum-mults(5,n) - sum-mults(15,n);
}

say sum35($_) for 1,10,100...10**30;
#-------------------------------------------------------- 1022 sum-of-a-series-2
say [+] map { 1 / $^n**2 }, 1 .. 1000;
#-------------------------------------------------------- 1023 sum-of-a-series-3
say [+] 1 «/« (1..1000) »**» 2;
#-------------------------------------------------------- 1024 sum-of-a-series-4
say [+] 1 X/ (1..1000 X** 2);
#-------------------------------------------------------- 1025 sum-of-a-series-5
say [+] (1 / $_**2 for 1..1000);
#-------------------------------------------------------- 1026 sum-of-a-series-6
constant @x = [\+] 0, { 1 / ++(state $n) ** 2 } ... *;
say @x[1000];  # prints 1.64393456668156
#-------------------------------------------------------- 1027 sum-of-a-series-7
constant ζish = [\+] map -> \𝑖 { 1 / 𝑖**2 }, 1..*;
say ζish[1000];
#-------------------------------------------------------- 1028 sum-of-a-series-8
use experimental :cached;
sub ζ($s) is cached { [\+] 1..* X** -$s }
say ζ(2)[1000];
#---------------------------- 1029 sum-of-elements-below-main-diagonal-of-matrix
sub lower-triangle-sum (@matrix) { sum flat (1..@matrix).map( { @matrix[^$_]»[^($_-1)] } )»[*-1] }

say lower-triangle-sum
[
    [  1,  3,  7,  8, 10 ],
    [  2,  4, 16, 14,  4 ],
    [  3,  1,  9, 18, 11 ],
    [ 12, 14, 17, 18, 20 ],
    [  7,  1,  3,  9,  5 ]
];
#----------------------------------------------------- 1030 sum-of-first-n-cubes
my @sums_of_all_cubes = [\+] ^Inf X** 3;

say .fmt('%7d') for @sums_of_all_cubes.head(50).batch(10);
#---------------------------------- 1031 sum-of-primes-in-odd-positions-is-prime
my @odd  = grep { ++$ !%% 2 }, grep &is-prime, 2 ..^ 1000;
my @sums = [\+] @odd;

say .fmt('%5d') for grep { .[2].is-prime }, ( (1,3…*) Z @odd Z @sums );
#------------------- 1032 sum-of-square-and-cube-digits-of-an-integer-are-primes
say ^100 .grep: { .².comb.sum.is-prime && .³.comb.sum.is-prime }
#--------------------------------------------------------- 1033 sum-of-squares-1
say [+] map * ** 2, (3, 1, 4, 1, 5, 9);
#--------------------------------------------------------- 1034 sum-of-squares-2
say [+] <3 1 4 1 5 9> X** 2
#--------------------------------- 1035 sum-of-the-digits-of-n-is-substring-of-n
say "{+$_} matching numbers\n{.batch(10)».fmt('%3d').join: "\n"}" given (^1000).grep: { .contains: .comb.sum }
#----------------------------------- 1036 sum-of-two-adjacent-numbers-are-primes
my @n-n1-triangular = map { $_, $_ + 1, $_ + ($_ + 1) }, ^Inf;

my @wanted = @n-n1-triangular.grep: *.[2].is-prime;

printf "%2d + %2d = %2d\n", |.list for @wanted.head(20);
#--------------------------------------------------------------- 1037 sum-to-100
my $sum = 100;
my $N   = 10;
my @ops = ['-', ''], |( [' + ', ' - ', ''] xx 8 );
my @str = [X~] map { .Slip }, ( @ops Z 1..9 );
my %sol = @str.classify: *.subst( ' - ', ' -', :g )\
                          .subst( ' + ',  ' ', :g ).words.sum;

my %count.push: %sol.map({ .value.elems => .key });

my $max-solutions    = %count.max( + *.key );
my $first-unsolvable = first { %sol{$_} :!exists }, 1..*;
sub n-largest-sums (Int $n) { %sol.sort(-*.key)[^$n].fmt: "%8s => %s\n" }

given %sol{$sum}:p {
    say "{.value.elems} solutions for sum {.key}:";
    say "    $_" for .value.list;
}

.say for :$max-solutions, :$first-unsolvable, "$N largest sums:", n-largest-sums($N);
#----------------------------------------------- 1038 summarize-and-say-sequence
my @list;
my $longest = 0;
my %seen;

for 1 .. 1000000 -> $m {
    next unless $m ~~ /0/;         # seed must have a zero
    my $j = join '', $m.comb.sort;
    next if %seen{$j}:exists;      # already tested a permutation
    %seen{$j} = '';
    my @seq = converging($m);
    my %elems;
    my $count;
    for @seq[] -> $value { last if ++%elems{$value} == 2; $count++; };
    if $longest == $count {
        @list.push($m);
    }
    elsif $longest < $count {
        $longest = $count;
        @list = $m;
        print "\b" x 20, "$count, $m"; # monitor progress
    }
};

for @list -> $m {
    say "\nSeed Value(s): ", my $seeds = ~permutations($m).unique.grep( { .substr(0,1) != 0 } );
    my @seq = converging($m);
    my %elems;
    my $count;
    for @seq[] -> $value { last if ++%elems{$value} == 2; $count++; };
    say "\nIterations: ", $count;
    say "\nSequence: (Only one shown per permutation group.)";
   .say for |@seq[^$count], "\n";
}

sub converging ($seed) { return $seed, -> $l { join '', map { $_.value.elems~$_.key }, $l.comb.classify({$^b}).sort: {-$^c.key} } ... * }

sub permutations ($string, $sofar? = '' ) {
    return $sofar unless $string.chars;
    my @perms;
    for ^$string.chars -> $idx {
        my $this = $string.substr(0,$idx)~$string.substr($idx+1);
        my $char = substr($string, $idx,1);
        @perms.push( |permutations( $this, join '', $sofar, $char ) );
    }
    return @perms;
}
#---------------------------------------------------- 1039 summation-of-primes-1
say sum (^2e6).grep: {.&is-prime};
#-------------------------------------------- 1040 superpermutation-minimisation
for 1..8 -> $len {
  my $pre = my $post = my $t = '';
  for  ('a'..'z')[^$len].permutations -> @p {
     $t = @p.join('');
     $post ~= $t        unless index($post, $t);
     $pre   = $t ~ $pre unless index($pre,  $t);
  }
  printf "%1d: %8d %8d\n", $len, $pre.chars, $post.chars;
}
#------------------------------------------------------ 1041 sylvesters-sequence
my @S = {1 + [*] @S[^($++)]} … *;

put 'First 10 elements of Sylvester\'s sequence: ', @S[^10];

say "\nSum of the reciprocals of first 10 elements: ", sum @S[^10].map: { FatRat.new: 1, $_ };
#----------------------------------------------------- 1042 symmetric-difference
my \A = set <John Serena Bob Mary Serena>;
my \B = set <Jim Mary John Jim Bob>;

say  A ∖ B; # Set subtraction
say  B ∖ A; # Set subtraction
say (A ∪ B) ∖ (A ∩ B);  # Symmetric difference, via basic set operations
say  A ⊖ B;             # Symmetric difference, via dedicated operator
#--------------------------------------------------------- 1043 sync-subtitles-1
# 20240621 Raku programming solution

sub MAIN() {
   my @lines = $*IN.lines;
   for 9, -9 -> $seconds {
      say "Original subtitle adjusted by {$seconds.fmt('%+d')} seconds.";
      for @lines -> $line {
         if $line ~~ /(\d ** 2 ':' \d ** 2 ':' \d ** 2 ',' \d ** 3) ' --> ' (\d ** 2 ':' \d ** 2 ':' \d ** 2 ',' \d ** 3)/ {
            my $start = adjust-time($0.Str, $seconds);
            my $end   = adjust-time($1.Str, $seconds);
            my $adjusted = $line;
            $adjusted ~~ s/\d ** 2 ':' \d ** 2 ':' \d ** 2 ',' \d ** 3 ' --> ' \d ** 2 ':' \d ** 2 ':' \d ** 2 ',' \d ** 3/$start ~ ' --> ' ~ $end/.Str;
            say $adjusted
         } else {
            say $line;
         }
      }
      say()
   }
}

sub adjust-time($time, $seconds) {
   my ($time_str, $milliseconds_str) = $time.split(',');
   my (\hh, \mm, \ss) = $time_str.split(':')>>.Int;
   my $milliseconds = $milliseconds_str.Int;
   my $datetime = DateTime.new(:year,     :month,      :day,
                               :hour(hh), :minute(mm), :second(ss));
   given $datetime .= later(:seconds($seconds)) {
      return sprintf('%02d:%02d:%02d,%03d',.hour,.minute,.second,$milliseconds)
   }
}
#------------------------------------------------------ 1044 tamagotchi-emulator
# 20250718 Raku programming solution

class Tamagotchi {
   has Str $.name;
   has Int $.age is rw = 0;
   has Int $.bored is rw = 0;
   has Int $.food is rw = 2;
   has Int $.poop is rw = 0;
}

my Tamagotchi $tama;

my @verbs = < Ask Ban Bash Bite Break Build Cut Dig Drag Drop Drink Enjoy
              Eat End Feed Fill Force Grasp Gas Get Grab Grip Hoist House
              Ice Ink Join Kick Leave Marry Mix Nab Nail Open Press Quash
              Rub Run Save Snap Taste Touch Use Vet View Wash Xerox Yield >;

my @nouns = < arms bugs boots bowls cabins cigars dogs eggs fakes flags
              greens guests hens hogs items jowls jewels juices kits logs
              lamps lions levers lemons maps mugs names nests nights nurses
              orbs owls pages posts quests quotas rats ribs roots rules
              salads sauces toys urns vines words waters zebras >;

my @bored-icons = '💤', '💭', '❓';
my @food-icons  = '🍼', '🍔', '🍟', '🍰', '🍜';
my @poop-icons  = '💩';
my @sick-icons1 = '😄', '😃', '😀', '😊', '😎', '👍';  # ok
my @sick-icons2 = '😪', '😥', '😰', '😓';              # ailing
my @sick-icons3 = '😩', '😫';                          # bad
my @sick-icons4 = '😡', '😱';                          # very bad
my @sick-icons5 = '❌', '💀', '👽', '😇';              # dead


sub brace(@runes) returns Str { return "{ " ~ @runes.join('') ~ " }" }

sub create(Str $name) { $tama = Tamagotchi.new(:name($name)) }

sub alive() returns Bool { return sickness() <= 10 }

sub feed() { $tama.food++ }

sub play() { $tama.bored = max(0, $tama.bored - (0..1).pick) }

sub talk() {
   my $verb = @verbs.pick;
   my $noun = @nouns.pick;
   say "😮 : $verb the $noun.";
   $tama.bored = max(0, $tama.bored - 1);
}

sub clean() { $tama.poop = max(0, $tama.poop - 1) }

sub wait() {
   $tama.age++;
   $tama.bored += (0..1).pick;
   $tama.food   = max(0, $tama.food - 2);
   $tama.poop  += (0..1).pick;
}

sub status() returns Str {
   if alive() {
      my @b = $tama.bored == 0 ?? () !! (@bored-icons.pick xx $tama.bored);
      my @f = $tama.food  == 0 ?? () !! (@food-icons.pick xx $tama.food);
      my @p = $tama.poop  == 0 ?? () !! (@poop-icons.pick xx $tama.poop);
      return brace(@b) ~ "  " ~ brace(@f) ~ "  " ~ brace(@p);
   }
   return " R.I.P";
}

sub sickness() returns Int { # dies at age 42 at the latest
   return $tama.poop+$tama.bored+max(0, $tama.age - 32)+abs($tama.food - 2)
}

sub health() {
   my $s = sickness();
   my $icon = do given $s {
      when 0..2  { @sick-icons1.pick }
      when 3..4  { @sick-icons2.pick }
      when 5..6  { @sick-icons3.pick }
      when 7..10 { @sick-icons4.pick }
      default    { @sick-icons5.pick }
   };
   say "$tama.name() (🎂 $tama.age())  $icon $s  " ~ status() ~"\n";
}

sub blurb() {
   say "When the '?' prompt appears, enter an action optionally";
   say "followed by the number of repetitions from 1 to 9.";
   say "If no repetitions are specified, one will be assumed.";
   say "The available options are: feed, play, talk, clean or wait.";
   say "";
}

sub MAIN() {
   say "         TAMAGOTCHI EMULATOR";
   say "         ===================";
   say "";

   print "Enter the name of your tamagotchi : ";
   my $name = $*IN.get.trim.lc;
   create($name);

   say "";
   printf "%*s (age) health \{bored\} \{food\}  \{poop\}\n", -$name.chars, "name";
   say "";

   health();
   blurb();

   my $count = 0;

   while alive() {
      my $input = prompt "? ";
      my @items = $input.split(/\s+/);

      next if @items.elems > 2;

      my $action = @items[0].lc;
      next unless $action ~~ any(<feed play talk clean wait>);

      my $reps = 1;
      if @items.elems == 2 { $reps = @items[1].Int or next }

      for ^$reps {
         given $action {
             when 'feed'  { feed() }
             when 'play'  { play() }
             when 'talk'  { talk() }
             when 'clean' { clean() }
             when 'wait'  { wait() }
         }
         if $action ne 'wait' { # simulate wait on every third (non-wait) action
            $count++;
            if $count %% 3 { wait() }
         }
      }
      health();
   }
}
#------------------------------------------------------------------- 1045 tarjan
sub tarjan (%k) {
    my %onstack;
    my %index;
    my %lowlink;
    my @stack;
    my @connected;

    sub strong-connect ($vertex) {
         state $index      = 0;
         %index{$vertex}   = $index;
         %lowlink{$vertex} = $index++;
         %onstack{$vertex} = True;
         @stack.push: $vertex;
         for |%k{$vertex} -> $connection {
             if not %index{$connection}.defined {
                 strong-connect($connection);
                 %lowlink{$vertex} min= %lowlink{$connection};
             }
             elsif %onstack{$connection} {
                 %lowlink{$vertex} min= %index{$connection};
             }
        }
        if %lowlink{$vertex} eq %index{$vertex} {
            my @node;
            repeat {
                @node.push: @stack.pop;
                %onstack{@node.tail} = False;
            } while @node.tail ne $vertex;
            @connected.push: @node;
        }
    }

    .&strong-connect unless %index{$_} for %k.keys;

    @connected
}

# TESTING

-> $test { say "\nStrongly connected components: ", |tarjan($test).sort».sort } for

# hash of vertex, edge list pairs
(((1),(2),(0),(1,2,4),(3,5),(2,6),(5),(4,6,7)).pairs.hash),

# Same layout test data with named vertices instead of numbered.
%(:Andy<Bart>,
  :Bart<Carl>,
  :Carl<Andy>,
  :Dave<Bart Carl Earl>,
  :Earl<Dave Fred>,
  :Fred<Carl Gary>,
  :Gary<Fred>,
  :Hank<Earl Gary Hank>
)
#---------------------------------------------------------- 1046 taxicab-numbers
constant @cu = (^Inf).map: { .³ }

sub MAIN ($start = 1, $end = 25) {
    my %taxi;
    my int $taxis = 0;
    my $terminate = 0;
    my int $max = 0;

    for 1 .. * -> $c1 {
        last if ?$terminate && ($terminate < $c1);
        for 1 .. $c1 -> $c2 {
            my $this = @cu[$c1] + @cu[$c2];
            %taxi{$this}.push: [$c2, $c1];
            if %taxi{$this}.elems == 2 {
                ++$taxis;
                $max max= $this;
            }
    	    $terminate = ceiling $max ** (1/3) if $taxis == $end and !$terminate;
        }
    }

    display( %taxi, $start, $end );

}

sub display (%this_stuff, $start, $end) {
    my $i = $start;
    printf "%4d %10d  =>\t%s\n", $i++, $_.key,
        (.value.map({ sprintf "%4d³ + %-s\³", |$_ })).join: ",\t"
        for %this_stuff.grep( { $_.value.elems > 1 } ).sort( +*.key )[$start-1..$end-1];
}
#------------------------------------------------- 1047 temperature-conversion-1
my %scale =
    Celcius    => { factor => 1  , offset => -273.15 },
    Rankine    => { factor => 1.8, offset =>    0    },
    Fahrenheit => { factor => 1.8, offset => -459.67 },
;

my $kelvin = +prompt "Enter a temperature in Kelvin: ";
die "No such temperature!" if $kelvin < 0;

for %scale.sort {
    printf "%12s: %7.2f\n", .key, $kelvin * .value<factor> + .value<offset>;
}
#------------------------------------------------- 1048 temperature-conversion-2
while my $answer = prompt 'Temperature: ' {
    my $k = do given $answer {
        when s/:i C $// { $_ + 273.15 }
        when s/:i F $// { ($_ + 459.67) / 1.8 }
        when s/:i R $// { $_ / 1.8 }
        when s/:i K $// { $_ }
        default         { $_ }
    }
    say "  { $k }K";
    say "  { $k - 273.15 }℃";
    say "  { $k * 1.8 - 459.67 }℉";
    say "  { $k * 1.8 }R";
}
#-------------------------------------- 1049 terminal-control-cursor-positioning
print "\e[6;3H";
print 'Hello';
#--------------------------- 1050 terminal-control-display-an-extended-character
say '￡';
say "\x[FFE1]";
say "\c[FULLWIDTH POUND SIGN]";
0xffe1.chr.say;
#----------------------------------------- 1051 terminal-control-preserve-screen
print "\e[?1049h\e[H";
say "Alternate buffer!";

for 5,4...1 {
    print "\rGoing back in: $_";
    sleep 1;
}

print "\e[?1049l";
#------------------------------- 1052 terminal-control-ringing-the-terminal-bell
print 7.chr;
#------------------------------------------------------------ 1053 ternary-logic
# Implementation:
enum Trit <Foo Moo Too>;

sub prefix:<¬> (Trit $a) { Trit(1-($a-1)) }

sub infix:<∧> (Trit $a, Trit $b) is equiv(&infix:<*>) { $a min $b }
sub infix:<∨> (Trit $a, Trit $b) is equiv(&infix:<+>) { $a max $b }

sub infix:<⇒> (Trit $a, Trit $b) is equiv(&infix:<..>) { ¬$a max $b }
sub infix:<≡> (Trit $a, Trit $b) is equiv(&infix:<eq>) { Trit(1 + ($a-1) * ($b-1)) }

# Testing:
say '¬';
say "Too {¬Too}";
say "Moo {¬Moo}";
say "Foo {¬Foo}";

sub tbl (&op,$name) {
    say '';
    say "$name   Too Moo Foo";
    say "   ╔═══════════";
    say "Too║{op Too,Too} {op Too,Moo} {op Too,Foo}";
    say "Moo║{op Moo,Too} {op Moo,Moo} {op Moo,Foo}";
    say "Foo║{op Foo,Too} {op Foo,Moo} {op Foo,Foo}";
}

tbl(&infix:<∧>, '∧');
tbl(&infix:<∨>, '∨');
tbl(&infix:<⇒>, '⇒');
tbl(&infix:<≡>, '≡');

say '';
say 'Precedence tests should all print "Too":';
say ~(
    Foo ∧ Too ∨ Too ≡ Too,
    Foo ∧ (Too ∨ Too) ≡ Foo,
    Too ∨ Too ∧ Foo ≡ Too,
    (Too ∨ Too) ∧ Foo ≡ Foo,

    ¬Too ∧ Too ∨ Too ≡ Too,
    ¬Too ∧ (Too ∨ Too) ≡ ¬Too,
    Too ∨ Too ∧ ¬Too ≡ Too,
    (Too ∨ Too) ∧ ¬Too ≡ ¬Too,

    Foo ∧ Too ∨ Foo ⇒ Foo ≡ Too,
    Foo ∧ Too ∨ Too ⇒ Foo ≡ Foo,
);
#---------------------------------------------------------- 1054 test-a-function
use Test;

sub palin( Str $string) { so $string.lc.comb(/\w/) eq  $string.flip.lc.comb(/\w/) }

for
    'A man, a plan, a canal: Panama.'           => True,
    'My dog has fleas'                          => False,
    "Madam, I'm Adam."                          => True,
    '1 on 1'                                    => False,
    'In girum imus nocte et consumimur igni'    => True,
    ''                                          => True
{
  my ($test, $expected-result) = .kv;
    is palin($test), $expected-result,
        "\"$test\" is {$expected-result??''!!'not '}a palindrome.";
}

done-testing;
#--------------------------------------------------------- 1055 test-integerness
multi is-int ($n) { $n.narrow ~~ Int }

multi is-int ($n, :$tolerance!) {
    abs($n.round - $n) <= $tolerance
}

multi is-int (Complex $n, :$tolerance!) {
    is-int($n.re, :$tolerance) && abs($n.im) < $tolerance
}

# Testing:

for 25.000000, 24.999999, 25.000100, -2.1e120, -5e-2, Inf, NaN, 5.0+0.0i, 5-5i {
    printf "%-7s  %-9s  %-5s  %-5s\n", .^name, $_,
        is-int($_),
        is-int($_, :tolerance<0.00001>);
}
#------------------------------------------------------------- 1056 text-between
sub text-between ( $text, $start, $end ) {
    return $/»[0]».Str if $text ~~ m:g/ $start (.*?) $end /;
    []
}

# Testing
my $text = 'Hello Rosetta Code world';

# String start and end delimiter
put '1> ', $text.&text-between( 'Hello ', ' world' );

# Regex string start delimiter
put '2> ', $text.&text-between( rx/^/, ' world' );

# Regex string end delimiter
put '3> ', $text.&text-between( 'Hello ',  rx/$/ );

# End delimiter only valid after start delimiter
put '4> ', '</div><div style="chinese">你好嗎</div>'\
    .&text-between( '<div style="chinese">', '</div>' );

# End delimiter not found, default to string end
put '5> ', '<text>Hello <span>Rosetta Code</span> world</text><table style="myTable">'\
    .&text-between( '<text>', rx/'<table>' | $/ );

# Start delimiter not found, return blank string
put '6> ', '<table style="myTable"><tr><td>hello world</td></tr></table>'\
    .&text-between( '<table>', '</table>' );

# Multiple end delimiters, match frugally
put '7> ', 'The quick brown fox jumps over the lazy other fox'\
    .&text-between( 'quick ', ' fox' );

# Multiple start delimiters, match frugally
put '8> ', 'One fish two fish red fish blue fish'\
    .&text-between( 'fish ', ' red' );

# Start delimiter is end delimiter
put '9> ', 'FooBarBazFooBuxQuux'\
    .&text-between( 'Foo', 'Foo' );

# Return all matching strings when multiple matches are possible
put '10> ', join ',', $text.&text-between( 'e', 'o' );

# Ignore start and end delimiter string embedded in longer words
put '11> ', 'Soothe a guilty conscience today, string wrangling is not the best tool to use for this job.'\
    .&text-between( rx/«'the '/, rx/' to'»/ );
#-------------------------------------------------------- 1057 text-processing-1
my @gaps;
my $previous = 'valid';

for $*IN.lines -> $line {
    my ($date, @readings) = split /\s+/, $line;
    my @valid;
    my $hour = 0;
    for @readings -> $reading, $flag {
        if $flag > 0 {
            @valid.push($reading);
            if $previous eq 'invalid' {
                @gaps[*-1]{'end'} = "$date $hour:00";
                $previous = 'valid';
            }
        }
        else
        {
            if $previous eq 'valid' {
                @gaps.push( {start => "$date $hour:00"} );
            }
            @gaps[*-1]{'count'}++;
            $previous = 'invalid';
        }
        $hour++;
    }
    say "$date: { ( +@valid ?? ( ( [+] @valid ) / +@valid ).fmt("%.3f") !! 0 ).fmt("%8s") }",
        " mean from { (+@valid).fmt("%2s") } valid.";
};

my $longest = @gaps.sort({-$^a<count>})[0];

say "Longest period of invalid readings was {$longest<count>} hours,\n",
    "from {$longest<start>} till {$longest<end>}."
#-------------------------------------------------------- 1058 text-processing-2
my $good-records;
my $line;
my %dates;

for lines() {
    $line++;
    / ^
    (\d ** 4 '-' \d\d '-' \d\d)
    [ \h+ \d+'.'\d+ \h+ ('-'?\d+) ] ** 24
    $ /
        or note "Bad format at line $line" and next;
    %dates.push: $0 => $line;
    $good-records++ if $1.all >= 1;
}

say "$good-records good records out of $line total";

say 'Repeated timestamps (with line numbers):';
.say for sort %dates.pairs.grep: *.value.elems > 1;
#-------------------------------------- 1059 text-processing-max-licenses-in-use
my %licenses;

%licenses<count max> = 0,0;

for $*IN.lines -> $line {
    my ( $license, $date_time );
    ( *, $license, *, $date_time ) = split /\s+/, $line;
    if $license eq 'OUT' {
        %licenses<count>++;
        if %licenses<count> > %licenses<max> {
            %licenses<max>   = %licenses<count>;
            %licenses<times> = [$date_time];
        }
        elsif %licenses<count> == %licenses<max> {
            %licenses<times>.push($date_time);
        }
    }
    elsif $license eq 'IN' {
        if %licenses<count> == %licenses<max> {
            %licenses<times>[*-1] ~= " through " ~ $date_time;
        }
        %licenses<count>--;
    }
    else {
        # Not a licence OUT or IN event, do nothing
    }
};

my $plural = %licenses<times>.elems == 1 ?? '' !! 's';

say "Maximum concurrent licenses in use: {%licenses<max>}, in the time period{$plural}:";
say join ",\n", %licenses<times>.list;
#--------------------------------------------------------- 1060 the-isaac-cipher
my uint32 (@mm, @randrsl, $randcnt, $aa, $bb, $cc);
my \ϕ := 2654435769; constant MOD = 95; constant START = 32;

constant MAXINT = uint.Range.max;
enum CipherMode < ENCIPHER DECIPHER NONE >;

sub mix (\n) {
   sub mix1 (\i, \v) {
      n[i] +^= v;
      n[(i+3)%8] += n[i];
      n[(i+1)%8] += n[(i+2)%8];
   }
   mix1 0, n[1]+<11; mix1 1, n[2]+>2; mix1 2, n[3]+<8; mix1 3, n[4]+>16;
   mix1 4, n[5]+<10; mix1 5, n[6]+>4; mix1 6, n[7]+<8; mix1 7, n[0]+>9 ;
}

sub randinit(\flag) {
   $aa = $bb = $cc = 0;
   my uint32 @n = [^8].map({ ϕ });
   for ^4 { mix @n };
   for 0,8 … 255 -> $i {
      { for (0..7) { @n[$^j] += @randrsl[$i + $^j] } } if flag;
      mix @n;
      for (0..7) { @mm[$i + $^j] = @n[$^j] }
   }
   if flag {
      for 0,8 … 255 -> $i {
         for ^8 { @n[$^j] += @mm[$i + $^j] };
         mix @n;
         for ^8 { @mm[$i + $^j] = @n[$^j] };
      }
   }
   isaac;
   $randcnt = 0;
}

sub isaac() {
   $cc++;
   $bb += $cc;
   for ^256 -> $i {
      my $x = @mm[$i];
      given ($i % 4) {
         when 0 { $aa +^= ($aa +< 13) }
         when 1 { $aa +^= (($aa +& MAXINT) +>  6) }
         when 2 { $aa +^= ($aa +<  2) }
         when 3 { $aa +^= (($aa +& MAXINT) +> 16) }
      }
      $aa += @mm[($i + 128) % 256];
      my $y = @mm[(($x +& MAXINT) +> 2) % 256] + $aa + $bb;
      @mm[$i] = $y;
      $bb = @mm[(($y +& MAXINT) +> 10) % 256] + $x;
      @randrsl[$i] = $bb;
   }
   $randcnt = 0;
}

sub iRandom {
   my $result = @randrsl[$randcnt++];
   if ($randcnt > 255) {
      isaac;
      $randcnt = 0;
   }
   return $result;
}

sub iSeed(\seed, \flag) {
    @mm = [^256].race.map({0});
    my \m = seed.chars;
    @randrsl = [^256].hyper.map({ $^i ≥ m ?? 0 !! seed.substr($^i,1).ord });
    randinit(flag);
}

sub iRandA { return iRandom() % MOD + START };

sub vernam(\M) { ( map { (iRandA() +^ .ord ).chr }, M.comb ).join };

sub caesar(CipherMode \m, \ch, $shift is copy, \Modulo, \Start) {
    $shift = -$shift if m == DECIPHER;
    my $n = (ch.ord - Start) + $shift;
    $n %= Modulo;
    $n += Modulo if $n < 0;
    return (Start + $n).chr;
}

sub caesarStr(CipherMode \m, \msg, \Modulo, \Start) {
   my $sb = '';
   for msg.comb {
        $sb ~= caesar m, $^c, iRandA(), Modulo, Start;
   }
   return $sb;
}

multi MAIN () {
   my \msg = "a Top Secret secret";
   my \key = "this is my secret key";

   iSeed key, True ;
   my $vctx = vernam msg;
   my $cctx = caesarStr ENCIPHER, msg,  MOD, START;

   iSeed key, True ;
   my $vptx = vernam $vctx;
   my $cptx = caesarStr DECIPHER, $cctx, MOD, START;

   my $vctx2hex = ( map { .ord.fmt('%02X') }, $vctx.comb ).join('');
   my $cctx2hex = ( map { .ord.fmt('%02X') }, $cctx.comb ).join('');

   say "Message : ", msg;
   say "Key     : ", key;
   say "XOR     : ", $vctx2hex;
   say "XOR dcr : ", $vptx;
   say "MOD     : ", $cctx2hex;
   say "MOD dcr : ", $cptx;
}
#------------------------------------------------------------ 1061 the-name-game
sub mangle ($name, $initial) {
    my $fl = $name.lc.substr(0,1);
    $fl ~~ /<[aeiou]>/
    ?? $initial~$name.lc
    !! $fl eq $initial
    ?? $name.substr(1)
    !! $initial~$name.substr(1)
}

sub name-game (Str $name) {
    qq:to/NAME-GAME/;
    $name, $name, bo-{ mangle $name, 'b' }
    Banana-fana fo-{ mangle $name, 'f' }
    Fee-fi-mo-{ mangle $name, 'm' }
    $name!
    NAME-GAME
}

say .&name-game for <Gary Earl Billy Felix Mike Steve>
#---------------------------------------------------- 1062 the-sieve-of-sundaram
my $nth = 1_000_000;

my $k = Int.new: 2.4 * $nth * log($nth) / 2;

my int @sieve;

@sieve[$k] = 0;

race for (1 .. $k).batch(1000) -> @i {
  for @i -> int $i {
    my int $j = $i;
    while (my int $l = $i + $j + 2 * $i * $j++) < $k {
        @sieve[$l] = 1;
    }
  }
}

@sieve[0] = 1;

say "First 100 Sundaram primes:";
say @sieve.kv.map( { next if $^v; $^k * 2 + 1 } )[^100]».fmt("%4d").batch(10).join: "\n";

say "\nOne millionth:";
my ($count, $index);
for @sieve {
    $count += !$_;
    say $index * 2 + 1 and last if $count == $nth;
    ++$index;
}
#--------------------------------------------- 1063 the-twelve-days-of-christmas
my @days = <first second third fourth fifth sixth seventh eighth ninth tenth eleventh twelfth>;

my @gifts = lines q:to/END/;
  And a partridge in a pear tree.
  Two turtle doves,
  Three french hens,
  Four calling birds,
  Five golden rings,
  Six geese a-laying,
  Seven swans a-swimming,
  Eight maids a-milking,
  Nine ladies dancing,
  Ten lords a-leaping,
  Eleven pipers piping,
  Twelve drummers drumming,
END

sub nth($n) { say "On the @days[$n] day of Christmas, my true love gave to me:" }

nth(0);
say @gifts[0].subst('And a','A');

for 1 ... 11 -> $d {
    say '';
    nth($d);
    say @gifts[$_] for $d ... 0;
}
#-------------------------------------------- 1064 thieles-interpolation-formula
# reciprocal difference:
multi sub ρ(&f, @x where * < 1) { 0 } # Identity
multi sub ρ(&f, @x where * == 1) { &f(@x[0]) }
multi sub ρ(&f, @x where * > 1) {
    ( @x[0] - @x[* - 1] )       # ( x - x[n] )
    / (ρ(&f, @x[^(@x - 1)])     # / ( ρ[n-1](x[0], ..., x[n-1])
    - ρ(&f, @x[1..^@x]) )       # - ρ[n-1](x[1], ..., x[n]) )
    + ρ(&f, @x[1..^(@x - 1)]);  # + ρ[n-2](x[1], ..., x[n-1])
}

# Thiele:
multi sub thiele($x, %f, $ord where { $ord == +%f }) { 1 } # Identity
multi sub thiele($x, %f, $ord) {
  my &f = {%f{$^a}};                # f(x) as a table lookup

  # must sort hash keys to maintain order between invocations
  my $a = ρ(&f, %f.keys.sort[^($ord +1)]);
  my $b = ρ(&f, %f.keys.sort[^($ord -1)]);

  my $num = $x - %f.keys.sort[$ord];
  my $cont = thiele($x, %f, $ord +1);

  # Thiele always takes this form:
  return $a - $b + ( $num / $cont );
}

## Demo
sub mk-inv(&fn, $d, $lim) {
  my %h;
  for 0..$lim { %h{ &fn($_ * $d) } = $_ * $d }
  return %h;
}

sub MAIN($tblsz = 12) {

  my ($sin_pi, $cos_pi, $tan_pi);
  my $p1 = Promise.start( { my %invsin = mk-inv(&sin, 0.05, $tblsz); $sin_pi = 6 * thiele(0.5, %invsin, 0) } );
  my $p2 = Promise.start( { my %invcos = mk-inv(&cos, 0.05, $tblsz); $cos_pi = 3 * thiele(0.5, %invcos, 0) } );
  my $p3 = Promise.start( { my %invtan = mk-inv(&tan, 0.05, $tblsz); $tan_pi = 4 * thiele(1.0, %invtan, 0) } );
  await $p1, $p2, $p3;

  say "pi = {pi}";
  say "estimations using a table of $tblsz elements:";
  say "sin interpolation: $sin_pi";
  say "cos interpolation: $cos_pi";
  say "tan interpolation: $tan_pi";
}
#---------------------------------------------------- 1065 three-word-location-2
# SYNTHETICS HANDLING
my @synth = flat < b d f j k n p r s t w > X~ < a e i o u >;
my %htnys = @synth.antipairs;
my $exp   = @synth.elems;
my $prec  = 100_000;


sub synth (Int $v) { @synth[$v.polymod($exp xx *).reverse || 0].join }

sub thnys (Str $v) { sum %htnys{$v.comb(2).reverse} Z× 1, $exp, $exp² }


# ENCODE / DECODE
sub w-encode ( Rat(Real) $lat, Rat(Real) $lon, :&f = &synth ) {
    $_ = (($lat +  90) × $prec).round.fmt('%025b') ~ (($lon + 180) × $prec).round.fmt('%026b');
    (:2(.substr(0,17)), :2(.substr(17,17)), :2(.substr(34)))».&f
}

sub w-decode ( *@words, :&f = &thnys ) {
    my $bin = @words».&f.map({.fmt('%017b')}).join;
    (:2($bin.substr(0,25))/$prec) - 90, (:2($bin.substr(25))/$prec) - 180
}


# TESTING
for 51.43372,  -0.21412, # Wimbledon center court
    21.25976,-157.81173, # Diamond Head summit
   -55.96525, -67.22557, # Monumento Cabo De Hornos
    28.3852,  -81.5638,  # Walt Disney World
    89.99999, 179.99999, # test some
   -89.99999,-179.99999  # extremes
  -> $lat, $lon {
    my @words = w-encode $lat, $lon;
    printf "Coordinates: %s, %s\n   To Index: %s\n  To 3-word: %s\nFrom 3-word: %s, %s\n\n",
      $lat, $lon, w-encode($lat, $lon, :f({$_})).Str, @words.Str, w-decode(@words);
}
#--------------------------------------------------------------- 1066 thue-morse
.say for (0, { '0' ~ @_.join.trans( "01" => "10", :g) } ... *)[^8];
#----------------------------------------- 1067 time-conventions-and-conversions
# 20241023 Raku programming solution

my (\UNIX_EPOCH, \NTP_EPOCH, \TAI_EPOCH, \GPS_EPOCH) = map { DateTime.new: $_ },
   < 1970-01-01  1900-01-01  1958-01-01  1980-01-06 >;

my %NTP_TO_LS = ( my @CHANGE_TIMES = <
   2272060800 2287785600 2303683200 2335219200 2366755200 2398291200 2429913600
   2461449600 2492985600 2524521600 2571782400 2603318400 2634854400 2698012800
   2776982400 2840140800 2871676800 2918937600 2950473600 2982009600 3029443200
   3076704000 3124137600 3345062400 3439756800 3550089600 3644697600 3692217600
> ) Z=> 10 .. * ;

# The conversions without leap second adjustments

my &utc2unix = -> $utcStr {
   do given DateTime.new($utcStr).posix { * < 0 ?? $_ !! $_ - UNIX_EPOCH }
}

my &utc2ntp  = -> $utcStr   { utc2unix($utcStr) + UNIX_EPOCH - NTP_EPOCH }

my &ntp2unix = -> $ntpSecs  { $ntpSecs + NTP_EPOCH - UNIX_EPOCH }

my &unix2ntp = -> $unixSecs { $unixSecs + UNIX_EPOCH - NTP_EPOCH }

my &unix2utc = -> $unixSecs { Instant.from-posix($unixSecs).DateTime }

my &ntp2utc  = -> $ntpSecs  { unix2utc(ntp2unix($ntpSecs)) }

my &tai2gps  = -> $taiSecs  { $taiSecs + TAI_EPOCH - GPS_EPOCH - 10 }

my &gps2tai  = -> $gpsSecs  { $gpsSecs + GPS_EPOCH - TAI_EPOCH + 10 }

# Conversions requiring leap-second adjustments

my &ntp2tai = sub ($ntpSecs) {
   my $tai =  $ntpSecs + NTP_EPOCH - TAI_EPOCH;

   return $tai if $ntpSecs < @CHANGE_TIMES[0];

   return $tai+%NTP_TO_LS{@CHANGE_TIMES[*-1]} if $ntpSecs >= @CHANGE_TIMES[*-1];

   for 1 .. @CHANGE_TIMES.elems - 1 {
      if $ntpSecs < @CHANGE_TIMES[$_] {
         return $tai + %NTP_TO_LS{@CHANGE_TIMES[$_-1]}
      }
   }
}

my &tai2ntp = sub ($taiSecs) {
   my $ntp = $taiSecs + TAI_EPOCH - NTP_EPOCH;

   return $ntp if $ntp < @CHANGE_TIMES[0];

   my ($idx, $delta) = (0, 0);

   if $ntp >= @CHANGE_TIMES[*-1] {
      $delta = %NTP_TO_LS{@CHANGE_TIMES[*-1]}
   } else {
      for 1 .. @CHANGE_TIMES.elems - 1 {
         if $ntp < @CHANGE_TIMES[$_] {
            $delta = %NTP_TO_LS{@CHANGE_TIMES[$_-1]};
            $idx = $_;
            last;
         }
      }
   }

   return do given $ntp - $delta {
      when * < @CHANGE_TIMES[0]      { @CHANGE_TIMES[0] - 1 + $ntp.fraction }
      when * < @CHANGE_TIMES[$idx-1] { $_ + 1 }
      default                        { $_ }
   }
}

my &ntp2gps  = -> $ntpSecs  { tai2gps(ntp2tai($ntpSecs)) }

my &gps2ntp  = -> $gpsSecs  { tai2ntp(gps2tai($gpsSecs)) }

my &tai2unix = -> $taiSecs  { ntp2unix(tai2ntp($taiSecs)) }

my &unix2tai = -> $unixSecs { ntp2tai(unix2ntp($unixSecs)) }

my &tai2utc  = -> $taiSecs  { ntp2utc(tai2ntp($taiSecs)) }

my &utc2tai  = -> $utcStr   { ntp2tai(utc2ntp($utcStr)) }

my &gps2unix = -> $gpsSecs  { tai2unix(gps2tai($gpsSecs)) }

my &unix2gps = -> $unixSecs { tai2gps(unix2tai($unixSecs)) }

my &utc2gps  = -> $utcStr   { tai2gps(utc2tai($utcStr)) }

my &gps2utc  = -> $gpsSecs  { tai2utc(gps2tai($gpsSecs)) }

# Output formatting
say "      UTC                            Unix               NTP               TAI               GPS";
say '_' x 100;

my $fmt = "%-28s%18.4f%18.4f%18.4f%18.4f\n";

for < 0001-01-01T00:00:00 1900-01-01T00:00:00 1958-01-01T00:00:00
      1970-01-01T00:00:00 1980-01-06T00:00:00 1989-12-31T00:00:00
      1990-01-06T00:00:00 2025-06-01T00:00:00 2050-01-01T00:00:00 > {
   printf $fmt, $_, .&utc2unix, .&utc2ntp, .&utc2tai, .&utc2gps
}

for < 1810753809.806 154956295.688 780673454.121 > {
   printf $fmt, .&unix2utc, $_, .&unix2ntp, .&unix2tai, .&unix2gps
}

for < 2871676795 2335219189 3029443171 3124137599 3124137600 > {
   printf $fmt, .&ntp2utc, .&ntp2unix, $_, .&ntp2tai, .&ntp2gps
}

for <  996796823  996796824  996796825  996796826
      1293840030 1293840031 1293840032 1293840033 > {
   printf $fmt, .&tai2utc, .&tai2unix, .&tai2ntp, $_, .&tai2gps
}

for < 996796804.250 996796805.5 996796806.750 996796807.9999 > {
   printf $fmt, .&gps2utc, .&gps2unix, .&gps2ntp, .&gps2tai, $_
}
#------------------------------------------------------ 1068 tokenize-a-string-1
'Hello,How,Are,You,Today'.split(',').join('.').say;
#------------------------------------------------------ 1069 tokenize-a-string-2
say join '.', split ',', 'Hello,How,Are,You,Today';
#------------------------------------------ 1070 tokenize-a-string-with-escaping
sub tokenize ($string, :$sep!, :$esc!) {
    return $string.match(/([ <!before $sep | $esc> . | $esc . ]*)+ % $sep/)\
                  .[0].map(*.subst: /$esc )> ./, '', :g);
}

say "'$_'" for tokenize 'one^|uno||three^^^^|four^^^|^cuatro|', sep => '|', esc => '^';
#------------------------------------------------- 1071 tonelli-shanks-algorithm
#  Legendre operator (𝑛│𝑝)
sub infix:<│> (Int \𝑛, Int \𝑝 where 𝑝.is-prime && (𝑝 != 2)) {
    given 𝑛.expmod( (𝑝-1) div 2, 𝑝 ) {
        when 0  {  0 }
        when 1  {  1 }
        default { -1 }
    }
}

sub tonelli-shanks ( \𝑛, \𝑝 where (𝑛│𝑝) > 0 ) {
    my $𝑄 = 𝑝 - 1;
    my $𝑆 = 0;
    $𝑄 +>= 1 and $𝑆++ while $𝑄 %% 2;
    return 𝑛.expmod((𝑝+1) div 4, 𝑝) if $𝑆 == 1;
    my $𝑐 = ((2..𝑝).first: (*│𝑝) < 0).expmod($𝑄, 𝑝);
    my $𝑅 = 𝑛.expmod( ($𝑄+1) +> 1, 𝑝 );
    my $𝑡 = 𝑛.expmod( $𝑄, 𝑝 );
    while ($𝑡-1) % 𝑝 {
        my $b;
        my $𝑡2 = $𝑡² % 𝑝;
        for 1 .. $𝑆 {
            if ($𝑡2-1) %% 𝑝 {
                $b = $𝑐.expmod(1 +< ($𝑆-1-$_), 𝑝);
                $𝑆 = $_;
                last;
            }
            $𝑡2 = $𝑡2² % 𝑝;
        }
        $𝑅 = ($𝑅 * $b) % 𝑝;
        $𝑐 = $b² % 𝑝;
        $𝑡 = ($𝑡 * $𝑐) % 𝑝;
    }
    $𝑅;
}

my @tests = (
    (10, 13),
    (56, 101),
    (1030, 10009),
    (1032, 10009),
    (44402, 100049),
    (665820697, 1000000009),
    (881398088036, 1000000000039),
    (41660815127637347468140745042827704103445750172002,
      100000000000000000000000000000000000000000000000577)
);

 for @tests -> ($n, $p) {
    try my $t = tonelli-shanks($n, $p);
    say "No solution for ({$n}, {$p})." and next if !$t or ($t² - $n) % $p;
    say "Roots of $n are ($t, {$p-$t}) mod $p";
}
#------------------------------------------------------- 1072 top-rank-per-group
my @data = do for q:to/---/.lines -> $line {
        E10297  32000   D101    Tyler Bennett
        E21437  47000   D050    John Rappl
        E00127  53500   D101    George Woltman
        E63535  18000   D202    Adam Smith
        E39876  27800   D202    Claire Buckman
        E04242  41500   D101    David McClellan
        E01234  49500   D202    Rich Holcomb
        E41298  21900   D050    Nathan Adams
        E43128  15900   D101    Richard Potter
        E27002  19250   D202    David Motsinger
        E03033  27000   D101    Tim Sampair
        E10001  57000   D190    Kim Arlich
        E16398  29900   D190    Timothy Grove
        ---

  $%( < Id      Salary  Dept    Name >
      Z=>
      $line.split(/ \s\s+ /)
    )
}

sub MAIN(Int $N = 3) {
    for @data.classify({ .<Dept> }).sort».value {
        my @es = .sort: { -.<Salary> }
        say '' if (state $bline)++;
        say .< Dept Id Salary Name > for @es[^$N]:v;
    }
}
#----------------------------------------------------------- 1073 topic-variable
$_ = 'Outside';
for <3 5 7 10> {
    print $_;
    .³.map: { say join "\t", '', $_, .², .sqrt, .log(2), OUTER::<$_>, UNIT::<$_>  }
}
#-------------------------------------- 1074 topological-sort-extracted-top-item
sub top_topos ( %deps, *@top ) {
    my %ba;
    for %deps.kv -> $after, @befores {
        for @befores -> $before {
            %ba{$after}{$before} = 0 if $before ne $after;
            %ba{$before} //= {};
        }
    }

    if @top {
	my @want = @top;
	my %care;
	%care{@want} = 1 xx *;
	repeat while @want {
	    my @newwant;
	    for @want -> $before {
		if %ba{$before} {
		    for %ba{$before}.keys -> $after {
			if not %ba{$before}{$after} {
			    %ba{$before}{$after}++;
			    push @newwant, $after;
			}
		    }
		}
	    }
	    @want = @newwant;
	    %care{@want} = 1 xx *;
	}

	for %ba.keys -> $before {
	    %ba{$before}:delete unless %care{$before};
	}
    }

    my @levels;
    while %ba.grep( not *.value )».key -> @befores {
	push @levels, ~@befores.sort;
        %ba{@befores}:delete;
        for %ba.values { .{@befores}:delete }
    }
    if @top {
	say "For top-level-modules: ", @top;
	say "  $_" for @levels;
    }
    else {
	say "Top levels are: @levels[*-1]";
    }

    say "Cycle found! {%ba.keys.sort}" if %ba;
    say '';
}

my %deps =
    top1  =>  <des1 ip1 ip2>,
    top2  =>  <des1 ip2 ip3>,
    ip1   =>  <extra1 ip1a ipcommon>,
    ip2   =>  <ip2a ip2b ip2c ipcommon>,
    des1  =>  <des1a des1b des1c>,
    des1a =>  <des1a1 des1a2>,
    des1c =>  <des1c1 extra1>;

top_topos(%deps);
top_topos(%deps, 'top1');
top_topos(%deps, 'top2');
top_topos(%deps, 'ip1');
top_topos(%deps, 'top1', 'top2');
#--------------------------------------------------------- 1075 topological-sort
sub print_topo_sort ( %deps ) {
    my %ba;
    for %deps.kv -> $before, @afters {
        for @afters -> $after {
            %ba{$before}{$after} = 1 if $before ne $after;
            %ba{$after} //= {};
        }
    }

    while %ba.grep( not *.value )».key -> @afters {
        say ~@afters.sort;
        %ba{@afters}:delete;
        for %ba.values { .{@afters}:delete }
    }

    say %ba ?? "Cycle found! {%ba.keys.sort}" !! '---';
}

my %deps =
    des_system_lib => < std synopsys std_cell_lib des_system_lib dw02
                                                     dw01 ramlib ieee >,
    dw01           => < ieee dw01 dware gtech                         >,
    dw02           => < ieee dw02 dware                               >,
    dw03           => < std synopsys dware dw03 dw02 dw01 ieee gtech  >,
    dw04           => < dw04 ieee dw01 dware gtech                    >,
    dw05           => < dw05 ieee dware                               >,
    dw06           => < dw06 ieee dware                               >,
    dw07           => < ieee dware                                    >,
    dware          => < ieee dware                                    >,
    gtech          => < ieee gtech                                    >,
    ramlib         => < std ieee                                      >,
    std_cell_lib   => < ieee std_cell_lib                             >,
    synopsys       => <                                               >;

print_topo_sort(%deps);
%deps<dw01> = <ieee dw01 dware gtech dw04>; # Add unresolvable dependency
print_topo_sort(%deps);
#--------------------------------------------------------------- 1076 topswops-2
sub swops($a is copy) {
    my int $count = 0;
    while (my \l = $a.ord) > 1 {
        $a = $a.substr(0, l).flip ~ $a.substr(l);
        ++$count;
    }
    $count
}

sub topswops($n) { max (1..$n).permutations.map: { .chrs.join.&swops } }

say "$_ {topswops $_}" for 1 .. 10;
#---------------------- 1077 transliterate-english-text-using-the-greek-alphabet
sub to-Greek (Str $string is copy) {
    my %pre =  :Ph<F>, :ck<k>, :ee<h>, :J<I>, :rh<r>,:oo<w>, :ph<f>, :ch<χ>,
               :th<θ>, :ps<ψ>, :Ch<Χ>, :Th<Θ>, :Ps<Ψ>, :kh<χ>, 's ' => 'ς ';
    my %post = :a<α>, :b<β>, :d<δ>, :e<ε>, :f<φ>, :g<γ>, :h<η>, :i<ι>, :j<ι>,
               :k<κ>, :l<λ>, :m<μ>, :n<ν>, :o<ο>, :p<π>, :q<κ>, :r<ρ>, :s<σ>,
               :t<τ>, :u<υ>, :v<β>, :w<ω>, :x<ξ>, :y<υ>, :z<ζ>, :A<Α>, :B<Β>,
               :D<Δ>, :E<Ε>, :F<Φ>, :G<Γ>, :H<Η>, :I<Ι>, :L<Λ>, :M<Μ>, :N<Ν>,
               :O<Ο>, :P<Π>, :Q<Κ>, :R<Ρ>, :S<Σ>, :T<Τ>, :U<Υ>, :W<Ω>, :X<Ξ>,
               :Z<Ζ>;

    $string.=subst(:g, .key, .value ) for flat %pre, %post;
    $string
}

my $text = chomp q:to/ENGLISH/;
    The quick brown fox jumped over the lazy dog.

    I was looking at some rhododendrons in my back garden,
    dressed in my khaki shorts, when the telephone rang.

    As I answered it, I cheerfully glimpsed that the July sun
    caused a fragment of black pine wax to ooze on the velvet quilt
    laying in my patio.

    sphinx of black quartz, judge my vow.
    ENGLISH

say "English:\n\n" ~ $text ~ "\n" ~ '=' x 80;

say "\"Greek\":\n\n" ~ $text.&to-Greek ~ "\n" ~ '=' x 80;

say "Or, to named characters:\n\n$_\n" ~
  .&to-Greek.comb.map({ .match(/\W/) ?? $_ !!
      '<' ~ .uniname.subst( /.+<?after LETTER\s>/).lc ~ '>'
  }).join
  given 'sphinx of black quartz, judge my vow.';
#--------------------------------------------------- 1078 transportation-problem
my  %costs = :S1{:3C1, :5C2, :7C3}, :S2{:3C1, :2C2, :5C3};
my %demand = :20C1, :30C2, :10C3;
my %supply = :25S1, :35S2;

my @cols = %demand.keys.sort;

my %res;
my %g = (|%supply.keys.map: -> $x { $x => [%costs{$x}.sort(*.value)».key]}),
   (|%demand.keys.map: -> $x { $x => [%costs.keys.sort({%costs{$_}{$x}})]});

while (+%g) {
    my @d = %demand.keys.map: -> $x
      {[$x, my $z = %costs{%g{$x}[0]}{$x},%g{$x}[1] ?? %costs{%g{$x}[1]}{$x} - $z !! $z]}

    my @s = %supply.keys.map: -> $x
      {[$x, my $z = %costs{$x}{%g{$x}[0]},%g{$x}[1] ?? %costs{$x}{%g{$x}[1]} - $z !! $z]}

    @d = |@d.grep({ (.[2] == max @d».[2]) }).&min: :by(*.[1]);
    @s = |@s.grep({ (.[2] == max @s».[2]) }).&min: :by(*.[1]);

    my ($t, $f) = @d[2] == @s[2] ?? (@s[1],@d[1]) !! (@d[2],@s[2]);
    my ($d, $s) = $t > $f ?? (@d[0],%g{@d[0]}[0]) !! (%g{@s[0]}[0], @s[0]);

    my $v = %supply{$s} min %demand{$d};

    %res{$s}{$d} += $v;
    %demand{$d} -= $v;

    if (%demand{$d} == 0) {
        %supply.grep( *.value != 0 )».key.map: -> $v
          { %g{$v}.splice((%g{$v}.first: * eq $d, :k),1) };
        %g{$d}:delete;
        %demand{$d}:delete;
    }

    %supply{$s} -= $v;

    if (%supply{$s} == 0) {
        %demand.grep( *.value != 0 )».key.map: -> $v
          { %g{$v}.splice((%g{$v}.first: * eq $s, :k),1) };
        %g{$s}:delete;
        %supply{$s}:delete;
    }
}

say join "\t", flat '', @cols;
my $total;
for %costs.keys.sort -> $g {
    print "$g\t";
    for @cols -> $col {
        print %res{$g}{$col} // '-', "\t";
        $total += (%res{$g}{$col} // 0) * %costs{$g}{$col};
    }
    print "\n";
}
say "\nTotal cost: $total";
#----------------------------------------------- 1079 tree-from-nesting-levels-1
sub new_level ( @stack --> Nil ) {
    my $e = [];
    push @stack.tail, $e;
    push @stack,      $e;
}
sub to_tree_iterative ( @xs --> List ) {
    my $nested = [];
    my @stack  = $nested;

    for @xs -> Int $x {
        new_level(@stack) while $x > @stack;
        pop       @stack  while $x < @stack;
        push @stack.tail, $x;
    }

    return $nested;
}
my @tests = (), (1, 2, 4), (3, 1, 3, 1), (1, 2, 3, 1), (3, 2, 1, 3), (3, 3, 3, 1, 1, 3, 3, 3);
say .Str.fmt( '%15s => ' ), .&to_tree_iterative for @tests;
#----------------------------------------------- 1080 tree-from-nesting-levels-2
sub to_tree_recursive ( @list, $index is copy, $depth ) {
    my @so_far = gather while $index <= @list.end {
        my $t = @list[$index];

        given $t <=> $depth {
            when Order::Same {
                take $t;
            }
            when Order::More {
                ( $index, my $n1 ) = to_tree_recursive( @list, $index, $depth+1 );
                take $n1;
            }
            when Order::Less {
                $index--;
                last;
            }
        }
        $index++;
    }

    my $i = ($depth > 1) ?? $index !! -1;
    return $i, @so_far;
}
my @tests = (), (1, 2, 4), (3, 1, 3, 1), (1, 2, 3, 1), (3, 2, 1, 3), (3, 3, 3, 1, 1, 3, 3, 3);
say .Str.fmt( '%15s => ' ), to_tree_recursive( $_, 0, 1 ).[1] for @tests;
#----------------------------------------------- 1081 tree-from-nesting-levels-3
use MONKEY-SEE-NO-EVAL;
sub to_tree_string_eval ( @xs --> Array ) {
    my @gap = [ |@xs, 0 ]  Z-  [ 0, |@xs ];

    my @open  = @gap.map( '[' x  * );
    my @close = @gap.map( ']' x -* );

    my @wrapped = [Z~] @open, @xs, @close.skip;

    return EVAL @wrapped.join(',').subst(:g, ']]', '],]') || '[]';
}
my @tests = (), (1, 2, 4), (3, 1, 3, 1), (1, 2, 3, 1), (3, 2, 1, 3), (3, 3, 3, 1, 1, 3, 3, 3);
say .Str.fmt( '%15s => ' ), .&to_tree_string_eval for @tests;
#----------------------------------------------------------- 1082 tree-traversal
class TreeNode {
    has TreeNode $.parent;
    has TreeNode $.left;
    has TreeNode $.right;
    has $.value;

    method pre-order {
        flat gather {
            take $.value;
            take $.left.pre-order if $.left;
            take $.right.pre-order if $.right
        }
    }

    method in-order {
        flat gather {
            take $.left.in-order if $.left;
            take $.value;
            take $.right.in-order if $.right;
        }
    }

    method post-order {
        flat gather {
            take $.left.post-order if $.left;
            take $.right.post-order if $.right;
            take $.value;
        }
    }

    method level-order {
        my TreeNode @queue = (self);
        flat gather while @queue.elems {
            my $n = @queue.shift;
            take $n.value;
            @queue.push($n.left) if $n.left;
            @queue.push($n.right) if $n.right;
        }
    }
}

my TreeNode $root .= new( value => 1,
                    left => TreeNode.new( value => 2,
                            left => TreeNode.new( value => 4, left => TreeNode.new(value => 7)),
                            right => TreeNode.new( value => 5)
                    ),
                    right => TreeNode.new( value => 3,
                             left => TreeNode.new( value => 6,
                                     left => TreeNode.new(value => 8),
                                     right => TreeNode.new(value => 9)
                                     )
                             )
                    );

say "preorder:  ",$root.pre-order.join(" ");
say "inorder:   ",$root.in-order.join(" ");
say "postorder: ",$root.post-order.join(" ");
say "levelorder:",$root.level-order.join(" ");
#-------------------------------------------------- 1083 trigonometric-functions
# 20210212 Updated Raku programming solution

sub postfix:<°>    (\ᵒ) { ᵒ × τ / 360 }

sub postfix:<㎭🡆°> (\ᶜ) { ᶜ / π × 180 }

say sin π/3 ;
say sin 60° ;

say cos π/4 ;
say cos 45° ;

say tan π/6 ;
say tan 30° ;

( asin(3.sqrt/2), acos(1/sqrt 2), atan(1/sqrt 3) )».&{ .say and .㎭🡆°.say }
#--------------------------------------------- 1084 tropical-algebra-overloading
sub infix:<⊕> (Real $a, Real $b) is equiv(&[+]) { $a max $b }
sub infix:<⊗> (Real $a, Real $b) is equiv(&[×]) { $a + $b }
sub infix:<↑> (Real $a,  Int $b where * ≥ 0) is equiv(&[**]) { [⊗] $a xx $b }

use Test;

is-deeply(      2 ⊗ -2,        0, '2 ⊗ -2 == 0' );
is-deeply( -0.001 ⊕ -Inf, -0.001, '-0.001 ⊕ -Inf == -0.001' );
is-deeply(      0 ⊗ -Inf,   -Inf, '0 ⊗ -Inf == -Inf' );
is-deeply(    1.5 ⊕ -1,      1.5, '1.5 ⊕ -1 == 1.5' );
is-deeply(   -0.5 ⊗ 0,      -0.5, '-0.5 ⊗ 0 == -0.5' );
is-deeply(      5 ↑ 7,        35, '5 ↑ 7 == 35' );
is-deeply( 5 ⊗ (8 ⊕ 7),  5 ⊗ 8 ⊕ 5 ⊗ 7, '5 ⊗ (8 ⊕ 7) == 5 ⊗ 8 ⊕ 5 ⊗ 7');
is-deeply( 5 ↑ 7 ⊕ 6 ↑ 6,     36, '5 ↑ 7 ⊕ 6 ↑ 6 == 36');
#------------------------------------------------------- 1085 truncatable-primes
constant ltp = [2, 3, 5, 7], {
    last if .not;
    [ ((1..9) X~ @$_).grep: &is-prime ]
} ... *;

constant rtp = [2, 3, 5, 7], {
    last if .not;
    [ (@$_ X~ (1,3,7,9)).grep: &is-prime ]
} ... *;

say "Largest ltp < 1e6 = ", ltp[5][*-1];
say "Largest rtp < 1e6 = ", rtp[5][*-1];
say "Largest possible ltp = ", ltp.eager.flat.tail;
say "Largest possible rtp = ", rtp.eager.flat.tail;
#----------------------------------------- 1086 tuppers-self-referential-formula
# 20240802 Raku programming solution

my ( \H, \W, \N ) = 17, 106, 4858450636189713423582095962494202044581400587983244549483093085061934704708809928450644769865524364849997247024915119110411605739177407856919754326571855442057210445735883681829823754139634338225199452191651284348332905131193199953502413758765239264874613394906870130562295813219481113685339535565290850023875092856892694555974281546386510730049106723058933586052544096664351265349363643957125565695936815184334857605266940161251266951421550539554519153785457525756590740540157929001765967965480064427829131488548259914721248506352686630476300;

for N+H-1 ... N -> \y {
   say [~] ^W .map: { (y div H) div 2**(H * $_ + y % H) % 2 ?? '█' !! ' ' }
}
#-------------------------------------------------------- 1087 twelve-statements
sub infix:<→> ($protasis, $apodosis) { !$protasis or $apodosis }

my @tests =
    { .end == 12 and all(.[1..12]) === any(True, False) },
    { 3 == [+] .[7..12] },
    { 2 == [+] .[2,4...12] },
    { .[5] → all .[6,7] },
    { none .[2,3,4] },
    { 4 == [+] .[1,3...11] },
    { one .[2,3] },
    { .[7] → all .[5,6] },
    { 3 == [+] .[1..6] },
    { all .[11,12] },
    { one .[7,8,9] },
    { 4 == [+] .[1..11] },
;

my @solutions;
my @misses;

for [X] (True, False) xx 12 {
    my @assert = Nil, |$_;
    my @result = Nil, |@tests.map({ ?.(@assert) });
    my @true = @assert.grep(?*, :k);
    my @cons = (@assert Z=== @result).grep(!*, :k);
    given @cons {
        when 0 { push @solutions, "<{@true}> is consistent."; }
        when 1 { push @misses, "<{@true}> implies { "¬" if !@result[~$_] }$_." }
    }
}

.say for @solutions;
say "";
say "Near misses:";
.say for @misses;
#---------------------------------------------------- 1088 two-identical-strings
my @cat = (1..*).map: { :2([~] .base(2) xx 2) };
say "{+$_} matching numbers\n{.batch(5)».map({$_ ~ .base(2).fmt('(%s)')})».fmt('%15s').join: "\n"}\n"
    given @cat[^(@cat.first: * > 1000, :k)];
#---------------------------------------------------------------- 1089 two-sum-1
sub two_sum ( @numbers, $sum ) {
    die '@numbers is not sorted' unless [<=] @numbers;

    my ( $i, $j ) = 0, @numbers.end;
    while $i < $j {
        given $sum <=> @numbers[$i,$j].sum {
            when Order::More { $i += 1 }
            when Order::Less { $j -= 1 }
            when Order::Same { return $i, $j }
        }
    }
    return;
}

say two_sum ( 0, 2, 11, 19, 90 ), 21;
say two_sum ( 0, 2, 11, 19, 90 ), 25;
#---------------------------------------------------------------- 1090 two-sum-2
sub two-sum-lr (@a, $sum) {
  # (((^@a X ^@a) Z=> (@a X+ @a)).grep($sum == *.value)>>.keys.map:{ .split(' ').sort.join(' ')}).unique
    (
     (
      (^@a X ^@a) Z=> (@a X+ @a)
     ).grep($sum == *.value)>>.keys
     .map:{ .split(' ').sort.join(' ')}
    ).unique
}

sub two-sum-rl (@a, $sum) {
  # unique map {.split(' ').sort.join(' ')}, keys %(grep {.value == $sum}, ((^@a X ^@a) Z=> (@a X+ @a)))
    unique
    map {.split(' ').sort.join(' ')},
    keys %(
     grep {.value == $sum}, (
      (^@a X ^@a) Z=> (@a X+ @a)
     )
    )
}

my @a = <0 2 11 19 90>;
for 21, 25 {
    say two-sum-rl(@a, $_);
    say two-sum-lr(@a, $_);
}
#------------------------------------------------------------- 1091 ulam-numbers
my @ulams = 1, 2, &next-ulam … *;

sub next-ulam {
    state $i = 1;
    state @sums = 0,1,1;
    my $last = @ulams[$i];
    (^$i).map: { @sums[@ulams[$_] + $last]++ };
    ++$i;
    quietly ($last ^.. *).first: { @sums[$_] == 1 };
}

for 1 .. 4 {
    say "The {10**$_}th Ulam number is: ", @ulams[10**$_ - 1]
}
#-------------------------------------------------- 1092 ulam-spiral-for-primes-
sub MAIN($max = 160, $start = 1) {
    (my %world){0}{0} = 0;
    my ($n, $dir, $side, $loc) = $start, 1, 0, 0+0i;

    while ++$side < $max {
	step for ^$side; turn-left;
	step for ^$side; turn-left;
    }

    braille-graphics %world;

    sub step {
	$loc += $dir;
	%world{$loc.im}{$loc.re} = $n if (++$n).is-prime;
    }

    sub turn-left  { $dir ×= -i }
    sub turn-right { $dir ×=  i }
}

sub braille-graphics (%a) {
    my ($y-lo, $y-hi, $x-lo, $x-hi);
    for %a.keys.map(+*) -> \y {
        for %a{y}.keys.map(+*) -> \x {
            $y-lo min= y; $y-hi max= y;
            $x-lo min= x; $x-hi max= x;
        }
    }

    for $y-lo, $y-lo + 4 ...^ $y-hi -> \y {
	for $x-lo, $x-lo + 2 ...^ $x-hi -> \x {
	    my $cell = 0x2800;
            $cell += 2⁰ if %a{y + 0}{x + 0};
            $cell += 2¹ if %a{y + 1}{x + 0};
            $cell += 2² if %a{y + 2}{x + 0};
            $cell += 2³ if %a{y + 0}{x + 1};
            $cell += 2⁴ if %a{y + 1}{x + 1};
            $cell += 2⁵ if %a{y + 2}{x + 1};
            $cell += 2⁶ if %a{y + 3}{x + 0};
            $cell += 2⁷ if %a{y + 3}{x + 1};
            print chr($cell);
	}
	print "\n";
    }
}
#------------------------------------------------------ 1093 ultra-useful-primes
sub useful ($n) {
    (|$n).map: {
        my $p = 1 +< ( 1 +< $_ );
        ^$p .first: ($p - *).is-prime
    }
}

put useful 1..10;

put useful 11..13;
#------------------------------------------------------- 1094 undefined-values-1
my $x; $x = 42; $x = Nil; say $x.WHAT; # prints Any()
#------------------------------------------------------- 1095 undefined-values-2
say Method ~~ Routine;  # Bool::True
#------------------------------------------------------- 1096 undefined-values-3
my     $x; say $x.WHAT; # Any()
my Int $y; say $y.WHAT; # Int()
my Str $z; say $z.WHAT; # Str()
#------------------------------------------------------- 1097 undefined-values-4
my Int:D $i = 1; # if $i has to be defined you must provide a default value
multi sub foo(Int:D $i where * != 0){ (0..100).roll / $i } # we will never divide by 0
multi sub foo(Int:U $i){ die 'WELP! $i is undefined' } # because undefinedness is deadly

with $i { say 'defined' } # as "if" is looking for Bool::True, "with" is looking for *.defined
with 0 { say '0 may not divide but it is defined' }
#------------------------------------------------------- 1098 undulating-numbers
# 20230602 Raku programming solution

sub undulating ($base, \n) {
   my \limit = 2**(my \mpow = 53) - 1;
   my (\bsquare,@u3,@u4) = $base*$base;
   for 1..^$base X 0..^$base -> (\a,\b) {
      next if b == a;
      @u3.push(a * bsquare + b * $base + a);
      @u4.push((my \v = a * $base + b) * bsquare + v)
   }
   say "\nAll 3 digit undulating numbers in base $base:";
   .fmt('%3d').say for @u3.rotor: 9;
   say "\nAll 4 digit undulating numbers in base $base:";
   .fmt('%4d').say for @u4.rotor: 9;
   say "\nAll 3 digit undulating numbers which are primes in base $base:";
   my @primes = @u3.grep: *.is-prime;
    .fmt('%3d').say for @primes.rotor: 10, :partial;
   my \unc = (my @un = @u3.append: @u4).elems;
   my ($j, $done) = 0, False;
   loop {
      for 0..^unc {
         my  \u = @un[$j * unc + $_] * bsquare + @un[$j * unc + $_] % bsquare;
	 u > limit ?? ( $done = True and last ) !! ( @un.push: u );
      }
      $done ?? ( last ) !! $j++
   }
   say "\nThe {n} undulating number in $base $base is: @un[n-1]";
   say "or expressed in base $base : {@un[n-1].base($base)}" unless $base == 10;
   say "\nTotal number of undulating numbers in base $base < 2**{mpow} = {+@un}";
   say "of which the largest is: ", @un[*-1];
   say "or expressed in base $base : {@un[*-1].base($base)}" unless $base == 10;
}

undulating $_, 600 for 10, 7;
#-------------------------------------------------------- 1099 unescape-a-string
# 20240816 Raku programming solution

grammar JSON-Unescape {
   token TOP             { ^ <value> $ }
   token value           { [ <str> | \\ <str=.str_escape> ]* }
   token str             { <-["\\\t\x[0A]]>+ }
   token str_escape      { <["\\/bfnrt]> | 'u' <utf16_codepoint>+ % '\u' }
   token utf16_codepoint { <.xdigit>**4 }
}

class JSON-Unescape-Actions {
   method        TOP($/) { make $<value>.made }
   method        str($/) { make ~$/ }
   method      value($/) { make $<str>».made.join }
   method str_escape($/) {
      make $<utf16_codepoint>.Bool
         ?? utf16.new( $<utf16_codepoint>.map({:16(~$_)}) ).decode()
         !! %(< \\ / b n t f r " > Z=> < \\ / \b \n \t \f \r " >).{~$/}
   }
}

for < abc  a☺c  a\"c \u0061\u0062\u0063 a\\\c   a\u263Ac  a\\\u263Ac
      a\uD834\uDD1Ec a\ud834\udd1ec     a"c     a\\u263   a\\u263Xc
      a\\uDD1Ec      a\\uD834c          a\\uD834\\u263Ac > -> $input {
   printf "%20s => ", $input;
   my $o = JSON-Unescape.parse($input, actions => JSON-Unescape-Actions.new).made;
   fail "Invalid JSON string" unless $o.defined;
   say $o;
   CATCH { default { say "Error: $_" } }
}
#---------------------------------------------- 1100 unicode-polynomial-equation
# 20251201 Raku programming solution

my @equs = (
   '-0.00x⁺¹⁰ + 1.0·x ** 5 + -2e0x^4 + +0,042.00 × x ⁺³ + +.0x² + 20.000 000 000x¹ - -1x⁺⁰ + .0x⁻¹ + 20.x¹',
   'x⁵ - 2x⁴ + 42x³ + 0x² + 40x + 1',
   '0e+0x⁰⁰⁷ + 00e-00x + 0x + .0x⁰⁵ - 0.x⁴ + 0×x³ + 0x⁻⁰ + 0/x + 0/x³ + 0x⁻⁵',
   '1x⁵ - 2x⁴ + 42x³ + 40x + 1x⁰',
   '+x⁺⁵ + -2x⁻⁻⁴ + 42x⁺⁺³ + +40x - -1',
   'x^5 - 2x**4 + 42x^3 + 40x + 1',
   'x↑5 - 2.00·x⁴ + 42.00·x³ + 40.00·x + 1',
   'x⁻⁵ - 2⁄x⁴ + 42x⁻³ + 40/x + 1x⁻⁰',
   'x⁵ - 2x⁴ + 42.000 000x³ + 40x + 1',
   'x⁵ - 2x⁴ + 0,042x³ + 40.000,000x + 1',
   '0x⁷ + 10x + 10x + x⁵ - 2x⁴ + 42x³ + 20x + 1',
   '1E0x⁵ - 2,000,000.e-6x⁴ + 4.2⏨1x³ + .40e+2x + 1',
   'x⁵ - x⁴⁄2 + 405x³⁄4 + 403x⁄4 + 5⁄2',
   'x⁵ - 0.5x⁴ + 101.25x³ + 100.75x + 2.5',
   'x⁻⁵ - 2⁄x⁴ + 42x⁻³ - 40/x',
   '⅐x⁵ - ⅓x⁴ - ⅔x⁴ + 42⅕x³ + ⅑x - 40⅛ - ⅝',
);

my %powers = < - 0 1 2 3 4 5 6 7 8 9 > Z=> < ⁻ ⁰ ¹ ² ³ ⁴ ⁵ ⁶ ⁷ ⁸ ⁹ >;

my %frac-to-dec = ( my %frac = (
   '.25' => '¼', '.5' => '½', '.75' => '¾',   '.2' => '⅕', '.4' => '⅖',
   '.14285714285714285' => '⅐', '.1111111111111111' => '⅑', '.1' => '⅒',
   '.3333333333333333' => '⅓', '.6666666666666666' => '⅔', '.6' => '⅗',
   '.16666666666666666' => '⅙', '.8333333333333334' => '⅚', '.8' => '⅘',
   '.125' => '⅛', '.375' => '⅜', '.625' => '⅝', '.875' => '⅞',
)).antipairs;

sub normalize-exponent(Str $u is copy --> Str) {
   $u .= subst: '⁄', '/', :g;
   $u .= subst: / '⁻⁻' | '⁺⁺' | '**' | '^' | '↑' | '⁺' /, '', :g;
   for %powers.invert { $u .= subst: .key, .value, :g }
   return $u;
}

sub print-equation(%coefs) {
   print "=> ";
   if %coefs.elems == 0 || %coefs.values.all == 0 { say "0\n" andthen return }

   my $first = True;
   for %coefs.keys.map(*.Int).sort: { $^b <=> $^a } -> $p {
      next if ( my $c = %coefs{$p} ) == 0;

      unless $first {
         print " {$c > 0 ?? "+" !! "-"} ";
         $c .= abs
      }

      my $print-coef = ($c.abs != 1 || $p == 0);
      if $print-coef {
         my $cs = $c.Str;
         if $cs.contains('.') {
            my $dec = $cs.substr( $cs.index('.') );
            with %frac{$dec} { $cs .= subst: $dec, $_ }
         }
         if $cs.chars > 1 && $cs.starts-with('0') && $cs.substr(1,1) ne '.' {
            $cs .= substr(1)
         }
         print $cs
      } elsif $c < 0 {
         print "-"
      }

      if $p != 0 {
         my $ps = $p.Str.trans(%powers);
         $ps = "" if $ps eq "¹";
         print "x$ps";
      }
      $first = False;
   }
   say "\n";
}

sub parse-coef(Str $t is copy --> Num) {
   for %frac-to-dec.kv -> $frac, $dec {
      if $t.contains($frac) {
         my $ix = $t.index($frac);
         my $before = $ix > 0 ?? $t.substr(0, $ix) !! "0";
         $before = "0" if $before  eq  any "", "+", "-";
         my $sign = 1;
         if $before.starts-with('-') {
            $sign = -1;
            $before .= substr(1);
         } elsif $before.starts-with('+') {
            $before .= substr(1);
         }
         $before = "0" if $before eq "";
         return $sign * ($before.Num + $dec.Num);
      }
   }
   return $t.Num;
}

my $rgx = rx/ \s+ (<[+-]>) \s+ /;

for @equs -> $equ {
   say $equ;

   my @ops = $equ.match(:g, $rgx)».Str.map: *.trim;
   my @terms = $equ.split($rgx);
   my %coefs;

   for ^@terms -> $i {
      my $term = @terms[$i];
      my $op = ($i > 0 ?? @ops[$i-1] !! Nil);

      my $inverse = False;

      my @s = $term.split("x", 2);
      my $t = @s[0].trans([ '·', '×' ] => [ '', '' ]).trim;

      $t .= subst: / ',' | ' ' /, '', :g;

      $t .= trans( [ '⏨', '⁄', '↉' ] => [ 'e', '/', '.0' ] );

      my Num $c = 1e0;

      if $t eq "" || $t eq "+" || $t eq "-" { $t ~= "1" }

      if $t.ends-with("/") {
         $inverse = True;
         $t .= substr(0, *-1);
         $c = parse-coef($t);
      } elsif $t.contains("/") {
         my ($m, $n) = $t.split("/").map: { parse-coef($_) };
         $c = $m / $n;
      } else {
         $t .= subst(/ '.' $/, '', :g);
         $t .= subst('0.e', '0e', :g);
         $c = parse-coef($t);
      }

      if $i > 0 && $op eq "-" { $c = -$c }
      $c = 0e0 if $c == -0e0;

      my Int $p = 1;

      if @s.elems == 1 {
         %coefs{0} += $c if $c != 0;
         next;
      }

      my $u = normalize-exponent(@s[1].trim);

      my $apply-inverse = False;
      if $u eq "" {
         $p = 1;
         $apply-inverse = True;
      } elsif $u.contains("/") {
         my ($pow-str, $d) = $u.split("/")[0,1]>>.Num;
         $pow-str = "1" if $pow-str eq "";
         $p = $pow-str.Int;
         $c /= $d;
         $apply-inverse = True;
      } else {
         $p = $u.Int;
         $apply-inverse = True;
      }

      $p = -$p if $inverse && $apply-inverse;

      %coefs{$p} += $c if $c != 0;
   }
   print-equation(%coefs);
}
#---------------------------------------------------------- 1101 unicode-strings
sub prefix:<∛> (\𝐕) { 𝐕 ** ⅓ }
say ∛27;  # prints 3
#------------------------------------------------- 1102 unicode-variable-names-1
my $Δ = 1;
$Δ++;
say $Δ;
#------------------------------------------------- 1103 unicode-variable-names-2
my @ᐁ = (0, 45, 60, 90);

sub π { pi };

sub postfix:<°>($degrees) { $degrees * π / 180 };

for @ᐁ -> $ಠ_ಠ { say sin $ಠ_ಠ° };

sub c͓͈̃͂̋̈̆̽h̥̪͕ͣ͛̊aͨͣ̍͞ơ̱͔̖͖̑̽ș̻̥ͬ̃̈ͩ { 'HE COMES' }
#----------------------------------------- 1104 unique-characters-in-each-string
my $strings = <1a3c52debeffd 2b6178c97a938stf 3ycxdb1fgxa2yz>;

put sort keys [∩] $strings.map: *.comb.Bag.grep: *.value == 1
#-------------------------------------------------------- 1105 unique-characters
my @list = <133252abcdeeffd a6789798st yxcdfgxcyz>;

for @list, (@list, 'AАΑSäaoö٥🤔👨‍👩‍👧‍👧') {
    say "$_\nSemi-bogus \"Unicode natural sort\" order: ",
    .map( *.comb ).Bag.grep( *.value == 1 )».key.sort( { .unival, .NFKD[0], .fc } ).join,
    "\n        (DUCET) Unicode collation order: ",
    .map( *.comb ).Bag.grep( *.value == 1 )».key.collate.join, "\n";
}
#------------------------------------------------- 1106 universal-turing-machine
sub run_utm(:$state! is copy, :$blank!, :@rules!, :@tape = [$blank], :$halt, :$pos is copy = 0) {
    $pos += @tape if $pos < 0;
    die "Bad initial position" unless $pos ~~ ^@tape;

STEP: loop {
        print "$state\t";
        for ^@tape {
            my $v = @tape[$_];
            print $_ == $pos ?? "[$v]" !! " $v ";
        }
        print "\n";

        last if $state eq $halt;

        for @rules -> @rule {
            my ($s0, $v0, $v1, $dir, $s1) = @rule;
            next unless $s0 eq $state and @tape[$pos] eq $v0;

            @tape[$pos] = $v1;

            given $dir {
                when 'left' {
                    if $pos == 0 { unshift @tape, $blank }
                    else { $pos-- }
                }
                when 'right' {
                    push @tape, $blank if ++$pos >= @tape;
                }
            }

            $state = $s1;
            next STEP;

        }
        die 'No matching rules';
    }

}

say "incr machine";
run_utm	:halt<qf>,
    :state<q0>,
    :tape[1,1,1],
    :blank<B>,
    :rules[
        [< q0 1 1 right q0 >],
        [< q0 B 1 stay  qf >]
    ];

say "\nbusy beaver";
run_utm :halt<halt>,
    :state<a>,
    :blank<0>,
    :rules[
        [< a 0 1 right b >],
        [< a 1 1 left  c >],
        [< b 0 1 left  a >],
        [< b 1 1 right b >],
        [< c 0 1 left  b >],
        [< c 1 1 stay  halt >]
    ];

say "\nsorting test";
run_utm :halt<STOP>,
    :state<A>,
    :blank<0>,
    :tape[< 2 2 2 1 2 2 1 2 1 2 1 2 1 2 >],
    :rules[
        [< A 1 1 right A >],
        [< A 2 3 right B >],
        [< A 0 0 left  E >],
        [< B 1 1 right B >],
        [< B 2 2 right B >],
        [< B 0 0 left  C >],
        [< C 1 2 left  D >],
        [< C 2 2 left  C >],
        [< C 3 2 left  E >],
        [< D 1 1 left  D >],
        [< D 2 2 left  D >],
        [< D 3 1 right A >],
        [< E 1 1 left  E >],
        [< E 0 0 right STOP >]
    ];
#------------------------------------------------------------------ 1107 unix-ls
.say for sort ~«dir
#---------------------------------------------------------------------- 1108 upc
sub decode_UPC ( Str $line ) {
    constant @patterns1 = '   ## #', '  ##  #', '  #  ##', ' #### #', ' #   ##',
                          ' ##   #', ' # ####', ' ### ##', ' ## ###', '   # ##';
    constant @patterns2 = @patterns1».trans( '#' => ' ', ' ' => '#' );

    constant %pattern_to_digit_1 = @patterns1.antipairs;
    constant %pattern_to_digit_2 = @patterns2.antipairs;

    constant $re = / ^  '# #'  (@patterns1) ** 6
                       ' # # ' (@patterns2) ** 6
                        '# #'                     $ /;

    $line.trim ~~ $re
        orelse return;

    my @digits = flat %pattern_to_digit_1{ $0».Str },
                      %pattern_to_digit_2{ $1».Str };

    return unless ( @digits Z* ( |(3,1) xx * ) ).sum %% 10;

    return @digits.join;
}

my @lines =
    '         # #   # ##  #  ## #   ## ### ## ### ## #### # # # ## ##  #   #  ##  ## ###  # ##  ## ### #  # #       ',
     '        # # #   ##   ## # #### #   # ## #   ## #   ## # # # ###  # ###  ##  ## ###  # #  ### ###  # # #      ',
    '         # #    # # #  ###  #   #    # #  #   #    # # # # ## #   ## #   ## #   ##   # # #### ### ## # #       ',
      '       # # ##  ## ##  ##   #  #   #  # ###  # ##  ## # # #   ## ##  #  ### ## ## #   # #### ## #   # #        ',
    '         # # ### ## #   ## ## ###  ##  # ##   #   # ## # # ### #  ## ##  #    # ### #  ## ##  #      # #       ',
   '          # #  #   # ##  ##  #   #   #  # ##  ##  #   # # # # #### #  ##  # #### #### # #  ##  # #### # #    ',
    '         # #  #  ##  ##  # #   ## ##   # ### ## ##   # # # #  #   #   #  #  ### # #    ###  # #  #   # #     ',
     '        # # #    # ##  ##   #  # ##  ##  ### #   #  # # # ### ## ## ### ## ### ### ## #  ##  ### ## # #      ',
    '         # # ### ##   ## # # #### #   ## # #### # #### # # #   #  # ###  #    # ###  # #    # ###  # # #       ',
     '        # # # #### ##   # #### # #   ## ## ### #### # # # #  ### # ###  ###  # # ###  #    # #  ### # #      ',
;
for @lines -> $line {
    say decode_UPC($line)
     // decode_UPC($line.flip)
     // 'Invalid';
}
#------------------------------------------------------------- 1109 url-decoding
my @urls = < http%3A%2F%2Ffoo%20bar%2F
             google.com/search?q=%60Abdu%27l-Bah%C3%A1 >;

say .subst( :g,
    / [ '%' ( <xdigit> ** 2 ) ]+ / ,
    { Blob.new((:16(~$_) for $0)).decode }
    ) for @urls;
#------------------------------------------------------------- 1110 url-encoding
my $url = 'http://foo bar/';

say $url.subst(/<-alnum>/, *.ord.fmt("%%%02X"), :g);
#--------------------------------------------------- 1111 useless-instructions-2
for 1..10 { next if $_ %% 2; say '_' x $_ };  # for next
map { next if $_ %% 2; say '_' x $_ }, 1..10; # equivalent map
#--------------------------------------------------- 1112 useless-instructions-3
my @a1 = Q:w[one two three]; # list of strings using the Q sublanguage
my @a2 = <one two three>;    # syntactic sugar for the same operation

say (1,2,3,4,5,6,7).reduce(&infix:<*>); # multiply all of the items in a list together
say [*] (1,2,3,4,5,6,7);                # same operation, sweeter syntax
#---------------------------------------------------------- 1113 user-input-text
my $str = prompt("Enter a string: ");
my $int = prompt("Enter a integer: ");
#-------------------------------------------------- 1114 utf-8-encode-and-decode
say sprintf("%-18s %-36s|%8s| %7s |%14s | %s\n", 'Character|', 'Name', 'Ordinal', 'Unicode', 'UTF-8 encoded', 'decoded'), '-' x 100;

for < A ö Ж € 𝄞 😜 👨‍👩‍👧‍👦> -> $char {
    printf "   %-5s | %-43s | %6s | %-7s | %12s  |%4s\n", $char, $char.uninames.join(','), $char.ords.join(' '),
      ('U+' X~ $char.ords».base(16)).join(' '), $char.encode('UTF8').list».base(16).Str, $char.encode('UTF8').decode;
}
#------------------ 1115 validate-international-securities-identification-number
my $ISIN = /
    ^ <[A..Z]>**2 <[A..Z0..9]>**9 <[0..9]> $
    <?{ luhn-test $/.comb.map({ :36($_) }).join }>
/;

sub luhn-test ($number --> Bool) {
    my @digits = $number.comb.reverse;
    my $sum = @digits[0,2...*].sum
            + @digits[1,3...*].map({ |($_ * 2).comb }).sum;
    return $sum %% 10;
}

# Testing:

say "$_ is { m/$ISIN/ ?? "valid" !! "not valid"}" for <
US0378331005
US0373831005
U50378331005
US03378331005
AU0000XVGZA3
AU0000VXGZA3
FR0000988040
>;
#------------------------------------------------ 1116 van-der-corput-sequence-1
constant VdC = map { :2("0." ~ .base(2).flip) }, ^Inf;
.say for VdC[^16];
#------------------------------------------------ 1117 van-der-corput-sequence-2
sub VdC($base = 2) {
    map {
        [+] $_ && .polymod($base xx *) Z/ [\*] $base xx *
    }, ^Inf
}

.say for VdC[^10];
#------------------------------------------------ 1118 van-der-corput-sequence-3
sub vdc($num, $base = 2) {
    my $n = $num;
    my $vdc = 0;
    my $denom = 1;
    while $n {
        $vdc += $n mod $base / ($denom *= $base);
        $n div= $base;
    }
    $vdc;
}

for 2..5 -> $b {
    say "Base $b";
    say ( vdc($_,$b).Rat.nude.join('/') for ^10 ).join(', ');
    say '';
}
#--------------------------------------------------------- 1119 van-eck-sequence
sub n-van-ecks ($init) {
    $init, -> $i, {
        state %v;
        state $k;
        $k++;
        my $t  = %v{$i}.defined ?? $k - %v{$i} !! 0;
        %v{$i} = $k;
        $t
    } ... *
}

for <
    A181391 0
    A171911 1
    A171912 2
    A171913 3
    A171914 4
    A171915 5
    A171916 6
    A171917 7
    A171918 8
> -> $seq, $start {

    my @seq = n-van-ecks($start);

    # The task
    put qq:to/END/

    Van Eck sequence OEIS:$seq; with the first term: $start
            First 10 terms: {@seq[^10]}
    Terms 991 through 1000: {@seq[990..999]}
    END
}
#--------------------------------------------- 1120 variable-declaration-reset-3
my @s = 1, 2, 2, 3, 4, 4, 5;
loop (my $i = 0; $i < 7; $i += 1) {
    my $curr = @s[$i];
    our $prev;
    if $i > 1 and $curr == $prev {
        say $i;
    }
    $prev = $curr;
}
#--------------------------------------------- 1121 variable-declaration-reset-4
my @s = 1, 2, 2, 3, 4, 4, 5;
loop (my $i = 0; $i < 7; $i += 1) {
    my $curr = @s[$i];
    state $prev;
    if $i > 1 and $curr == $prev {
        say $i;
    }
    $prev = $curr;
}
#--------------------------------------------- 1122 variable-declaration-reset-5
no strict;
@s = 1, 2, 2, 3, 4, 4, 5;
loop ($i = 0; $i < 7; $i += 1) {
    $curr = @s[$i];
    if $i > 1 and $curr == $prev {
        say $i;
    }
    $prev = $curr;
}
#------------------------------------------------- 1123 variable-length-quantity
sub vlq_encode ($number is copy) {
    my @vlq = (127 +& $number).fmt("%02X");
    $number +>= 7;
    while ($number) {
       @vlq.push: (128 +| (127 +& $number)).fmt("%02X");
       $number +>= 7;
    }
    @vlq.reverse.join: ':';
}

sub vlq_decode ($string) {
    sum $string.split(':').reverse.map: {(:16($_) +& 127) +< (7 × $++)}
}

#test encoding and decoding
for (
    0,   0xa,   123,   254,   255,   256,
    257, 65534, 65535, 65536, 65537, 0x1fffff,
    0x200000
 ) -> $testcase {
    printf "%8s %12s %8s\n", $testcase,
      my $encoded = vlq_encode($testcase),
      vlq_decode($encoded);
}
#-------------------------------------------------------- 1124 variable-size-get
# Textual strings are measured in characters (graphemes)
my $string = "abc";

# Arrays are measured in elements.
say $string.chars;     # 3
my @array = 1..5;
say @array.elems;      # 5

# Buffers may be viewed either as a byte-string or as an array of elements.
my $buffer = '#56997; means "four dragons".'.encode('utf8');
say $buffer.bytes;     # 26
say $buffer.elems;     # 26
#-------------------------------------------------------------- 1125 variables-1
my @y = <A B C D>; # Array of strings 'A', 'B', 'C', and 'D'
say @y[2]; # the @-sigil requires the container to implement the role Positional
@y[1,2] = 'x','y'; # that's where subscripts and many other things come from
say @y; # OUTPUT«[A x y D]␤» # we start to count at 0 btw.

my $x = @y; # $x is now a reference for the array @y

say $x[1]; # prints 'x' followed by a newline character

my Int $with-type-check; # type checks are enforced by the compiler

my Int:D $defined-i = 10; # definedness can also be asked for and default values are required in that case

my Int:D $after-midnight where * > 24 = 25; # SQL is fun and so is Raku

my \bad = 'good'; # if you don't like sigils
say bad; # you don't have to use them
say "this is quite bad"; # but then string interpolation
say "this is quite {bad}" # becomes more wordy
#-------------------------------------------------------------- 1126 variables-2
say ++$; # this is an anonymous state variable
say ++$; # this is a different anonymous state variable, prefix:<++> forces it into numerical context and defaults it to 0
say $+=2 for 1..10; # here we do something useful with another anonymous variable

sub foo { $^a * $^b } # for positional arguments we often can't be bothered to declare them or to give them fancy names
say foo 3, 4;
#------------------------------------------ 1127 variadic-fixed-point-combinator
# 20240726 Raku programming solution

my &Y = -> \a { a.map: -> \f { -> &x { -> { x(Y(a)) } }(f) } }

my \even_odd_fix = -> \f { -> \n { n == 0  or f[1]()(n - 1) } },
                   -> \f { -> \n { n != 0 and f[0]()(n - 1) } };

my \collatz_fix = -> \f { -> \n, \d { n == 1 ?? d !! f[(n % 2)+1]()(n, d+1) } },
                  -> \f { -> \n, \d { f[0]()( n div 2, d ) } },
                  -> \f { -> \n, \d { f[0]()(   3*n+1, d ) } };

my \even_odd = Y(even_odd_fix).map: -> &f { f() }; # or { $_() }
my &collatz  = Y(collatz_fix)[0]();

for 1..10 -> \i {
   my ( \e, \o, \c ) = even_odd[0](i), even_odd[1](i), collatz(i, 0);
   printf "%2d: Even: %s  Odd: %s  Collatz: %s\n", i, e, o, c
}
#---------------------------------------------------------- 1128 vector-products
sub infix:<⋅> { [+] @^a »*« @^b }

sub infix:<⨯>([$a1, $a2, $a3], [$b1, $b2, $b3]) {
    [ $a2*$b3 - $a3*$b2,
      $a3*$b1 - $a1*$b3,
      $a1*$b2 - $a2*$b1 ];
}

sub scalar-triple-product { @^a ⋅ (@^b ⨯ @^c) }
sub vector-triple-product { @^a ⨯ (@^b ⨯ @^c) }

my @a = <3 4 5>;
my @b = <4 3 5>;
my @c = <-5 -12 -13>;

say (:@a, :@b, :@c);
say "a ⋅ b = { @a ⋅ @b }";
say "a ⨯ b = <{ @a ⨯ @b }>";
say "a ⋅ (b ⨯ c) = { scalar-triple-product(@a, @b, @c) }";
say "a ⨯ (b ⨯ c) = <{ vector-triple-product(@a, @b, @c) }>";
#------------------------------------------------------------------- 1129 vector
class Vector {
    has Real $.x;
    has Real $.y;

    multi submethod BUILD (:$!x!, :$!y!) {
        *
    }
    multi submethod BUILD (:$length!, :$angle!) {
        $!x = $length * cos $angle;
        $!y = $length * sin $angle;
    }
    multi submethod BUILD (:from([$x1, $y1])!, :to([$x2, $y2])!) {
        $!x = $x2 - $x1;
        $!y = $y2 - $y1;
    }

    method length { sqrt $.x ** 2 + $.y ** 2 }
    method angle  { atan2 $.y, $.x }

    method add      ($v) { Vector.new(x => $.x + $v.x,  y => $.y + $v.y) }
    method subtract ($v) { Vector.new(x => $.x - $v.x,  y => $.y - $v.y) }
    method multiply ($n) { Vector.new(x => $.x * $n,    y => $.y * $n  ) }
    method divide   ($n) { Vector.new(x => $.x / $n,    y => $.y / $n  ) }

    method gist { "vec[$.x, $.y]" }
}

multi infix:<+>  (Vector $v, Vector $w) is export { $v.add: $w }
multi infix:<->  (Vector $v, Vector $w) is export { $v.subtract: $w }
multi prefix:<-> (Vector $v)            is export { $v.multiply: -1 }
multi infix:<*>  (Vector $v, $n)        is export { $v.multiply: $n }
multi infix:</>  (Vector $v, $n)        is export { $v.divide: $n }


#####[ Usage example: ]#####

say my $u = Vector.new(x => 3, y => 4);                #: vec[3, 4]
say my $v = Vector.new(from => [1, 0], to => [2, 3]);  #: vec[1, 3]
say my $w = Vector.new(length => 1, angle => pi/4);    #: vec[0.707106781186548, 0.707106781186547]

say $u.length;                                         #: 5
say $u.angle * 180/pi;                                 #: 53.130102354156

say $u + $v;                                           #: vec[4, 7]
say $u - $v;                                           #: vec[2, 1]
say -$u;                                               #: vec[-3, -4]
say $u * 10;                                           #: vec[30, 40]
say $u / 2;                                            #: vec[1.5, 2]
#------------------------------------------------------- 1130 verhoeff-algorithm
my @d = [^10] xx 5;
@d[$_][^5].=rotate($_), @d[$_][5..*].=rotate($_) for 1..4;
push @d: [@d[$_].reverse] for flat 1..4, 0;

my @i = 0,4,3,2,1,5,6,7,8,9;

my %h = flat (0,1,5,8,9,4,2,7,0).rotor(2 =>-1).map({.[0]=>.[1]}), 6=>3, 3=>6;
my @p = [^10],;
@p.push: [@p[*-1].map: {%h{$_}}] for ^7;

sub checksum (Int $int where * ≥ 0, :$verbose = True ) {
    my @digits = $int.comb;
    say "\nCheckdigit calculation for $int:";
    say " i  ni  p(i, ni)  c" if $verbose;
    my ($i, $p, $c) = 0 xx 3;
    say " $i   0      $p     $c" if $verbose;
    for @digits.reverse {
        ++$i;
        $p = @p[$i % 8][$_];
        $c = @d[$c; $p];
        say "{$i.fmt('%2d')}   $_      $p     $c" if $verbose;
    }
    say "Checkdigit: {@i[$c]}";
    +($int ~ @i[$c]);
}

sub validate (Int $int where * ≥ 0, :$verbose = True) {
    my @digits = $int.comb;
    say "\nValidation calculation for $int:";
    say " i  ni  p(i, ni)  c" if $verbose;
    my ($i, $p, $c) = 0 xx 3;
    for @digits.reverse {
        $p = @p[$i % 8][$_];
        $c = @d[$c; $p];
        say "{$i.fmt('%2d')}   $_      $p     $c" if $verbose;
        ++$i;
    }
    say "Checkdigit: {'in' if $c}correct";
}

## TESTING

for 236, 12345, 123456789012 -> $int {
    my $check = checksum $int, :verbose( $int.chars < 8 );
    validate $check, :verbose( $int.chars < 8 );
    validate +($check.chop ~ 9), :verbose( $int.chars < 8 );
}
#-------------------------- 1131 verify-distribution-uniformity-chi-squared-test
sub incomplete-γ-series($s, $z) {
    my \numers = $z X** 1..*;
    my \denoms = [\*] $s X+ 1..*;
    my $M = 1 + [+] (numers Z/ denoms) ... * < 1e-6;
    $z**$s / $s * exp(-$z) * $M;
}

sub postfix:<!>(Int $n) { [*] 2..$n }

sub Γ-of-half(Int $n where * > 0) {
    ($n %% 2) ?? (($_-1)!                            given  $n    div 2)
              !! ((2*$_)! / (4**$_ * $_!) * sqrt(pi) given ($n-1) div 2);
}

# degrees of freedom constrained due to numerical limitations
sub chi-squared-cdf(Int $k where 1..200, $x where * >= 0) {
    my $f = $k < 20 ?? 20 !! 10;
    given $x {
        when 0                    { 0.0 }
        when * < $k + $f*sqrt($k) { incomplete-γ-series($k/2, $x/2) / Γ-of-half($k) }
        default                   { 1.0 }
    }
}

sub chi-squared-test(@bins, :$significance = 0.05) {
    my $n = +@bins;
    my $N = [+] @bins;
    my $expected = $N / $n;
    my $chi-squared = [+] @bins.map: { ($^bin - $expected)**2 / $expected }
    my $p-value = 1 - chi-squared-cdf($n-1, $chi-squared);
    return (:$chi-squared, :$p-value, :uniform($p-value > $significance));
}

for [< 199809 200665 199607 200270 199649 >],
    [< 522573 244456 139979  71531  21461 >]
    -> $dataset
{
    my %t = chi-squared-test($dataset);
    say 'data: ', $dataset;
    say "χ² = {%t<chi-squared>}, p-value = {%t<p-value>.fmt('%.4f')}, uniform = {%t<uniform>}";
}
#-------------------------------------------- 1132 vigen-re-cipher-cryptanalysis
# from Wikipedia
constant %English-letter-freq = (
     E => 12.70,  L => 4.03,  Y => 1.97,  P => 1.93,  T => 9.06,  A => 8.17,  O => 7.51,  I => 6.97,  N => 6.75,
     S =>  6.33,  H => 6.09,  R => 5.99,  D => 4.25,  C => 2.78,  U => 2.76,  M => 2.41,  W => 2.36,  F => 2.23,
     G =>  2.02,  B => 1.29,  V => 0.98,  K => 0.77,  J => 0.15,  X => 0.15,  Q => 0.10,  Z => 0.07
);
constant @alphabet = %English-letter-freq.keys.sort;
constant max_key_lengths = 5; # number of keylengths to try

sub myguess ($text) {
    my ($seqtext, @spacing, @factors, $pos, %freq, %Keys);

    # Kasiski examination
    $seqtext = $text;
    while ($seqtext ~~ /$<sequence>=[...].*$<sequence>/) {
        $seqtext = substr($seqtext, 1+index($seqtext, $<sequence>));
        push @spacing, 1 + index($seqtext, $<sequence>);
    }
    for @spacing -> $j {
        %freq{$_}++ for grep { $j %% $_ }, 2..$j;
    }

    # discard very short keys, and test only the most likely remaining key lengths
    (%freq.keys.grep(* > 3).sort({%freq{$_}}).tail(max_key_lengths)).race(:1batch).map: -> $keylen {
        my $key-guess = '';
        loop (my $i = 0; $i < $keylen; $i++) {
            my ($mykey, %chi-square, $best-guess);
            loop (my $j = 0; $j < $text.chars; $j += $keylen) {
                $mykey ~= substr($text, ($j+$i) % $text.chars, 1);
            }

            for @alphabet -> $subkey {
                my $decrypted = mycrypt($mykey, $subkey);
                my $length    = $decrypted.chars;
                for @alphabet -> $char {
                    my $expected = %English-letter-freq{$char} * $length / 100;
                    my $observed = $decrypted.comb.grep(* eq $char).elems;
                    %chi-square{$subkey} += ($observed - $expected)² / $expected if $observed;
                }
            }
            %Keys{$keylen}{'score'} = %chi-square{@alphabet[0]};
            for %chi-square.keys.sort -> $sk {
                if (%chi-square{$sk} <= %Keys{$keylen}{'score'}) {
                    $best-guess = $sk;
                    %Keys{$keylen}{'score'} = %chi-square{$sk};
                }
            }
            $key-guess ~= $best-guess;
        }
        %Keys{$keylen}{'key'} = $key-guess;
    }
    %Keys.keys.sort({ %Keys{$_}{'score'} }).map:{ %Keys{$_}{'key'} };
}

sub mycrypt ($text, $key) {
    constant %values-numbers = @alphabet Z=> ^@alphabet;
    constant %values-letters = %values-numbers.invert;

    my ($new-text);
    my $keylen = $key.chars;
    loop (my $i = 0; $i < $text.chars; $i++) {
        my $val =  -1 * %values-numbers{substr( $key, $i%$keylen, 1)} # negative shift for decode
                 +      %values-numbers{substr($text, $i,         1)};
        $new-text ~= %values-letters{ $val % @alphabet };
    }
    return $new-text;
}

my $cipher-text = .uc.trans(@alphabet => '', :c) given q:to/EOD/;
    MOMUD EKAPV TQEFM OEVHP AJMII CDCTI FGYAG JSPXY ALUYM NSMYH
    VUXJE LEPXJ FXGCM JHKDZ RYICU HYPUS PGIGM OIYHF WHTCQ KMLRD
    ITLXZ LJFVQ GHOLW CUHLO MDSOE KTALU VYLNZ RFGBX PHVGA LWQIS
    FGRPH JOOFW GUBYI LAPLA LCAFA AMKLG CETDW VOELJ IKGJB XPHVG
    ALWQC SNWBU BYHCU HKOCE XJEYK BQKVY KIIEH GRLGH XEOLW AWFOJ
    ILOVV RHPKD WIHKN ATUHN VRYAQ DIVHX FHRZV QWMWV LGSHN NLVZS
    JLAKI FHXUF XJLXM TBLQV RXXHR FZXGV LRAJI EXPRV OSMNP KEPDT
    LPRWM JAZPK LQUZA ALGZX GVLKL GJTUI ITDSU REZXJ ERXZS HMPST
    MTEOE PAPJH SMFNB YVQUZ AALGA YDNMP AQOWT UHDBV TSMUE UIMVH
    QGVRW AEFSP EMPVE PKXZY WLKJA GWALT VYYOB YIXOK IHPDS EVLEV
    RVSGB JOGYW FHKBL GLXYA MVKIS KIEHY IMAPX UOISK PVAGN MZHPW
    TTZPV XFCCD TUHJH WLAPF YULTB UXJLN SIJVV YOVDJ SOLXG TGRVO
    SFRII CTMKO JFCQF KTINQ BWVHG TENLH HOGCS PSFPV GJOKM SIFPR
    ZPAAS ATPTZ FTPPD PORRF TAXZP KALQA WMIUD BWNCT LEFKO ZQDLX
    BUXJL ASIMR PNMBF ZCYLV WAPVF QRHZV ZGZEF KBYIO OFXYE VOWGB
    BXVCB XBAWG LQKCM ICRRX MACUO IKHQU AJEGL OIJHH XPVZW JEWBA
    FWAML ZZRXJ EKAHV FASMU LVVUT TGK
EOD

for myguess($cipher-text) -> $key {
    say "Key        $key\n" ~
        "Key length {$key.chars}\n" ~
        "Plaintext  {substr(mycrypt($cipher-text, $key), 0, 80)}...\n";
}
#---------------------------------------------------------- 1133 vigen-re-cipher
sub s2v ($s) { $s.uc.comb(/ <[ A..Z ]> /)».ord »-» 65 }
sub v2s (@v) { (@v »%» 26 »+» 65)».chr.join }

sub blacken ($red, $key) { v2s(s2v($red) »+» s2v($key)) }
sub redden  ($blk, $key) { v2s(s2v($blk) »-» s2v($key)) }

my $red = "Beware the Jabberwock, my son! The jaws that bite, the claws that catch!";
my $key = "Vigenere Cipher!!!";

say $red;
say my $black = blacken($red, $key);
say redden($black, $key);
#--------------------------------------------------- 1134 vile-and-dopey-numbers
say   "First 25 Vile numbers:\n", (1..Inf).&vile[^25];
say "\nFirst 25 Dopey numbers:\n", (1..Inf).&dopey[^25];

put "\nupto:  Vile  Dopey";
for ^10 {
    my @r = 1 .. 2 +< $_;
    printf "%4d:   %3d    %3d\n", @r.tail, +vile(@r), +dopey(@r);
}

sub vile (@n)  { @n.grep: *.lsb %% 2 }
sub dopey (@n) { @n.grep: *.lsb % 2 }
#---------------------------------------------------------- 1135 visitor-pattern
role CarElementVisitor { ... }

class CarElement {
    method accept(CarElementVisitor $visitor) {
        $visitor.visit: self
    }
}

class Body is CarElement { }

class Engine is CarElement { }

class Wheel is CarElement {
    has Str $.name is required;
}

class Car is CarElement {
    has CarElement @.elements = (
        Wheel.new(name => "front left"),
        Wheel.new(name => "front right"),
        Wheel.new(name => "rear left"),
        Wheel.new(name => "rear right"),
        Body.new,
        Engine.new
    );

    method accept(CarElementVisitor $visitor) {
        for @.elements -> $element { $element.accept: $visitor };
        $visitor.visit: self;
    }
}

role CarElementVisitor {
    method visit(CarElement $e) { ... }
}

class CarElementDoVisitor does CarElementVisitor {
    multi method visit(Body $e) {
        say "Moving my body.";
    }
    multi method visit(Car $e) {
        say "Starting my car.";
    }
    multi method visit(Wheel $e) {
        say "Kicking my { $e.name } wheel.";
    }
    multi method visit(Engine $e) {
        say "Starting my engine.";
    }
}

class CarElementPrintVisitor does CarElementVisitor {
    multi method visit(Body $e) {
        say "Visiting body.";
    }
    multi method visit(Car $e) {
        say "Visiting car.";
    }
    multi method visit(Wheel $e) {
        say "Visiting { $e.name } wheel.";
    }
    multi method visit(Engine $e) {
        say "Visiting engine.";
    }
}

my Car $car = Car.new;

$car.accept: CarElementPrintVisitor.new;
$car.accept: CarElementDoVisitor.new;
#--------------------------------------------------------- 1136 visualize-a-tree
sub visualize-tree($tree, &label, &children,
                   :$indent = '',
                   :@mid = ('├─', '│ '),
                   :@end = ('└─', '  '),
) {
    sub visit($node, *@pre) {
        | gather {
            take @pre[0] ~ label($node);
            my @children := children($node);
            my $end = @children.end;
            for @children.kv -> $_, $child {
                when $end { take visit($child, (@pre[1] X~ @end)) }
                default   { take visit($child, (@pre[1] X~ @mid)) }
            }
        }
    }
    visit($tree, $indent xx 2);
}

# example tree built up of pairs
my $tree = root=>[a=>[a1=>[a11=>[]]],b=>[b1=>[b11=>[]],b2=>[],b3=>[]]];

.map({.join("\n")}).join("\n").say for visualize-tree($tree, *.key, *.value.list);
#-------------------------------------------------------------------- 1137 vlist
class vList {

   subset vEle of Any; # or Str

   class vSeg {
      has      $.next is rw is default(Nil) ;
      has vEle @.ele  is rw ;
   }

   has vSeg $.base   is rw is default(vSeg.new(ele=>()));
   has Int  $.offset is rw is default(0) ;

   method Index(Int $i is copy --> vEle) { # method to locate the kth element
      if $i ≥ 0 {
         loop ( $i += self.offset, $_ = self.base; $_.defined; $_ := $_.next) {
            ($i < my $len = .ele.elems) ?? return .ele[$i] !! $i -= $len
         }
      }
      die "index out of range"
   }

   method cons(vEle \a --> vList) { # method to add an element to the front
      if not self.base.ele.Bool {   # probably faster than .elems ?
         self.base.ele.push: a ;
         return self;
      } elsif self.offset == 0 {
         my \L2offset = (self.base.ele.elems * 2) - 1 ;
         my \s = vSeg.new(next => self.base, ele => flat Nil xx L2offset, a);
         return vList.new(base => s, offset => L2offset )
      }
      self.base.ele[--self.offset] = a;
      return self
   }

   # obtain a new array beginning at the second element of an old array
   method cdr(--> vList) {
      die "cdr on empty vList" unless self.base.defined;
      return self if ++self.offset < self.base.ele.elems;
      return vList.new(base => self.base.next)
   }

   method Length(--> Int) { # method to  compute the length of the list
      return 0 unless self.base.defined;
      return self.base.ele.elems*2 - self.offset - 1
   }

   method gist { # (mis)used to create output similar to Go/Kotlin
      return '[]' unless self.base.ele.Bool;
      my @sl = self.base.ele[self.offset .. *];
      loop ($_=self.base.next; $_.defined; $_:=$_.next) { @sl.append: .ele }
      return  "[" ~ @sl.Str ~ "]"
   }

   method printStructure {  # One more method for demonstration purposes
      say "offset: ", self.offset;
      loop ( $_ = self.base; $_.defined ; $_ := $_.next ) { .ele.say }
   }
}

my $v := vList.new;
say "zero value for type.  empty vList: ", $v;
$v.printStructure;
say " ";
$v := $v.cons($_.Str) for 6 … 1;
say "demonstrate cons. 6 elements added: ", $v;
$v.printStructure;
say " ";
$v := $v.cdr;
say "demonstrate cdr. 1 element removed: ", $v;
$v.printStructure;
say " ";
say "demonstrate length. length = ", $v.Length;
say " ";
say "demonstrate element access. v[3] = ", $v.Index(3) ;
say " ";
$v := $v.cdr.cdr;
say "show cdr releasing segment. 2 elements removed: ", $v;
$v.printStructure;
#---------------------------------------------- 1138 vogels-approximation-method
my  %costs =
    :W{:16A, :16B, :13C, :22D, :17E},
    :X{:14A, :14B, :13C, :19D, :15E},
    :Y{:19A, :19B, :20C, :23D, :50E},
    :Z{:50A, :12B, :50C, :15D, :11E};

my %demand = :30A, :20B, :70C, :30D, :60E;
my %supply = :50W, :60X, :50Y, :50Z;

my @cols = %demand.keys.sort;

my %res;
my %g = (|%supply.keys.map: -> $x { $x => [%costs{$x}.sort(*.value)».key]}),
   (|%demand.keys.map: -> $x { $x => [%costs.keys.sort({%costs{$_}{$x}})]});

while (+%g) {
    my @d = %demand.keys.map: -> $x
      {[$x, my $z = %costs{%g{$x}[0]}{$x},%g{$x}[1] ?? %costs{%g{$x}[1]}{$x} - $z !! $z]}

    my @s = %supply.keys.map: -> $x
      {[$x, my $z = %costs{$x}{%g{$x}[0]},%g{$x}[1] ?? %costs{$x}{%g{$x}[1]} - $z !! $z]}

    @d = |@d.grep({ (.[2] == max @d».[2]) }).&min: :by(*.[1]);
    @s = |@s.grep({ (.[2] == max @s».[2]) }).&min: :by(*.[1]);

    my ($t, $f) = @d[2] == @s[2] ?? (@s[1],@d[1]) !! (@d[2],@s[2]);
    my ($d, $s) = $t > $f ?? (@d[0],%g{@d[0]}[0]) !! (%g{@s[0]}[0], @s[0]);

    my $v = %supply{$s} min %demand{$d};

    %res{$s}{$d} += $v;
    %demand{$d} -= $v;

    if (%demand{$d} == 0) {
        %supply.grep( *.value != 0 )».key.map: -> $v
          { %g{$v}.splice((%g{$v}.first: * eq $d, :k),1) };
        %g{$d}:delete;
        %demand{$d}:delete;
    }

    %supply{$s} -= $v;

    if (%supply{$s} == 0) {
        %demand.grep( *.value != 0 )».key.map: -> $v
          { %g{$v}.splice((%g{$v}.first: * eq $s, :k),1) };
        %g{$s}:delete;
        %supply{$s}:delete;
    }
}

say join "\t", flat '', @cols;
my $total;
for %costs.keys.sort -> $g {
    print "$g\t";
    for @cols -> $col {
        print %res{$g}{$col} // '-', "\t";
        $total += (%res{$g}{$col} // 0) * %costs{$g}{$col};
    }
    print "\n";
}
say "\nTotal cost: $total";
#------------------------------------------- 1139 water-collected-between-towers
sub max_l ( @a ) {  [\max] @a }
sub max_r ( @a ) { ([\max] @a.reverse).reverse }

sub water_collected ( @towers ) {
    return 0 if @towers <= 2;

    my @levels = max_l(@towers) »min« max_r(@towers);

    return ( @levels »-« @towers ).grep( * > 0 ).sum;
}

say map &water_collected,
    [ 1, 5,  3, 7, 2 ],
    [ 5, 3,  7, 2, 6, 4, 5, 9, 1, 2 ],
    [ 2, 6,  3, 5, 2, 8, 1, 4, 2, 2, 5, 3, 5, 7, 4, 1 ],
    [ 5, 5,  5, 5 ],
    [ 5, 6,  7, 8 ],
    [ 8, 7,  7, 6 ],
    [ 6, 7, 10, 7, 6 ],
;
#----------------------------------------------------------- 1140 wavelet-matrix
# 20250625 Raku programming solution

class BitRank {
   has array[uint64] $.block is rw;
   has array[uint]   $.count is rw;

   method Resize(Int $num) {
      my $size = ($num + 1) +> 6 + 1;
      self.block = array[uint64].new: 0 xx $size;
      self.count =   array[uint].new: 0 xx $size;
   }

   method SetOne(Int $i, Int $val) {
      if $val == 1 { $.block[$i +> 6] +|= (1 +< ($i +& 63)) }
   }

   method popcountll(uint64 $n is copy) returns Int {
      loop ( my $count = 0 ; $n > 0 ; $count++ ) { $n +&= $n - 1 }
      return $count
   }

   method Rank1(Int $i) returns Int {
      $.count[$i +> 6] + self.popcountll($.block[$i +> 6] +& ((1 +< ($i +& 63)) - 1));
   }

   method Rank1FromTo(Int $i, Int $j) returns Int {
      return self.Rank1($j) - self.Rank1($i);
   }

   method Rank0(Int $i) returns Int { return $i - self.Rank1($i) }

   method Rank0FromTo(Int $i, Int $j) returns Int {
      return self.Rank0($j) - self.Rank0($i)
   }
}

class WaveletMatrix {
   has Int     $.height is rw;
   has BitRank @.B      is rw;
   has Int     @.pos    is rw;

   method new(@vec, Int :$sigma?) { self.bless(:@vec, :$sigma) }

   submethod BUILD(:@vec, Int :$sigma?) {
      my $s = $sigma // (@vec.max + 1);
      self.height = $s <= 1 ?? 1 !! ($s - 1).base(2).chars;
      self.B = BitRank.new xx self.height;
      self.pos = 0 xx self.height;

      for ^self.height -> $i {
         my $br = BitRank.new;
         $br.Resize(@vec.elems);
         for ^@vec.elems -> $j {
            $br.SetOne($j, self.get(@vec[$j], self.height - $i - 1));
         }
         self.B[$i] = $br;
         self.pos[$i] = self.stablePartition(@vec, -> $c { self.get($c, self.height - $i - 1) == 0 });
       }
   }

   method stablePartition(@arr, &predicate) returns Int {
      my $partition = @arr.classify: { &predicate($_) ?? 'true' !! 'false' };
      @arr = do given $partition { |.<true>, |.<false> }
      return $partition.<true>.elems
   }

   method get(Int $val, Int $i) returns Int { return ($val +> $i) +& 1 }

   method Rank(Int $val, Int $l, Int $r) returns Int {
      return self.RankSingle($val, $r) - self.RankSingle($val, $l);
   }

   method RankSingle(Int $val, Int $i) returns Int {
      my ($p, $idx) = 0, $i;
      for 0 ..^ $.height -> $j {
         if self.get($val, $.height - $j - 1) == 1 {
            $p = @.pos[$j] + @.B[$j].Rank1($p);
            $idx = @.pos[$j] + @.B[$j].Rank1($idx);
         } else {
            $p = @.B[$j].Rank0($p);
            $idx = @.B[$j].Rank0($idx);
         }
      }
      return $idx - $p;
   }

   method Quantile(Int $k, Int $l, Int $r) returns Int {
      my ($res, $left, $right, $kth) = 0, $l, $r, $k;
      for 0 ..^ $.height -> $i {
         my $j = @.B[$i].Rank0FromTo($left, $right);
         if $j > $kth {
            $left  = @.B[$i].Rank0($left);
            $right = @.B[$i].Rank0($right);
         } else {
            $left  = @.pos[$i] + @.B[$i].Rank1($left);
            $right = @.pos[$i] + @.B[$i].Rank1($right);
            $kth  -= $j;
            $res +|= (1 +< ($.height - $i - 1));
         }
      }
      return $res
   }

   method RangeFreq(Int $l, Int $r, Int $a, Int $b) returns Int {
      return self.rangeFreqRecursive($l, $r, $a, $b, 0, 1 +< $.height, 0)
   }

   method rangeFreqRecursive(Int $i, Int $j, Int $a, Int $b, Int $l, Int $r, Int $x) returns Int {
      if $i == $j || $r <= $a || $b <= $l { return 0 }
      my $mid = ($l + $r) +> 1;
      if $a <= $l && $r <= $b {
         return $j - $i;
      } else {
         my $left  = self.rangeFreqRecursive( @.B[$x].Rank0($i),
                                              @.B[$x].Rank0($j),
                                              $a, $b, $l, $mid, $x + 1);
         my $right = self.rangeFreqRecursive( @.pos[$x] + @.B[$x].Rank1($i),
                                              @.pos[$x] + @.B[$x].Rank1($j),
                                              $a, $b, $mid, $r, $x + 1);
         return $left + $right
       }
   }

   method rangeMinRecursive(Int $i, Int $j, Int $a, Int $b, Int $l, Int $r, Int $x, Int $val) returns Int {
      return -1   if $i == $j || $r <= $a || $b <= $l;
      return $val if $r - $l == 1;
      my $mid = ($l + $r) +> 1;
      my $res = self.rangeMinRecursive( @.B[$x].Rank0($i),
                                        @.B[$x].Rank0($j),
                                        $a, $b, $l, $mid, $x + 1, $val);
      if $res < 0 {
         return self.rangeMinRecursive( @.pos[$x] + @.B[$x].Rank1($i),
                                        @.pos[$x] + @.B[$x].Rank1($j),
                                        $a, $b, $mid, $r, $x + 1,
                                        $val + (1 +< ($.height - $x - 1)))
      } else {
         return $res
      }
   }
}

sub find(@arr, Int $x) returns Int {
   my ($left, $right) = 0, @arr.elems;

   while $left < $right {
      my $mid = ($left + $right) div 2;
      @arr[$mid] < $x ?? ( $left = $mid + 1 ) !! ( $right = $mid );
   }
   return $left
}

sub MAIN() {
   my $n = 5;
   my @a = 3374, 956, 2114, 3415, 3437;
   my @input = my @backup = @a;
   my @uniqueA = @a.sort.unique;

   for ^$n -> $i { @input[$i] = find(@uniqueA, @backup[$i]) }

   my @lrkVector = [ [2, 2, 1], [3, 4, 1], [4, 5, 1], [1, 2, 2], [4, 4, 1], ];

   my $wm = WaveletMatrix.new(@input);

   for @lrkVector -> [$l, $r, $k] {
      my $l_idx = $l - 1; # Convert to 0-indexed
      say @uniqueA[$wm.Quantile($k - 1, $l_idx, $r)];
   }
}
#------------------------------------------------------------ 1141 weird-numbers
sub abundant (\x) {
    my @l = x.is-prime ?? 1 !! flat
    1, (2 .. x.sqrt.floor).map: -> \d {
         my \y = x div d;
         next if y * d !== x;
         d !== y ?? (d, y) !! d
    };
    (my $s = @l.sum) > x ?? ($s, |@l.sort(-*)) !! ();
}

my @weird = (2, 4, {|($_ + 4, $_ + 6)} ... *).map: -> $n {
    my ($sum, @div) = $n.&abundant;
    next unless $sum;        # Weird number must be abundant, skip it if it isn't.
    next if $sum / $n > 1.1; # There aren't any weird numbers with a sum:number ratio greater than 1.08 or so.
    if $n >= 10430 and ($n %% 70) and ($n div 70).is-prime {
        # It's weird. All numbers of the form 70 * (a prime 149 or larger) are weird
    } else {
        my $next;
        my $l = @div.shift;
        ++$next and last if $_.sum == $n - $l for @div.combinations;
        next if $next;
    }
    $n
}

put "The first 25 weird numbers:\n", @weird[^25];
#---------------------------------------------------------- 1142 welchs-t-test-1
sub Γ(\z) {
    constant g = 9;
    z < .5 ?? π / sin(π × z) / Γ(1 - z) !!
    τ.sqrt × (z + g - 1/2)**(z - 1/2) ×
    exp(-(z + g - 1/2)) ×
    [+] <
        1.000000000000000174663
     5716.400188274341379136
   -14815.30426768413909044
    14291.49277657478554025
    -6348.160217641458813289
     1301.608286058321874105
     -108.1767053514369634679
        2.605696505611755827729
       -0.7423452510201416151527e-2
        0.5384136432509564062961e-7
       -0.4023533141268236372067e-8
    > Z× 1, |map 1/(z + *), 0..*
}

sub p-value (@A, @B) {
    return 1 if @A <= 1 or @B <= 1;

    my $a-mean = @A.sum / @A;
    my $b-mean = @B.sum / @B;
    my $a-variance = @A.map( { ($a-mean - $_)² } ).sum / (@A - 1);
    my $b-variance = @B.map( { ($b-mean - $_)² } ).sum / (@B - 1);
    return 1 unless $a-variance && $b-variance;

    my \Welchs-𝒕-statistic = ($a-mean - $b-mean)/($a-variance/@A + $b-variance/@B).sqrt;

    my $DoF = ($a-variance / @A + $b-variance / @B)² /
              (($a-variance² / (@A³ - @A²)) + ($b-variance² / (@B³ - @B²)));

    my $sa = $DoF / 2 - 1;
    my $x = $DoF / (Welchs-𝒕-statistic² + $DoF);
    my $N = 65355;
    my $h = $x / $N;
    my ( $sum1, $sum2 );

    for ^$N »×» $h -> $i {
        $sum1 += (($i + $h / 2) ** $sa) / (1 - ($i + $h / 2)).sqrt;
        $sum2 +=   $i           ** $sa  / (1 -  $i).sqrt;
    }

    (($h / 6) × ( $x ** $sa / (1 - $x).sqrt + 4 × $sum1 + 2 × $sum2)) /
     ( Γ($sa + 1) × π.sqrt / Γ($sa + 1.5) );
}

# Testing
for (
  [<27.5 21.0 19.0 23.6 17.0 17.9 16.9 20.1 21.9 22.6 23.1 19.6 19.0 21.7 21.4>],
  [<27.1 22.0 20.8 23.4 23.4 23.5 25.8 22.0 24.8 20.2 21.9 22.1 22.9 20.5 24.4>],

  [<17.2 20.9 22.6 18.1 21.7 21.4 23.5 24.2 14.7 21.8>],
  [<21.5 22.8 21.0 23.0 21.6 23.6 22.5 20.7 23.4 21.8 20.7 21.7 21.5 22.5 23.6 21.5 22.5 23.5 21.5 21.8>],

  [<19.8 20.4 19.6 17.8 18.5 18.9 18.3 18.9 19.5 22.0>],
  [<28.2 26.6 20.1 23.3 25.2 22.1 17.7 27.6 20.6 13.7 23.2 17.5 20.6 18.0 23.9 21.6 24.3 20.4 24.0 13.2>],

  [<30.02 29.99 30.11 29.97 30.01 29.99>],
  [<29.89 29.93 29.72 29.98 30.02 29.98>],

  [<3.0 4.0 1.0 2.1>],
  [<490.2 340.0 433.9>]
) -> @left, @right { say p-value @left, @right }
#--------------------------------------------------------- 1143 wieferich-primes
put "Wieferich primes less than 5000: ", join ', ', ^5000 .grep: { .is-prime and not ( exp($_-1, 2) - 1 ) % .² };
#------------------------------------------------- 1144 wilson-primes-of-order-n
# Factorial
sub postfix:<!> (Int $n) { (constant f = 1, |[\×] 1..*)[$n] }

# Invisible times
sub infix:<⁢> is tighter(&infix:<**>) { $^a * $^b };

# Prime the iterator for thread safety
sink 11000!;

my @primes = ^1.1e4 .grep: *.is-prime;

say
'  n: Wilson primes
────────────────────';

.say for (1..40).hyper(:1batch).map: -> \𝒏 {
    sprintf "%3d: %s", 𝒏, @primes.grep( -> \𝒑 { (𝒑 ≥ 𝒏) && ((𝒏 - 1)!⁢(𝒑 - 𝒏)! - (-1) ** 𝒏) %% 𝒑² } ).Str
}
#------------------------------------------------------- 1145 word-break-problem
my @words = <a bc abc cd b>;
my $regex = @words.join('|');

put "$_: ", word-break($_) for <abcd abbc abcbcd acdbc abcdd>;

sub word-break (Str $word) { ($word ~~ / ^ (<$regex>)+ $ /)[0] // "Not possible" }
#---------------------------------------------------------------- 1146 word-wrap
my $s = "In olden times when wishing still helped one, there lived a king
whose daughters were all beautiful, but the youngest was so beautiful
that the sun itself, which has seen so much, was astonished whenever
it shone in her face.  Close-by-the-king's-castle-lay-a-great-dark
forest, and under an old lime-tree in the forest was a well, and when
the day was very warm, the king's child went out into the forest and
sat down by the side of the cool fountain, and when she was bored she
took a golden ball, and threw it up on high and caught it, and this
ball was her favorite plaything.";

$s ~~ s:g/»\s+/ /;
$s ~~ s/\s*$/\n\n/;

say $s.subst(/ \s* (. ** 1..66) \s /, -> $/ { "$0\n" }, :g);
say $s.subst(/ \s* (. ** 1..25) \s /, -> $/ { "$0\n" }, :g);
#-------------------------------------------------------- 1147 wordle-comparison
# 20220216 Raku programming solution

sub wordle (\answer,\guess where [==] (answer,guess)».chars ) {

   my ($aSet, $gSet, @return) = (answer,guess)».&{ (set .comb.pairs).SetHash }

   (my \intersection = $aSet ∩ $gSet).keys».&{ @return[.key] = 'green' }
   ($aSet,$gSet)».&{ $_ ∖= intersection } # purge common subset

   for $gSet.keys.sort -> \trial { # pair
      @return[trial.key] = 'grey';
      for $aSet.keys -> \actual { # pair
         if [eq] (trial,actual)».value {
            @return[trial.key] = 'yellow';
            $aSet{actual}:delete;
            last
         }
         my @NFD = (trial,actual).map: { .value.NFD }
         if [ne] @NFD and [==] @NFD».first {
            @return[trial.key] = 'azure';
            $aSet{actual}:delete;
            last
         }
      }
   }
   @return
}

say .[0]~' vs '~.[1]~"\t"~ wordle .[0],.[1] for (
<ALLOW LOLLY>, <ROBIN ALERT>, <ROBIN SONIC>, <ROBIN ROBIN>, <BULLY LOLLY>,
<ADAPT SÅLÅD>, <Ukraine Ukraíne>, <BBAABBB BBBBBAA>, <BBAABBB AABBBAA> );
#---------------------------------------------------- 1148 world-cup-group-stage
constant scoring = 0, 1, 3;
my @histo = [0 xx 10] xx 4;

for [X] ^3 xx 6 -> @results {
    my @s;

    for @results Z (^4).combinations(2) -> ($r, @g) {
        @s[@g[0]] += scoring[$r];
        @s[@g[1]] += scoring[2 - $r];
    }

    for @histo Z @s.sort -> (@h, $v) {
        ++@h[$v];
    }
}

say .fmt('%3d',' ') for @histo.reverse;
#-------------------------------------------------- 1149 worthwhile-task-shaving
# 20220207 Raku programming solution

my \shaved  = [1, 5, 30, 60, 300, 1800, 3600, 21600, 86400]; # time shaved off in seconds
my \columns = [ "1 SECOND", "5 SECONDS", "30 SECONDS", "1 MINUTE", "5 MINUTES",
                "30 MINUTES", "1 HOUR", "6 HOURS", "1 DAY" ];
my \diy     = 365.25;
my \minute  = 60;
my \hour    = minute * 60;
my \day     = hour * 24;
my \week    = day * 7;
my \month   = day * diy / 12;
my \year    = day * diy;
my \freq    = [50 * diy, 5 * diy, diy, diy/7, 12, 1]; # frequency per year
my \mult    = 5; # multiplier for table

sub fmtTime (\t, \interval) { printf "%-12s ", t.floor~" "~interval~(t == 1 ?? "" !! "S") }

say ' ' x 34~"HOW OFTEN YOU DO THE TASK";
printf("%-12s | %-12s %-12s %-12s %-12s %-12s %-12s\n",
   ["SHAVED OFF", "50/DAY", "5/DAY", "DAILY", "WEEKLY", "MONTHLY", "YEARLY"]);
say '-' x 93;

for ^9 -> \y {
   printf "%-12s | ", columns[y];
   for ^6 -> \x {
      given my \t = freq[x] * shaved[y] * mult {
         when t < minute  { fmtTime t,        "SECOND" }
         when t < hour    { fmtTime t/minute, "MINUTE" }
         when t < day     { fmtTime t/hour,   "HOUR"   }
         when t < 14*day  { fmtTime t/day,    "DAY"    }
         when t < 9*week  { fmtTime t/week,   "WEEK"   }
         when t < year    { fmtTime t/month,  "MONTH"  }
         default          { print   '   N/A       '    }
      }
   }
   print "\n"
}
#----------------------------------------------- 1150 xiaolin-wus-line-algorithm
sub plot(\x, \y, \c) { say "plot {x} {y} {c}" }

sub fpart(\x) { x - floor(x) }

sub draw-line(@a is copy, @b is copy) {
    my Bool \steep = abs(@b[1] - @a[1]) > abs(@b[0] - @a[0]);
    my $plot = &OUTER::plot;

    if steep {
	$plot = -> $y, $x, $c { plot($x, $y, $c) }
	@a.=reverse;
	@b.=reverse;
    }
    if @a[0] > @b[0] { my @t = @a; @a = @b; @b = @t }

    my (\x0,\y0) = @a;
    my (\x1,\y1) = @b;

    my \dx = x1 - x0;
    my \dy = y1 - y0;
    my \gradient = dy / dx;

    # handle first endpoint
    my \x-end1 = round(x0);
    my \y-end1 = y0 + gradient * (x-end1 - x0);
    my \x-gap1 = 1 - round(x0 + 0.5);

    my \x-pxl1 = x-end1;   # this will be used in the main loop
    my \y-pxl1 = floor(y-end1);
    my \c1 = fpart(y-end1) * x-gap1;

    $plot(x-pxl1, y-pxl1    , 1 - c1) unless c1 == 1;
    $plot(x-pxl1, y-pxl1 + 1, c1    ) unless c1 == 0;

    # handle second endpoint
    my \x-end2 = round(x1);
    my \y-end2 = y1 + gradient * (x-end2 - x1);
    my \x-gap2 = fpart(x1 + 0.5);

    my \x-pxl2 = x-end2; # this will be used in the main loop
    my \y-pxl2 = floor(y-end2);
    my \c2 = fpart(y-end2) * x-gap2;

    my \intery = y-end1 + gradient;

    # main loop
    for (x-pxl1 + 1 .. x-pxl2 - 1)
	Z
	(intery, intery + gradient ... *)
    -> (\x,\y) {
	my \c = fpart(y);
	$plot(x, floor(y)    , 1 - c) unless c == 1;
	$plot(x, floor(y) + 1, c    ) unless c == 0;
    }

    $plot(x-pxl2, y-pxl2    , 1 - c2) unless c2 == 1;
    $plot(x-pxl2, y-pxl2 + 1, c2    ) unless c2 == 0;
}

draw-line [0,1], [10,2];
#------------------------------------------------------------ 1151 xxxx-redacted
sub redact ( Str $str, Str $redact, :i(:$insensitive) = False, :p(:$partial) = False, :o(:$overkill) = False ) {
    my $rx =
        $insensitive ??
            $partial ??
           $overkill ?? rx/:i <?after ^ | <:Po> | \s > (<[\w<:!Po>-]>*? [\w*\']? $redact [\w*\'\w+]? \S*?) <?before $ | <:Po> | \s > / #'
                     !! rx/:i ($redact) /
                     !! rx/:i <?after ^ | [\s<:Po>] | \s > ($redact) <?before $ | <:Po> | \s > /
                     !!
            $partial ??
           $overkill ?? rx/ <?after ^ | <:Po> | \s > (<[\w<:!Po>-]>*? [\w*\']? $redact [\w*\'\w+]? \S*?) <?before $ | <:Po> | \s > / #'
                     !! rx/ ($redact) /
                     !! rx/ <?after ^ | [\s<:Po>] | \s > ($redact) <?before $ | <:Po> | \s > /
    ;
    $str.subst( $rx, {'X' x $0.chars}, :g )
}

my %*SUB-MAIN-OPTS = :named-anywhere;

# Operate on a given file with the given parameters
multi MAIN (
    Str $file,    #= File name with path
    Str $target,  #= Redact target text string
    :$i = False,  #= Case insensitive flag
    :$p = False,  #= Partial words flag
    :$o = False   #= Overkill flag
  ) { put $file.IO.slurp.&redact( $target, :i($i), :p($p), :o($o) ) }

# Operate on the internal strings / parameters
multi MAIN () {

# TESTING

    my $test = q:to/END/;
        Tom? Toms bottom tomato is in his stomach while playing the "Tom-tom" brand tom-toms. That's so tom.
        'Tis very tomish, don't you think?
        END
        #'

    for 'Tom', 'tom', 't' -> $redact {
        say "\nRedact '$redact':";
        for '[w|s|n]', $redact, {},
            '[w|i|n]', $redact, {:i},
            '[p|s|n]', $redact, {:p},
            '[p|i|n]', $redact, {:p, :i},
            '[p|s|o]', $redact, {:p, :o},
            '[p|i|o]', $redact, {:p, :i, :o}
        -> $option, $str, %opts { printf "%s %s\n", $option, $test.&redact($str, |%opts) }
    }

    my $emoji = '🧑 👨 🧔 👨‍👩‍👦';
    printf "%20s %s\n", '', $emoji;
    printf "%20s %s\n", "Redact '👨' [w]", $emoji.&redact('👨');
    printf "%20s %s\n", "Redact '👨‍👩‍👦' [w]", $emoji.&redact('👨‍👩‍👦');

    # Even more complicated Unicode

    $emoji = 'Argentina🧑🇦🇹  France👨🇫🇷  Germany🧔🇩🇪  Netherlands👨‍👩‍👦🇳🇱';
    printf "\n%20s %s\n", '', $emoji;
    printf "%20s %s\n", "Redact '👨' [p]", $emoji.&redact('👨', :p);
    printf "%20s %s\n", "Redact '👨‍👩‍👦' [p]", $emoji.&redact('👨‍👩‍👦', :p);
    printf "%20s %s\n", "Redact '👨' [p|o]", $emoji.&redact('👨', :p, :o);
    printf "%20s %s\n", "Redact '👨‍👩‍👦' [p|o]", $emoji.&redact('👨‍👩‍👦', :p, :o);
}
#----------------------------------------------------------- 1152 y-combinator-1
sub Y (&f) { sub (&x) { x(&x) }( sub (&y) { f(sub ($x) { y(&y)($x) }) } ) }
sub fac (&f) { sub ($n) { $n < 2 ?? 1 !! $n * f($n - 1) } }
sub fib (&f) { sub ($n) { $n < 2 ?? $n !! f($n - 1) + f($n - 2) } }
say map Y($_), ^10 for &fac, &fib;
#----------------------------------------------------------- 1153 y-combinator-2
say .(10) given sub (Int $x) { $x < 2 ?? 1 !! $x * &?ROUTINE($x - 1); }
#----------------------------------------------------------- 1154 yin-and-yang-1
sub circle ($rad, $cx, $cy, $fill = 'white', $stroke = 'black' ){
    say "<circle cx='$cx' cy='$cy' r='$rad' fill='$fill' stroke='$stroke' stroke-width='1'/>";
}

sub yin_yang ($rad, $cx, $cy, :$fill = 'white', :$stroke = 'black', :$angle = 90) {
    my ($c, $w) = (1, 0);
    say "<g transform='rotate($angle, $cx, $cy)'>" if $angle;
    circle($rad, $cx, $cy, $fill, $stroke);
    say "<path d='M $cx {$cy + $rad}A {$rad/2} {$rad/2} 0 0 $c $cx $cy ",
        "{$rad/2} {$rad/2} 0 0 $w $cx {$cy - $rad} $rad $rad 0 0 $c $cx ",
        "{$cy + $rad} z' fill='$stroke' stroke='none' />";
    circle($rad/5, $cx, $cy + $rad/2, $fill, $stroke);
    circle($rad/5, $cx, $cy - $rad/2, $stroke, $fill);
    say "</g>" if $angle;
}

say '<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<!DOCTYPE svg PUBLIC "-//W3C//DTD SVG 1.1//EN" "http://www.w3.org/Graphics/SVG/1.1/DTD/svg11.dtd">
<svg height="400" width="400" xmlns="http://www.w3.org/2000/svg" version="1.1"
 xmlns:xlink="http://www.w3.org/1999/xlink">';

yin_yang(100, 130, 130);
yin_yang(50, 300, 300);

say '</svg>';
#----------------------------------------------------------- 1155 yin-and-yang-2
sub cheat_harder ($scale) { "<span style=\"font-size:$scale%;\">&#x262f;</span>"; }

say '<div>', cheat_harder(700), cheat_harder(350), '</div>';
#------------------------------------------------------------- 1156 zebra-puzzle
my Hash @houses = (1 .. 5).map: { %(:num($_)) }; # 1 there are five houses

my @facts = (
    { :nat<English>, :color<red> },      # 2 The English man lives in the red house.
    { :nat<Swede>, :pet<dog> },          # 3 The Swede has a dog.
    { :nat<Dane>, :drink<tea> },         # 4 The Dane drinks tea.
    { :color<green>, :Left-Of(:color<white>) }, # 5 the green house is immediately to the left of the white house
    { :drink<coffee>, :color<green> },   # 6 They drink coffee in the green house.
    { :smoke<Pall-Mall>, :pet<birds> },  # 7 The man who smokes Pall Mall has birds.
    { :color<yellow>, :smoke<Dunhill> }, # 8 In the yellow house they smoke Dunhill.
    { :num(3), :drink<milk> },           # 9 In the middle house they drink milk.
    { :num(1), :nat<Norwegian> },        # 10 The Norwegian lives in the first house.
    { :smoke<Blend>, :Next-To(:pet<cats>) }, # 11 The man who smokes Blend lives in the house next to the house with cats.
    { :pet<horse>, :Next-To(:smoke<Dunhill>) }, # 12 In a house next to the house where they have a horse, they smoke Dunhill.
    { :smoke<Blue-Master>, :drink<beer> }, # 13 The man who smokes Blue Master drinks beer.
    { :nat<German>, :smoke<Prince> },      # 14 The German smokes Prince.
    { :nat<Norwegian>, :Next-To(:color<blue>) }, # 15 The Norwegian lives next to the blue house.
    { :drink<water>, :Next-To(:smoke<Blend>) },  # 16 They drink water in a house next to the house where they smoke Blend.
    { :pet<zebra> }, # who owns this?
);

sub MAIN {
    for gather solve(@houses, @facts) {
        #-- output
        say .head.sort.map(*.key.uc.fmt("%-9s")).join(' | ');
        say .sort.map(*.value.fmt("%-9s")).join(' | ')
            for .list;
        last; # stop after first solution
    }
}

#| a solution has been found that fits all the facts
multi sub solve(@solution, @facts [ ]) {
    take @solution;
}

#| extend this scenario to fit the next fact
multi sub solve(@scenario, [ $fact, *@facts ]) {
    for gather match(@scenario, |$fact) -> @houses {
        solve(@houses, @facts)
    }
}

#| find all possible solutions for pairs of houses with
#| properties %b, left of a house  with properties %a
multi sub match(@houses, :Left-Of(%a)!, *%b) {
    for 1 ..^ @houses {
        my %left-house  := @houses[$_-1];
        my %right-house := @houses[$_];

        if plausible(%left-house, %a) && plausible(%right-house, %b) {
            temp %left-house  ,= %a;
            temp %right-house ,= %b;
            take @houses;
        }
    }
}

#| match these houses are next to each other (left or right)
multi sub match(@houses, :Next-To(%b)!, *%a ) {
    match(@houses, |%a, :Left-Of(%b) );
    match(@houses, |%b, :Left-Of(%a) );
}

#| find all possible houses that match the given properties
multi sub match(@houses, *%props) {
    for @houses.grep({plausible($_, %props)}) -> %house {
        temp %house ,= %props;
        take @houses;
    }
}

#| plausible if doesn't conflict with anything
sub plausible(%house, %props) {
   ! %props.first: {%house{.key} && %house{.key} ne .value };
}
#---------------------------------------------------- 1157 zeckendorf-arithmetic
my $z1 = '1'; # glyph to use for a '1'
my $z0 = '0'; # glyph to use for a '0'

sub zorder($a) { ($z0 lt $z1) ?? $a !! $a.trans([$z0, $z1] => [$z1, $z0]) }

######## Zeckendorf comparison operators #########

# less than
sub infix:<ltz>($a, $b) { $a.&zorder lt $b.&zorder }

# greater than
sub infix:<gtz>($a, $b) { $a.&zorder gt $b.&zorder }

# equal
sub infix:<eqz>($a, $b) { $a eq $b }

# not equal
sub infix:<nez>($a, $b) { $a ne $b }

######## Operators for Zeckendorf arithmetic ########

# post increment
sub postfix:<++z>($a is rw) {
    $a = ("$z0$z0"~$a).subst(/("$z0$z0")($z1+ %% $z0)?$/,
      -> $/ { "$z0$z1" ~ ($1 ?? $z0 x $1.chars !! '') });
    $a ~~ s/^$z0+//;
    $a
}

# post decrement
sub postfix:<--z>($a is rw) {
    $a.=subst(/$z1($z0*)$/,
      -> $/ {$z0 ~ "$z1$z0" x $0.chars div 2 ~ $z1 x $0.chars mod 2});
    $a ~~ s/^$z0+(.+)$/$0/;
    $a
}

# addition
sub infix:<+z>($a is copy, $b is copy) { $a++z; $a++z while $b--z nez $z0; $a }

# subtraction
sub infix:<-z>($a is copy, $b is copy) { $a--z; $a--z while $b--z nez $z0; $a }

# multiplication
sub infix:<×z>($a, $b) {
    return $z0 if $a eqz $z0 or $b eqz $z0;
    return $a if $b eqz $z1;
    return $b if $a eqz $z1;
    my $c = $a;
    my $d = $z1;
    repeat {
         my $e = $z0;
         repeat { $c++z; $e++z } until $e eqz $a;
         $d++z;
    } until $d eqz $b;
    $c
}

# division  (really more of a div mod)
sub infix:</z>($a is copy, $b is copy) {
    fail "Divide by zero" if $b eqz $z0;
    return $a if $a eqz $z0 or $b eqz $z1;
    my $c = $z0;
    repeat {
        my $d = $b +z ($z1 ~ $z0);
        $c++z;
        $a++z;
        $a--z while $d--z nez $z0
    } until $a ltz $b;
    $c ~= " remainder $a" if $a nez $z0;
    $c
}

###################### Testing ######################

# helper sub to translate constants into the particular glyphs you used
sub z($a) { $a.trans([<1 0>] => [$z1, $z0]) }

say "Using the glyph '$z1' for 1 and '$z0' for 0\n";

my $fmt = "%-22s = %15s  %s\n";

my $zeck = $z1;

printf( $fmt, "$zeck++z", $zeck++z, '# increment' ) for 1 .. 10;

printf $fmt, "$zeck +z {z('1010')}", $zeck +z= z('1010'), '# addition';

printf $fmt, "$zeck -z {z('100')}", $zeck -z= z('100'), '# subtraction';

printf $fmt, "$zeck ×z {z('100101')}", $zeck ×z= z('100101'), '# multiplication';

printf $fmt, "$zeck /z {z('100')}", $zeck /z= z('100'), '# division';

printf( $fmt, "$zeck--z", $zeck--z, '# decrement' ) for 1 .. 5;

printf $fmt, "$zeck ×z {z('101001')}", $zeck ×z= z('101001'), '# multiplication';

printf $fmt, "$zeck /z {z('100')}", $zeck /z= z('100'), '# division';
#----------------------------------------- 1158 zeckendorf-number-representation
printf "%2d: %8s\n", $_, zeckendorf($_) for 0 .. 20;

multi zeckendorf(0) { '0' }
multi zeckendorf($n is copy) {
    constant FIBS = (1,2, *+* ... *).cache;
    [~] map {
        $n -= $_ if my $digit = $n >= $_;
        +$digit;
    }, reverse FIBS ...^ * > $n;
}
#--------------------------------------------------- 1159 zero-to-the-zero-power
say '    type         n      n**n  exp(n,n)';
say '--------  --------  --------  --------';

for 0, 0.0, FatRat.new(0), 0e0, 0+0i {
    printf "%8s  %8s  %8s  %8s\n", .^name, $_, $_**$_, exp($_,$_);
}
#-------------------------------------------- 1160 zhang-suen-thinning-algorithm
my $source = qq:to/EOD/;
................................
.#########.......########.......
.###...####.....####..####......
.###....###.....###....###......
.###...####.....###.............
.#########......###.............
.###.####.......###....###......
.###..####..###.####..####.###..
.###...####.###..########..###..
................................
EOD

my @lines = ([.ords X+& 1] for $source.split("\n")); # The low bits Just Work.
my \v = +@lines;
my \h = +@lines[0];
my @black = flat @lines.map: *.values;   # Flatten to 1-dimensional.

my \p8 = [-h-1, -h+0, -h+1,         # Flatland distances to 8 neighbors.
           0-1,        0+1,
           h-1,  h+0,  h+1].[1,2,4,7,6,5,3,0];   # (in cycle order)

# Candidates have 8 neighbors and are known black
my @cand = grep { @black[$_] }, do
    for 1..v-2 X 1..h-2 -> (\y,\x) { y*h + x }

repeat while my @goners1 or my @goners2 {
    sub seewhite (\w1,\w2) {
        sub cycles (@neighbors) { [+] @neighbors Z< @neighbors[].rotate }
        sub blacks (@neighbors) { [+] @neighbors }

        my @prior = @cand; @cand = ();

        gather for @prior -> \p {
            my \n = @black[p8 X+ p];
            if cycles(n) == 1 and 2 <= blacks(n) <= 6 and n[w1].any == 0 and n[w2].any == 0
                 { take p }
            else { @cand.push: p }
        }
    }

    @goners1 = seewhite (0,2,4), (2,4,6);
    @black[@goners1] = 0 xx *;
    say "Ping: {[+] @black} remaining after removing ", @goners1;

    @goners2 = seewhite (0,2,6), (0,4,6);
    @black[@goners2] = 0 xx *;
    say "Pong: {[+] @black} remaining after removing ", @goners2;
}

say @black.splice(0,h).join.trans('01' => '.#') while @black;
#----------------------------------------------------------- 1161 zigzag-numbers
sub is-updown (@seq) {
    all (1..^@seq).map: { $_ % 2 ?? (@seq[$_] > @seq[$_-1]) !! (@seq[$_] < @seq[$_-1]) }
}

for (1..5) {
    say "\nPermutations for N = $_:";
    for (1..$_).permutations { .say if .&is-updown }
}

say "\n M  zigzag number\n--  -------------";

sub bt (@seq) { map *.tail, (@seq[0], {[[\+] flat @seq[++$ ], .reverse]}…*) }

printf("%2d  %d\n", ++$, $_) for (flat 1, 0 xx *).&bt[1..30]
