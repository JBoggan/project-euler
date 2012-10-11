#!usr/bin/perl
##188.pl

use warnings;

my $alpha = times();

my $mod = 100000000;

my $number = 1777;
my $power = 0;
my %hash;

until($hash{$number}){
    $hash{$number}++;
    $number = 1777 * $number;
    $number = $number % $mod;
}

my $total = scalar (keys %hash);

my $crap = 1777;
my $duh = ($crap ** $crap) % $mod;


my $omega = times();
my $d = $omega - $alpha;

print "$total in $d seconds but $duh took awhile\n";



