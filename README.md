# NAME

<div>
    <a href="https://travis-ci.org/thedatahub/Catmandu-VIAF"><img src="https://travis-ci.org/thedatahub/Catmandu-VIAF.svg?branch=master"></a>
</div>

Catmandu::VIAF - Retrieve items from VIAF

# SYNOPSIS

This module contains a [store](https://metacpan.org/pod/Catmandu::Store::VIAF) to lookup a _viaf\_id_ in [VIAF](https://www.viaf.org), 
a [fix](https://metacpan.org/pod/Catmandu::Fix::viaf_match) to match a name to a _mainHeadingEl_ and a
[fix](https://metacpan.org/pod/Catmandu::Fix::viaf_search) to search for a name in VIAF.

    lookup_in_store(authortName, VIAF, lang:'nl-NL', fallback_lang:'en-US')

    viaf_match(authorName, -lang:'nl-NL', -fallback_lang:'en-US')

    viaf_search(authorName, -lang:'nl-NL', -fallback_lang:'en-US')

# DESCRIPTION

## [Catmandu::Store::VIAF](https://metacpan.org/pod/Catmandu::Store::VIAF)

    lookup_in_store(
      authorName,
      AAT,
      lang: 'nl-NL',
      fallback_lang: 'en-US'
    )

The `lang` parameter is optional and defaults to _nl-NL_. It sets
the language of the returned _prefLabel_. If no _prefLabel_ for the
_viaf\_id_ in provided _lang_ exists, the _prefLabel_ for the
_fallback\_lang_ is used.

The store takes the `dc:identifier` of a _Person_ from VIAF and returns the following data:

    {
      'dcterms:identifier' => 'The identifier',
      'guid'               => 'The VIAF URL',
      'schema:birthDate'   => 'Birth date, if provided',
      'schema:deathDate'   => 'Death date, if provided',
      'schema:description' => 'Description, if provided',
      'skos:prefLabel'     => 'prefLabel, in lang or fallback_lang'
    }

## [Catmandu::Fix::viaf\_match](https://metacpan.org/pod/Catmandu::Fix::viaf_match)

    viaf_match(
      path,
      -lang: 'nl-NL',
      -fallback_lang: 'nl-NL'
    )

A fix that performs a match between a name and a _mainHeadingEl_ of VIAF _Person_.

## [Catmandu::Fix::viaf\_search](https://metacpan.org/pod/Catmandu::Fix::viaf_search)

    viaf_search(
      path,
      -lang: 'nl-NL',
      -fallback_lang: 'nl-NL'
    )

A fix that performs a search for a name in VIAF.

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
