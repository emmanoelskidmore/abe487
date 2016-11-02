#!/usr/bin/env perl6

sub MAIN (Str $s1!, Str $s2!) {
    my $count1 = $s1.chars;
    my $count2 = $s2.chars;
    my $dcount = abs ($count1 - $count2);  #abs function takes absolute value  

    my @s1 = $s1.comb;
    my @s2 = $s2.comb;

    for 0..* -> $i  {                      #i starts at 0 and goes on forever(*)
        last unless @s1[$i] && @s2[$i];    #count will end at shortest string length
        if @s1[$i] ne @s2[$i] {            #ne (not equal)   [i] is the placeholder in the string
            $dcount++;                     #adds 1 to the dcount each time a letter does not match
        }
    }

    put $dcount;


}


#pair and zip 
