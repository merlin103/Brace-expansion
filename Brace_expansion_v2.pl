#!/bin/perl -w

use strict;
use feature 'say';

sub Brace_expansion{
	my $str = shift;
	
	if ($str =~ m/\A(.+)\{(.+)\}(.+)\Z/){
		foreach (split(',', $2)){
			say($1,$_,$3);
		}
	}
}

Brace_expansion('Perl {Daily,Weekly,Monthly,Yearly} Challenge');

#Perl Daily Challenge
#Perl Weekly Challenge
#Perl Monthly Challenge
#Perl Yearly Challenge
