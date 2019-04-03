
package Paws::EC2::RejectVpcEndpointConnectionsResult;
  use Moose;
  has Unsuccessful => (is => 'ro', isa => 'ArrayRef[Paws::EC2::UnsuccessfulItem]', request_name => 'unsuccessful', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::RejectVpcEndpointConnectionsResult

=head1 ATTRIBUTES


=head2 Unsuccessful => ArrayRef[L<Paws::EC2::UnsuccessfulItem>]

Information about the endpoints that were not rejected, if applicable.


=head2 _request_id => Str


=cut

