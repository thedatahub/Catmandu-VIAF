package Catmandu::Store::VIAF::Bag;

use strict;
use warnings;

use Catmandu::Sane;
use Moo;

use Catmandu::VIAF::API::ID;
use Catmandu::VIAF::API::Extract;

with 'Catmandu::Bag';

sub generator {
    my $self = shift;
}

sub get {
    my ($self, $id) = @_;
    my $sr = Catmandu::VIAF::API::ID->new(
        viafid => $id
    );
    my $e = Catmandu::VIAF::API::Extract->new(
        api_response  => $sr->result,
        lang          => $self->store->lang,
        fallback_lang => $self->store->fallback_lang
    );
    return $e->single();
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