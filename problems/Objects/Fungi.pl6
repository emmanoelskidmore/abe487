#!/usr/bin/env perl6

  enum Edible <Edible Poisonous>  

  class Fungus {
     has Str $.Genus is required;
     has Str $.Species is required;
     has Str $.Phylum is required;
     has Str $.Edible is required;
     method Bi_Nom { join ' ', $!Genus, $!Species.lc }
  }

  my Fungus $Death_Cap .=new(Genus => 'Amanita', Species => 'phalloides', Phylum => 'Basidiomycota', Edible => Poisonous);


  my Fungus $Oyster_Mushroom .=new(Genus => 'Pleurotus', Species => 'ostreatus', Phylum => 'Basidiomycota', Edible => Edible); 

  my Fungus $Yeast .=new(Genus => 'Saccharomyces', Species => 'cerevisiae', Phylum => 'Ascomycota', Edible => Edible); 


for $Death_Cap, $Oyster_Mushroom, $Yeast {
  if $Edible = Poisonous {
    printf "Binomial Nomenclature: %s \n\t Phylum: %s \n\t %s and you will die \n", .Bi_Nom, .Phylum, .Edible;
}
}


