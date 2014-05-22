use warnings;
use strict;

chomp(@ARGV);

my @codes = qw(USD EUR CAD CNY JPY);
my @rates = qw(1.0 0.73 1.09 6.24 101.80);

if($#ARGV == -1)
{
  print "\nList of available currency codes:";
  foreach(@codes)
  {
    print "\n$_";
  }

  die("\n");
}

if($#ARGV < 2 || $#ARGV > 2)
{
  die("\nWrong number of arguments. Format: (Amount) (code) (code)");
}

my $amount = $ARGV[0];
my $code1  = $ARGV[1];
my $code2  = $ARGV[2];

my $index1;
my $index2;
my $i = 0;

foreach(@codes)
{
  if($_ eq $code1)
  {
    $index1 = $i;
  }
  elsif($_ eq $code2)
  {
    $index2 = $i;
  }
  $i++;
}

my $conversion1 = $amount * $rates[$index2] / $rates[$index1];
my $conversion2 = $rates[$index2] / $rates[$index1];

printf "\n$amount $codes[$index1] = %.2f $codes[$index2] (Conversion rate: 1 $codes[$index1] = %.2f $codes[$index2])\n",$conversion1,$conversion2;

