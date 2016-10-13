#!/usr/bin/env perl6

sub MAIN (Str $file) {
  
  die "Not a file ($file)" unless $file.IO.f;
  
  say $file.IO.lines.reverse.join("\n")
 




#my @lines = reverse <$file>;
#for $line (@lines) {
 # say @lines;
#}
#my $datafile= open $file;
 # for $datafile.lines -> $line {



 #say $line;
 #say $line.flip;
#}

 # my $reverse = $file.reverse;
 # say "$reverse";


#put "OK";
}
