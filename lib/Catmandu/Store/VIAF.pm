package Catmandu::Store::VIAF;

use Catmandu::Sane;
use Moo;

use Catmandu::Store::VIAF::Bag;

with 'Catmandu::Store';

has lang          => (is => 'ro', default => 'nl-NL');
has fallback_lang => (is => 'ro', default => 'en-US');

1;
__END__