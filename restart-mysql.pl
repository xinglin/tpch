#!/usr/bin/perl -w

sub myexec {
	my ($cmd) = @_;
	print $cmd . "\n";
	system($cmd);
}

myexec("service mysql stop");
myexec("sync");
myexec("echo 3 > /proc/sys/vm/drop_caches");
myexec("service mysql start");
