package Catmandu::Fix::viaf_search;

use strict;
use warnings;

use Catmandu::Sane;
use Moo;
use Catmandu::Fix::Has;

use Catmandu::Util qw(:is);
use Catmandu::Fix::Datahub::Util qw(declare_source);

has path          => (fix_arg => 1);
has lang          => (fix_opt => 1, default => sub {'nl-NL'});
has fallback_lang => (fix_opt => 1, default => sub {'en-US'});

sub emit {
    my ($self, $fixer) = @_;
    my $perl = '';

    $perl .= 'use Catmandu::VIAF::API;';

    my $name = $fixer->generate_var();
    my $viaf = $fixer->generate_var();

    $perl .= "my ${name};";
    $perl .= declare_source($fixer, $self->path, $name);

    $perl .= "my ${viaf} = Catmandu::VIAF::API->new(term => ${name}, lang => '".$self->lang."');";

    $perl .= $fixer->emit_create_path(
        $fixer->var,
        $fixer->split_path($self->path),
        sub {
            my $root = shift;
            my $code = '';

            $code .= "${root} = ${viaf}->search();";

            return $code;
        }
    );

    return $perl;
}

1;
__END__