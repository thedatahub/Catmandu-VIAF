requires 'perl', '5.008005';

on test => sub {
    requires 'Test::More', '0.96';
};

requires 'Catmandu', 0;
requires 'REST::Client', 0;
requires 'LWP::Simple', 0;
requires 'Moo', '>=1.0';
requires 'RDF::Simple::Parser', '>=1.013';