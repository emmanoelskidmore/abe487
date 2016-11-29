#!/usr/bin/env perl6

sub MAIN (Str $F1, Str $F2) {
    my $set1 = $F1.IO.lines.lc.map(*.subst(/<-[\w\s]>/, '', :g)).words.Set;    #lc=lowercase. map= whole file. :g= globally   
    my $set2 = $F2.IO.lines.lc.map(*.subst(/<-[\w\s]>/, '', :g)).words.Set;

   # dd $set1;
   # dd $set2;
    
    my $comparedset= $set1 (&) $set2; 
    my $count= $comparedset.keys.elems; 

    put $count;
    

   
    #for $F1.IO.lines -> $line {
    #    my $lcF1 = $line.lc.subst(/<-[\w\s]>/,'',:g).words;
    #    dd $lcF1;
    #}
    
    
}
