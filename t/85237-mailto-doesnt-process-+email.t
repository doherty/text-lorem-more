use strict;
use warnings;

use Test::More;
use Text::Lorem::More qw/lorem/;

my $count = 2 ** 8;
plan tests => 2*$count;

for (1 .. $count) {
    my $mailto = lorem->mailto;
    unlike $mailto => qr{\Q+email}, "+email got processed";
    like $mailto => qr{mailto:.+\@.+\.\w+}, "Looks like mailto has an email in it";
}
