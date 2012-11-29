#!/usr/bin/perl

use strict;
use warnings;

use Test::More;

use Data::Validate::URI qw/is_http_uri/;
use Text::Lorem::More qw/lorem/;

for (1 .. 2 ** 8) {
  ok(is_http_uri(lorem->httpurl), 'Got a well-formed URL');
}

done_testing;
