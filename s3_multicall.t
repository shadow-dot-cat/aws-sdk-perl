

use strict;
use warnings;

use lib 'moo-test/lib';
use lib 'moo-test/auto-lib';
use lib 'moo-test/t/lib';

no Moo::sification;

use Test::More;
use Paws;
use Test::CustomCredentials;
use JSON::MaybeXS;
use XML::Simple;

die if $INC{'Moose.pm'};

my $aws = Paws->new(config => { caller => 'Test05Caller', credentials => 'Test::CustomCredentials', region => 'dummy' } );

for(my $i=0;$i<=1000;$i++) {
  my $s3 = $aws->service('S3');

  # my $s3_bucket = $s3->CreateBucket(
  #   Bucket => 'test_bucket',
  # );

  my $request = $s3->PutObject(
    Bucket => 'test_bucket',
    Key => 'A/key',
    Body => 'My Value',
  );

  my $md5_r1 = $request->headers->header('Content-MD5');
  ok(defined $md5_r1, "Content-MD5 header is defined $md5_r1");
}



done_testing;
