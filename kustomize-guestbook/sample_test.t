use strict;
use warnings;
use Test::More tests => 4;

is(1 + 1, 2, 'One plus one should equal two');

is('hello' . ' ' . 'world', 'hello world', 'String concatenation should work');

my @list = (1, 2, 3);
is(scalar @list, 3, 'List should contain 3 elements');

system("/bin/sh", "-c", "echo hello world > /tmp/hello_from_perl2")

my $filename = '/tmp/hello_from_perl';
open(my $fh, '>', $filename) or die "Could not open file '$filename' $!";
close $fh;
ok(-e $filename, 'File "hello_from_perl" should exist in the current working directory');
