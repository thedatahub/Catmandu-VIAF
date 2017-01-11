# NAME

<div>
    <a href="https://travis-ci.org/thedatahub/Catmandu-VIAF"><img src="https://travis-ci.org/thedatahub/Catmandu-VIAF.svg?branch=master"></a>
</div>

Catmandu::VIAF - Retrieve items from the VIAF authority file

# SYNOPSIS

    # From the command line
    $ catmandu export VIAF --id 102333412 to YAML
    ---
    dcterms:identifier: '102333412'
    guid: http://viaf.org/viaf/102333412
    schema:birthDate: 1775-12-16
    schema:deathDate: 1817-07-18
    schema:description: English novelist
    skos:prefLabel: Jane Austen
    ...

    # From a Catmandu Fix
    lookup_in_store(authortName, VIAF, lang:'nl-NL', fallback_lang:'en-US')

    # Perform a direct match between a name and a mainHeadingEl from VIAF
    viaf_match(authorName, -lang:'nl-NL', -fallback_lang:'en-US')

    # Perform a search for a name in VIAF
    viaf_search(authorName, -lang:'nl-NL', -fallback_lang:'en-US')

# MODULES

- [Catmandu::Store::VIAF](https://metacpan.org/pod/Catmandu::Store::VIAF)
- [Catmandu::Fix::viaf\_match](https://metacpan.org/pod/Catmandu::Fix::viaf_match)
- [Catmandu::Fix::viaf\_search](https://metacpan.org/pod/Catmandu::Fix::viaf_search)
- [Catmandu::VIAF::API](https://metacpan.org/pod/Catmandu::VIAF::API)

# AUTHOR

Pieter De Praetere &lt;pieter at packed.be >

# COPYRIGHT

Copyright 2017- PACKED vzw

# LICENSE

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

# SEE ALSO

[Catmandu](https://metacpan.org/pod/Catmandu)
[Catmandu::Store::VIAF](https://metacpan.org/pod/Catmandu::Store::VIAF)
[Catmandu::Fix::viaf\_search](https://metacpan.org/pod/Catmandu::Fix::viaf_search)
[Catmandu::Fix::viaf\_match](https://metacpan.org/pod/Catmandu::Fix::viaf_match)
