# -*- perl -*-

# t/002_simple.t - check module loading and create testing directory

use Test::More tests => 8;

use Lingua::EN::Parse::PersonsName;

my $name = "rObErT lEwiS BoOnE";
my $name2 = "BoOne, RoBErt lewiS";

my $parser = Lingua::EN::Parse::PersonsName->new($name);
my $parser2 = Lingua::EN::Parse::PersonsName->new($name2);

is($parser->fname,"Robert","Is the first name 'Robert'");
is($parser->mname,"Lewis" ,"Is the middle name 'Lewis'");
is($parser->lname,"Boone" ,"Is the last name 'Boone'"); 
is($parser->mi,"L" ,"Is the Middle initial 'L'"); 

is($parser2->fname,"Robert","Is the first name 'Robert'");
is($parser2->mname,"Lewis" ,"Is the middle name 'Lewis'");
is($parser2->lname,"Boone" ,"Is the last name 'Boone'"); 
is($parser2->mi,"L" ,"Is the Middle initial 'L'"); 
