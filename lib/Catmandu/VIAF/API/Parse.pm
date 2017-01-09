package Catmandu::VIAF::API::Parse;

use strict;
use warnings;

use Moo;
use Catmandu::Sane;

use JSON;
use XML::Struct qw(readXML);

has items => (is => 'ro', required => 1);
has lang  => (is => 'ro', default => 'nl-NL');

sub json {
    my ($self) = @_;
}

sub xml {
    my ($self) = @_;
    my $tree = readXML($self->items, simple => 1);
    return $tree;
}

1;
__END__