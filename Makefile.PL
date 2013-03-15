
use strict;
use warnings;

use 5.010000;

use ExtUtils::MakeMaker 6.30;



my %WriteMakefileArgs = (
  "ABSTRACT" => "Extends accessors to automatically call constructors if needed",
  "AUTHOR" => "Jakob Vo\303\237 <voss\@gbv.de>",
  "BUILD_REQUIRES" => {
    "Moo" => "1.000000",
    "Test::More" => "0.88"
  },
  "CONFIGURE_REQUIRES" => {
    "ExtUtils::MakeMaker" => "6.30"
  },
  "DISTNAME" => "MooX-AutoConstructor",
  "EXE_FILES" => [],
  "LICENSE" => "perl",
  "NAME" => "MooX::AutoConstructor",
  "PREREQ_PM" => {
    "Class::Method::Modifiers" => "1.05",
    "Scalar::Util" => 0
  },
  "VERSION" => "0.1_01",
  "test" => {
    "TESTS" => "t/*.t"
  }
);


unless ( eval { ExtUtils::MakeMaker->VERSION(6.56) } ) {
  my $br = delete $WriteMakefileArgs{BUILD_REQUIRES};
  my $pp = $WriteMakefileArgs{PREREQ_PM};
  for my $mod ( keys %$br ) {
    if ( exists $pp->{$mod} ) {
      $pp->{$mod} = $br->{$mod} if $br->{$mod} > $pp->{$mod};
    }
    else {
      $pp->{$mod} = $br->{$mod};
    }
  }
}

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);



