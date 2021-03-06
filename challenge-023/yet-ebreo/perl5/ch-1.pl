# Create a script that prints nth order forward difference series. 
# You should be a able to pass the list of numbers and order number as command line parameters. 
# Let me show you with an example.
#    Suppose we have list (X) of numbers: 5, 9, 2, 8, 1, 6 and we would like to 
#    create 1st order forward difference series (Y). So using the formula Y(i) = X(i+1) - X(i), 
#    we get the following numbers: (9-5), (2-9), (8-2), (1-8), (6-1). In short,
#    the final series would be: 4, -7, 6, -7, 5. If you noticed, it has one less number 
#    than the original series. Similary you can carry on 2nd order forward difference series like: 
#    (-7-4), (6+7), (-7-6), (5+7) => -11, 13, -13, 12.

use strict;
use warnings;
use 5.010;

my ($n, @list) = @ARGV;

die "Usage: ch-1.pl <n> <list>\n\tn must be less than the number of elements in list\n\tlist values are space separated\n" if !@ARGV;
die "n($n) must be less than the number(".@list.") of elements in list\n" if $n>= @list;


(@list = map $list[$_]-$list[$_-1],1..$#list) for 1..$n;

say "@list";