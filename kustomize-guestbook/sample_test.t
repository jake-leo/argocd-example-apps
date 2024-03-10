use strict;
use warnings;
use Test::More tests => 3; # Updated number of tests
use IO::Socket::INET;

# Existing tests
is(1 + 1, 2, 'One plus one should equal two');
is('hello' . ' ' . 'world', 'hello world', 'String concatenation should work');

my @list = (1, 2, 3);
is(scalar @list, 3, 'List should contain 3 elements');

# New TCP request test
my $socket = IO::Socket::INET->new(
    PeerAddr => '8.8.8.8',
    PeerPort => '53', # Using DNS port 53 as an example
    Proto => 'tcp',
    Timeout => 10, # 10-second timeout for the connection
) or diag("Cannot connect to 8.8.8.8:53");

if ($socket) {
    # Successfully connected
    is(1, 1, 'Successfully made TCP connection to 8.8.8.8:53');
    $socket->close();
} else {
    # Failed to connect, test will count as failed
    is(1, 0, 'Failed to make TCP connection to 8.8.8.8:53');
}
