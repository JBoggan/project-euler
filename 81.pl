#!usr/bin/perl
##Test81.pl

use warnings;

my $alpha = times();
my @array;
open FILE, "matrix.txt" or die $!;
my $row = 0;
while(<FILE>){
    chomp;
    my @temp = split ",", $_;
    my $column = 0;
    while($column < 80){
        $array[$row][$column] = $temp[$column];
        $column++;
    }
    
    
    $row++;
}
close FILE;

my @score;
$score[0][0] = 4445;
my $r = 0;
my $c = 0;
while($r < 80){
    $c = 0;
    while($c < 80){
        if($r == 0){
            if($c != 0){
                $score[$r][$c] = $score[$r][$c-1]+$array[$r][$c];
                
            }
        }
        elsif($c == 0){
            $score[$r][$c] = $score[$r-1][$c]+$array[$r][$c];
            
        }
        else{
            my $a = $score[$r][$c-1]+$array[$r][$c];
            my $b = $score[$r-1][$c]+$array[$r][$c];
            if ($a > $b){
                $score[$r][$c] = $b;
                
            }
            else{
                $score[$r][$c] = $a;
                
            }
            
        }
        $c++;
    }
    $r++;
}


open LOG, ">81Output.txt" or die $!;


$r = 0;
$c = 0;
while ($r < 80){
    $c = 0;
    while($c < 80){
        print LOG "$score[$r][$c] ";
        $c++;
    }
    print LOG "\n";
    $r++;
}

my $omega = times();
my $delta = $omega-$alpha;
print "$delta seconds total\n";




