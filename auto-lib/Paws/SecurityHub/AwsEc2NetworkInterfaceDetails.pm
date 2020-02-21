package Paws::SecurityHub::AwsEc2NetworkInterfaceDetails;
  use Moose;
  has Attachment => (is => 'ro', isa => 'Paws::SecurityHub::AwsEc2NetworkInterfaceAttachment');
  has NetworkInterfaceId => (is => 'ro', isa => 'Str');
  has SecurityGroups => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::AwsEc2NetworkInterfaceSecurityGroup]');
  has SourceDestCheck => (is => 'ro', isa => 'Bool');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::AwsEc2NetworkInterfaceDetails

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SecurityHub::AwsEc2NetworkInterfaceDetails object:

  $service_obj->Method(Att1 => { Attachment => $value, ..., SourceDestCheck => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SecurityHub::AwsEc2NetworkInterfaceDetails object:

  $result = $service_obj->Method(...);
  $result->Att1->Attachment

=head1 DESCRIPTION

Details about the network interface

=head1 ATTRIBUTES


=head2 Attachment => L<Paws::SecurityHub::AwsEc2NetworkInterfaceAttachment>

  The network interface attachment.


=head2 NetworkInterfaceId => Str

  The ID of the network interface.


=head2 SecurityGroups => ArrayRef[L<Paws::SecurityHub::AwsEc2NetworkInterfaceSecurityGroup>]

  Security groups for the network interface.


=head2 SourceDestCheck => Bool

  Indicates whether traffic to or from the instance is validated.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SecurityHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
