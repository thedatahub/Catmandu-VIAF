package Catmandu::Store::VIAF::Bag;

use strict;
use warnings;

use Catmandu::Sane;
use Moo;

use Catmandu::VIAF::API::ID;

with 'Catmandu::Bag';

sub generator {
    my $self = shift;
}

sub get {
    my ($self, $id) = @_;
    my $sr = Catmandu::VIAF::API::ID->new(
        viafid => $id
    );
    return $sr->result;
}

sub add {
    my ($self, $data) = @_;
    Catmandu::NotImplemented->throw(
        message => 'Adding item to store not supported.'
    );
}

sub update {
    my ($self, $id, $data) = @_;
    Catmandu::NotImplemented->throw(
        message => 'Updating item in store not supported.'
    );
}

sub delete {
    my ($self, $id) = @_;
    Catmandu::NotImplemented->throw(
        message => 'Deleting item from store not supported.'
    );
}

sub delete_all {
    my $self = shift;
    Catmandu::NotImplemented->throw(
        message => 'Deleting items from store not supported.'
    );
}

1;
__END__