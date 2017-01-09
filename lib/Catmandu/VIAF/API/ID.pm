package Catmandu::VIAF::API::ID;

use strict;
use warnings;

use Catmandu::Sane;
use Moo;

use REST::Client;
use Catmandu::VIAF::RDF;

has viafid => (is => 'ro', required => 1);

has client => (is => 'lazy');
has result=> (is => 'lazy');

sub _build_client {
    my $self = shift;
    return REST::Client->new(host => 'http://www.viaf.org');
}

sub _build_result {
    my $self = shift;
    my $url = sprintf('/viaf/%s/rdf.xml', $self->viafid);
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
    my $parser = Catmandu::VIAF::RDF->new(item => $response->responseContent());
    return $parser->result;
}

1;
__END__