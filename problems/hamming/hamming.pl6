#!/usr/bin/env perl6

sub MAIN (Str $s1!, Str $s2!) {
    my $count1 = $s1.chars;
    my $count2 = $s2.chars;
    my $dcount = abs ($count1 - $count2);

    my @s1 = $s1.comb;
    my @s2 = $s2.comb;

    for 0..* -> $i  {
        last unless @s1[$i] && @s2[$i];
        if @s1[$i] ne @s2[$i] {
            $dcount++;
        }
    }

    put $dcount;


}


#pair and zip 
