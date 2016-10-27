#!/usr/bin/env perl6

use Bio::SeqIO;
subset pInt of Int where 0.0 < * < 1.0;
sub MAIN (Str $file!, Rat :$threshold=.3) {
   die "Not a file ($file)" unless $file.IO.f;
    #if $threshold < 0 {
     #  not "threshold ($threshold) must be positive\n";
     #  exit 1;
   # }
    my $seqIO = Bio::SeqIO.new(format => 'fasta', file => $file);
    #my $k = 0.3;
    my @bases = <A C G T N>;
    my @basesgc = <C G>;
    #my %count; 
    my %countgc;
    while (my $seq = $seqIO.next-Seq) {
        my $b = $seq.seq.uc.comb.Bag;
        my %count;
        my %total;
        
                
        for @bases -> $base {
            %count{ $base } += $b{ $base };
   
        }
        my $total = %count{@bases}.sum;
   
        my $totalgc = %count{@basesgc}.sum;
        my $gc = $totalgc/$total;
        printf "%.2f %s\n", $gc, $gc > $threshold ?? 'burkholderia' !! 'anthrax';
    #for @bases -> $base {
     #   printf "%3d %s\n", %count{$base}, $base;
   # }
    }
}
