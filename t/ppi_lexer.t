#!/usr/bin/perl

# Unit testing for PPI, generated by Test::Inline

use strict;
use File::Spec::Functions ':ALL';
BEGIN {
	$|  = 1;
	$^W = 1;
	$PPI::XS_DISABLE = 1;
	$PPI::XS_DISABLE = 1; # Prevent warning
}
use PPI;

# Execute the tests
use Test::More tests => 7;

# =begin testing _lex_document 3
{
# Validate the creation of a null statement
SCOPE: {
	my $token = new_ok( 'PPI::Token::Structure' => [ ')'    ] );
	my $brace = new_ok( 'PPI::Statement::UnmatchedBrace' => [ $token ] );
	is( $brace->content, ')', '->content ok' );
}
}



# =begin testing _lex_structure 4
{
# Validate the creation of a null statement
SCOPE: {
	my $token = new_ok( 'PPI::Token::Structure' => [ ';'    ] );
	my $null  = new_ok( 'PPI::Statement::Null'  => [ $token ] );
	is( $null->content, ';', '->content ok' );
}

# Validate the creation of an empty statement
new_ok( 'PPI::Statement' => [ ] );
}


1;
