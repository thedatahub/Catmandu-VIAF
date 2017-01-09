package Catmandu::VIAF::Parse;

use strict;
use warnings;

use Moo;
use Catmandu::Sane;

use JSON;

has items => (is => 'ro', required => 1);
has lang  => (is => 'ro', default => 'nl-NL');

has results => (is => 'lazy');

sub _build_results {
    my $self = shift;
}

sub parse {
    my ($self, $item) = @_;
}

1;
__END__