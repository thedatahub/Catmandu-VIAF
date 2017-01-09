package Catmandu::VIAF::RDF;

use strict;
use warnings;

use Moo;
use Catmandu::Sane;

use RDF::Simple::Parser;

has item => (is => 'ro', required => 1);

has result => (is => 'lazy');
has parser => (is => 'lazy');

sub _build_parser {
    my $self = shift;
    return RDF::Simple::Parser->new();
}

sub _build_result {
    my $self = shift;
    return $self->parser->parse_rdf($self->item);
}

1;
__END__