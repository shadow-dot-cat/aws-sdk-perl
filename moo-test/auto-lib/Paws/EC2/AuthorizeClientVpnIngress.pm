
package Paws::EC2::AuthorizeClientVpnIngress;
  use Moose;
  has AccessGroupId => (is => 'ro', isa => 'Str');
  has AuthorizeAllGroups => (is => 'ro', isa => 'Bool');
  has ClientVpnEndpointId => (is => 'ro', isa => 'Str', required => 1);
  has Description => (is => 'ro', isa => 'Str');
  has DryRun => (is => 'ro', isa => 'Bool');
  has TargetNetworkCidr => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AuthorizeClientVpnIngress');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::AuthorizeClientVpnIngressResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::AuthorizeClientVpnIngress - Arguments for method AuthorizeClientVpnIngress on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AuthorizeClientVpnIngress on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method AuthorizeClientVpnIngress.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AuthorizeClientVpnIngress.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $AuthorizeClientVpnIngressResult = $ec2->AuthorizeClientVpnIngress(
      ClientVpnEndpointId => 'MyString',
      TargetNetworkCidr   => 'MyString',
      AccessGroupId       => 'MyString',    # OPTIONAL
      AuthorizeAllGroups  => 1,             # OPTIONAL
      Description         => 'MyString',    # OPTIONAL
      DryRun              => 1,             # OPTIONAL
    );

    # Results:
    my $Status = $AuthorizeClientVpnIngressResult->Status;

    # Returns a L<Paws::EC2::AuthorizeClientVpnIngressResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/AuthorizeClientVpnIngress>

=head1 ATTRIBUTES


=head2 AccessGroupId => Str

The ID of the Active Directory group to grant access.



=head2 AuthorizeAllGroups => Bool

Indicates whether to grant access to all clients. Use C<true> to grant
all clients who successfully establish a VPN connection access to the
network.



=head2 B<REQUIRED> ClientVpnEndpointId => Str

The ID of the Client VPN endpoint.



=head2 Description => Str

A brief description of the authorization rule.



=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 B<REQUIRED> TargetNetworkCidr => Str

The IPv4 address range, in CIDR notation, of the network for which
access is being authorized.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AuthorizeClientVpnIngress in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

