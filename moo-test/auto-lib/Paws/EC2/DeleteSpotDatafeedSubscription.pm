
package Paws::EC2::DeleteSpotDatafeedSubscription;
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'dryRun' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteSpotDatafeedSubscription');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DeleteSpotDatafeedSubscription - Arguments for method DeleteSpotDatafeedSubscription on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteSpotDatafeedSubscription on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method DeleteSpotDatafeedSubscription.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteSpotDatafeedSubscription.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    # To cancel a Spot Instance data feed subscription
    # This example deletes a Spot data feed subscription for the account.
    $ec2->DeleteSpotDatafeedSubscription();


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/DeleteSpotDatafeedSubscription>

=head1 ATTRIBUTES


=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteSpotDatafeedSubscription in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

