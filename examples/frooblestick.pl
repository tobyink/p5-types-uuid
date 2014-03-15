use 5.010;
use strict;
use warnings;

{
	package FroobleStick;
	
	use Moo;
	use Types::UUID;
	
	has identifier => (
		is      => 'lazy',
		isa     => Uuid,
		coerce  => Uuid->coercion,
		builder => sub { undef },
	);
}

my $stick = FroobleStick->new;
say $stick->identifier;
