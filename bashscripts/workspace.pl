#!/usr/bin/perl
use strict;
use warnings;
use Data::Dumper;

my %args = map{ my ($k, $v) = $_ =~ /^--(.*)=(.*)$/ } @ARGV;

open(PATH, "< $ENV{HOME}/MyConfig/conf/gt");
my $path = <PATH>;
close PATH;
chomp $path;

die "no path is given." unless $path;
die "no keyword is given." unless $args{keyword};

$path =~ s/^~/$ENV{HOME}/;
$path =~ s{/*$}{/};

die "Cannot open the path: $path" unless (-d $path);

my @directories = grep { $_ =~ m{/$} } map { chomp $_; $_ } `\\ls -F $path`;

$args{keyword} = join('.*', split('', $args{keyword}));
my @matches = grep { $_ =~ qr/$args{keyword}/ } @directories;

my $answer = $args{option};
if ($answer) {
  chomp $answer;
  die 'Invalid input, Man!' if ($answer !~ /^\d+$/ or $answer > scalar @matches);
  my $directory = $matches[$answer - 1];
  print "$path$directory";
} else {
  if (scalar @matches > 1) {
    for (my $i = 1; $i <= scalar @matches; $i++) {
      print "$i. $matches[$i - 1]\n";
    }
    print "Please choose the directory by entering the number: ";
  } elsif ( scalar @matches == 1) {
    print "$path$matches[0]";
  } else {
    die 'I found nothing but nothing, Man!';
  }
}
