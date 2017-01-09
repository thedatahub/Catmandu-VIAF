package Catmandu::VIAF::API::Query;

use strict;
use warnings;

use Catmandu::Sane;
use Moo;

use REST::Client;
use JSON;

has name => (is => 'ro', required => 1);
has lang => (is => 'ro', default => 'nl-NL');

has results => (is => 'lazy');
has client  => (is => 'lazy');

sub _build_client {
    my $self = shift;
    return REST::Client->new(host => 'http://www.viaf.org');
}


sub _build_results {
    my $self = shift;
    my $query = sprintf('local.mainHeadingEl = "%s" and local.personalNames = "%s"', $self->name, $self->name);
    my $url = sprintf('/viaf/search?query=%s&httpAccept=application/json', $query);
    my $response = $self->client->GET($url);

    if ($response->responseCode() != 200) {
        Catmandu::HTTPError->throw({
                code             => $response->code,
                message          => $response->status_line,
                url              => $response->request->uri,
                method           => $response->request->method,
                request_headers  => [],
                request_body     => $response->request->decoded_content,
                response_headers => [],
                response_body    => $response->decoded_content,
            });
        return [];
    }
}

1;
__END__