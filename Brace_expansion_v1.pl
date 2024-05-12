#!/bin/perl -w

use strict;
use feature 'say';

sub Brace_expansion{
	my $str = shift;
	
	if ($str =~ m/\{(?<item>.+)\}/){
		my @items = split(',', $+{item});	

		foreach (@items){
			my $str_ = $str;
			$str_ =~ s/\{.*\}/$_/;
			say $str_;
		}
	}
}

Brace_expansion('Perl {Daily,Weekly,Monthly,Yearly} Challenge');

#Perl Daily Challenge
#Perl Weekly Challenge
#Perl Monthly Challenge
#Perl Yearly Challenge
