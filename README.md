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

# AUTHORS

Matthias Vandermaesen <matthias.vandermaesen@vlaamsekunstcollectie.be>
Pieter De Praetere <pieter@packed.be>

# COPYRIGHT AND LICENSE

This software is copyright (c) 2017 by PACKED, vzw, Vlaamse Kunstcollectie, vzw.

This is free software; you can redistribute it and/or modify it under the terms of the GNU General Public License, Version 3, June 2007.

# SEE ALSO

[Catmandu](https://metacpan.org/pod/Catmandu)
[Catmandu::Store::VIAF](https://metacpan.org/pod/Catmandu::Store::VIAF)
[Catmandu::Fix::viaf\_search](https://metacpan.org/pod/Catmandu::Fix::viaf_search)
[Catmandu::Fix::viaf\_match](https://metacpan.org/pod/Catmandu::Fix::viaf_match)
