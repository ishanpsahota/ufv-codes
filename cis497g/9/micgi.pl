#!/usr/bin/perl -w
#
#
# Talia Q

use strict;

# Initialize CGI module
use CGI qw(:all);
my $query = new CGI();

my $name = "";
print header;
print <<HTML_START;
<HTML>
<HEAD>
	<TITLE>Talia Q</TITLE>
</HEAD>
<BODY BGCOLOR="White">
<H1>Server Start and Stop Information</H1>
HTML_START
my $data1 = `cat /home/talia/apache2/logs/error_log | grep 'resuming'`;
my $data2 = `cat /home/talia/apache2/logs/error_log | grep 'SIGTERM'`;

print "<H4>Server Starts</H4>";
print "<pre> $data1 </pre> <br>";
print "<H4>Server Stops</H4><BR>";
print "<pre> $data2 </pre> <br>";
print <<HTML_START
</BODY>
</HTML>

HTML_START
