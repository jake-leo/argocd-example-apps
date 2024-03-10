use strict;
use warnings;
use Test::More tests => 4;

is(1 + 1, 2, 'One plus one should equal two');

is('hello' . ' ' . 'world', 'hello world', 'String concatenation should work');

my @list = (1, 2, 3);
is(scalar @list, 3, 'List should contain 3 elements');

system("/bin/sh", "-c", "echo hello world > /tmp/hello_from_perl2")
