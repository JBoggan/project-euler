#!usr/bin/perl
##13prep.pl

use warnings;

open FILE, "13.txt" or die $!;

my @a;

while(<FILE>){
    chomp;
    push @a, $_."x";
}
close FILE;

my $screw = join " ", @a;
open LOG, ">13out.txt" or die $!;
print LOG $screw;
close LOG;


#print $s;