# -*- perl -*-

# t/002_simple.t - check module loading and create testing directory

use Test::More tests => 2;

use Lingua::EN::Parse::PersonsName;

my $name = "Robert Lewis Boone";
my $name2 = "Boone, Robert Lewis";

my $parser = Lingua::EN::Parse::PersonsName->new($name);
my $parser2 = Lingua::EN::Parse::PersonsName->new($name2);

is($parser->as_string,"Robert Lewis Boone","Test as_string with simple name");
is($parser2->as_string,"Robert Lewis Boone","Test as_string with last name first.");
