#!/usr/bin/env perl6

sub MAIN (Str $input) {
 die "Not a file ($input)" unless $input.IO.f; 
 for $input.IO.lines.words.elems -> $words {
     
     my $open = open $input;
     my @lines = lines $open;
     my $lines = @lines.elems;
     my $chars = slurp $input; 
     my $charsf = $chars.chars;
 print "lines ($lines) words ($words) chars ($charsf)";
}}
