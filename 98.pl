#!usr/bin/perl
##AnagramSquare.pl

use warnings;


##yes this is silly; only requires log_2 26 copy pastes
my %primes;
$primes{"A"} = 2;
$primes{"B"} = 3;
$primes{"C"} = 5;
$primes{"D"} = 7;
$primes{"E"} = 11;
$primes{"F"} = 13;
$primes{"G"} = 17;
$primes{"H"} = 19;
$primes{"I"} = 23;
$primes{"J"} = 29;
$primes{"K"} = 31;
$primes{"L"} = 37;
$primes{"M"} = 41;
$primes{"N"} = 43;
$primes{"O"} = 47;
$primes{"P"} = 53;
$primes{"Q"} = 59;
$primes{"R"} = 61;
$primes{"S"} = 67;
$primes{"T"} = 71;
$primes{"U"} = 73;
$primes{"V"} = 79;
$primes{"W"} = 83;
$primes{"X"} = 89;
$primes{"Y"} = 97;
$primes{"Z"} = 101;

my %anagramGroups;
my %anagramKeys;


my $alpha = times();
my %words;
my @array; 

open FILE, "words.txt" or die $!;
while(<FILE>){
	chomp;
	my $line = $_;
	@array = split ",", $line;
	
}
close FILE;

my $maxnum = 0;

my @cleanArray;
for $k (@array){
	$k =~ s/"//g;
	push @cleanArray, $k;
	
}



my %squares;



my $i = 1;
while ($i < 100000){
	my $s = $i*$i;
	my $long = length($s);
	$squares{$long}{$s}++;
	$i++;
}



##find all the anagrams

for $k (@cleanArray){
	my $score = 1;
	my @temp = split "", $k;
	for $t (@temp){
		$score *= $primes{$t};
	}
	#print "$k $score\n";
	
	$anagramGroups{$score}{$k}++;
	$anagramKeys{$score}++;
}

my @anagram;

for $group (keys %anagramKeys){
	
	
	
	if($anagramKeys{$group} > 1){
		my $output = "";
	for $k (keys %{$anagramGroups{$group}}){
		$output = $output."$k ";
	}
	push @anagram, $output;
	
}
}

##we know we only have pairs, so let's be dumb
for $k (@anagram){
#	print "$k\n";
	my @a = split " ", $k;
	my $first = $a[0];
	my $second  = $a[1];
	my @firstArray = split "", $first;
	my @secondArray = split "", $second;
	
	my $length = length($first);
	my @sq = keys %{$squares{$length}};
	my %num2letter;
	my %letter2num;
	
LOOP:	for $s (@sq){
		my @sqArray = split "", $s;
		my $j = 0;
		
		my %usedNum;
		my %usedLet;
		
		while($j < $length){
			
		#	if($letter2num{$firstArray[$j]}){
		##	if($num2letter{$letter2num{$firstArray[$j]}} ne $firstArray[$j]){
		#		next LOOP;
		#	}
		#	}
			$usedNum{$sqArray[$j]}++;
			$usedLet{$firstArray[$j]}++;
			$letter2num{$firstArray[$j]} = $sqArray[$j];
			$num2letter{$sqArray[$j]} = $firstArray[$j];
			$j++;
			
		}
		my @newSquare;
		my $x = 0;
		while ($x < $length){
			$newSquare[$x] = $letter2num{$secondArray[$x]};
			$x++;
		}
		my $maybeSquare = join "", @newSquare;
		if($squares{$length}{$maybeSquare}){
			if($s != $maybeSquare){
				if ((scalar (keys %usedNum)) == (scalar (keys %usedLet))){
				
			print "$first $s $second $maybeSquare\n";}
		}
		}		
	}
}





my $omega = times();
my $delta = $omega-$alpha;

print "Time taken is $delta seconds\n";

