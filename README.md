Derby
=====

__Note__: this project is a work in progress attempting to track ongoing work on
the [Fedora Commons](http://fedorarepository.org/) API specification.

![Derby Hat](/logo/derby.png)

Derby is an LDP Server with Fedora support.

Implementation Status
---------------------

The base LDP implementation is provided by
[`RDF::LDP`](https://github.com/ruby-rdf/rdf-ldp). `ldp:RDFSource` support is
in-memory only; `ldp:NonRDFSource`s are stored on disk at `./.storage` and are
not currently cleaned up on server shutdown.

Further development depends on progress specifying a Fedora Commons Repository
API. Known API issues & questions are tracked with the
[fcr api](https://github.com/fcrepo4-labs/derby/issues?q=is%3Aissue+is%3Aopen+label%3A%22fcr+api%22)
tag.

Installation
------------

Install the gem with `gem install derby` or add `gem 'derby'` to your Gemfile.

To start the server do: `derby-ldp`.

Development
-----------

To start the server in development, do:

```console
$ bundle
$ bundle exec rackup
```




