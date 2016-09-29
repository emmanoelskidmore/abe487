#!/usr/bin/env perl6

sub MAIN (Str $name) {
    my $count = chars($name);
    say "Hello, $name, your name has $count characters.";
}
