
package Paws::CloudHSMv2::CreateHsm;
  use Moose;
  has AvailabilityZone => (is => 'ro', isa => 'Str', required => 1);
  has ClusterId => (is => 'ro', isa => 'Str', required => 1);
  has IpAddress => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateHsm');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudHSMv2::CreateHsmResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudHSMv2::CreateHsm - Arguments for method CreateHsm on Paws::CloudHSMv2

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateHsm on the 
AWS CloudHSM V2 service. Use the attributes of this class
as arguments to method CreateHsm.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateHsm.

As an example:

  $service_obj->CreateHsm(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> AvailabilityZone => Str

The Availability Zone where you are creating the HSM. To find the
cluster's Availability Zones, use DescribeClusters.



=head2 B<REQUIRED> ClusterId => Str

The identifier (ID) of the HSM's cluster. To find the cluster ID, use
DescribeClusters.



=head2 IpAddress => Str

The HSM's IP address. If you specify an IP address, use an available
address from the subnet that maps to the Availability Zone where you
are creating the HSM. If you don't specify an IP address, one is chosen
for you from that subnet.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateHsm in L<Paws::CloudHSMv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

