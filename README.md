**Renamed to [Class::Accessor::Coerce](https://github.com/nichtich/Class-Accessor-Coerce)**

----

This Perl module extends class accessors to automatically call constructors, if
needed. Although designed for use with Perl module Moo, and defined in the MooX
namespace, this module does not require Moo. One can probably use it with
custom classes, not build with Moo, Moose, or Mouse, as well.

As long as the module has not been published at CPAN, one can install it with
cpanminus >= 1.6 as following:

    cpanm git://github.com/nichtich/MooX-AutoConstructor.git

Or just download the repository (e.g. by cloning) and call

    make install

