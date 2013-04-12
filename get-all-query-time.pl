#!/usr/bin/perl -w
use strict;
use warnings;
#
# Execute all random queries, except 18.sql
#

my $output = "results/query-time.data";

for (my $i = 1; $i <= 22; $i++){

	# skip query 18 because it takes long time
	next if $i == 18;

	print "query $i\n";
	system("./restart-mysql.pl");
	system("echo query: $i >> $output");
	system("./get-query-time.pl random/$i.sql >> $output");
}
