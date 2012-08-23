#!usr/bin/perl
##Square

use warnings;

my $i = 1;
my $j = 2;
my %hash;

while($j < 100){
    $i = 1;
    
    while($i < $j){
        my $sum = $i**2 + $j**2;
      #  print "$sum\n";
        my $nums = "$i $j";
        $hash{$sum}{$nums}++;
    $i++;
    }
    $j++;
}

my $count = 0;

for $k (keys %hash){
    if(scalar(keys %{$hash{$k}}) > 1){
        my $t = scalar(keys %{$hash{$k}});
        $count += $t;
       # print "$t $k\n";
    }
}

print "$count\n";

my $p = 1;

my $total = 0;

while ($p < 100){
    $total += $p**2;
    $p++;
}

print "$total\n";

