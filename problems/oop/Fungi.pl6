#!/usr/bin/env perl6

enum Eat <Edible Poisonous>;

class Fungus {
     has Str $.Genus is required;
     has Str $.Species is required;
     has Str $.Phylum is required;
     has Eat $.eat is required;
     method Bi_Nom { join ' ', $!Genus, $!Species.lc }
}

my Fungus $Death_Cap .=new(Genus => 'Amanita', Species => 'phalloides', Phylum => 'Basidiomycota', eat => Poisonous);


my Fungus $Oyster_Mushroom .=new(Genus => 'Pleurotus', Species => 'ostreatus', Phylum => 'Basidiomycota', eat => Edible); 

my Fungus $Yeast .=new(Genus => 'Saccharomyces', Species => 'cerevisiae', Phylum => 'Ascomycota', eat => Edible); 


for $Death_Cap, $Oyster_Mushroom, $Yeast {

    printf "Binomial Nomenclature: %s \n\t Phylum: %s \n\t %s \n", .Bi_Nom, .Phylum, .eat eq Poisonous ?? 'Poisonous and you will die' !! 'Edible'

}


