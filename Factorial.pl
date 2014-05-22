use warnings;
use strict;

#Takes in number and computes factorial
chomp(@ARGV);

if($ARGV[0] <= 0 || !($ARGV[0] =~ /^\d+$/))
{
  die("\nInvalid argument.");
}

my $i = $ARGV[0];
my $j = 1;


while($i > 0)
{
  $j *= $i;
  $i -= 1;
}

print "\n$ARGV[0]! = $j\n";
