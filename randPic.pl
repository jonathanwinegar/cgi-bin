#!/usr/bin/perl
use warnings;
use strict;
#A Perl script for editing an HTML file to change the image to a random image.
#This script will be in the 'cgi-bin' directory on a webserver.
#The file being edited "test.html" is up one directory from the cgi-bin.


my @fileBefore;
my @fileAfter;
my $fileLocation = "../test.html"; #
my $imageRand = "1.jpg";


#open file for reading
open(INPUTFILE, $fileLocation) or die "cannot open inputfile";

#store file contents in an array
@fileBefore = <INPUTFILE>;
close INPUTFILE or die "cannot close inputfile"; #close inputfile, finished using it.

#print to console for verification of file contents
#print @fileBefore;

#open the directory above cgi-bin to check for images to use for random choosing.


#loop to parse each line of file to find desired HTML random picture line.
foreach (@fileBefore) {
#print $_; #print current working value $_ to console for verification of data.

#regular expression to find the line that I will add a random image to.
# string to match "<!--randMarker"
if(tr/<!--randMarker(.*)">/<!--randMarker\--><a href = "$imageRand">/){
print "matched the randMarker\n";


}


}
