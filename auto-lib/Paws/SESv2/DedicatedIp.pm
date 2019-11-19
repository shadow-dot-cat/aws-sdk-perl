package Paws::SESv2::DedicatedIp;
  use Moose;
  has Ip => (is => 'ro', isa => 'Str', required => 1);
  has PoolName => (is => 'ro', isa => 'Str');
  has WarmupPercentage => (is => 'ro', isa => 'Int', required => 1);
  has WarmupStatus => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::SESv2::DedicatedIp

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SESv2::DedicatedIp object:

  $service_obj->Method(Att1 => { Ip => $value, ..., WarmupStatus => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SESv2::DedicatedIp object:

  $result = $service_obj->Method(...);
  $result->Att1->Ip

=head1 DESCRIPTION

Contains information about a dedicated IP address that is associated
with your Amazon SES API v2 account.

To learn more about requesting dedicated IP addresses, see Requesting
and Relinquishing Dedicated IP Addresses
(https://docs.aws.amazon.com/ses/latest/DeveloperGuide/dedicated-ip-case.html)
in the I<Amazon SES Developer Guide>.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Ip => Str

  An IPv4 address.


=head2 PoolName => Str

  The name of the dedicated IP pool that the IP address is associated
with.


=head2 B<REQUIRED> WarmupPercentage => Int

  Indicates how complete the dedicated IP warm-up process is. When this
value equals 1, the address has completed the warm-up process and is
ready for use.


=head2 B<REQUIRED> WarmupStatus => Str

  The warm-up status of a dedicated IP address. The status can have one
of the following values:

=over

=item *

C<IN_PROGRESS> E<ndash> The IP address isn't ready to use because the
dedicated IP warm-up process is ongoing.

=item *

C<DONE> E<ndash> The dedicated IP warm-up process is complete, and the
IP address is ready to use.

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SESv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
