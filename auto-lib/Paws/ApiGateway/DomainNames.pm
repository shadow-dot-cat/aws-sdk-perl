
package Paws::ApiGateway::DomainNames;
  use Moose;
  has Items => (is => 'ro', isa => 'ArrayRef[Paws::ApiGateway::DomainName]', traits => ['NameInRequest'], request_name => 'items');
  has Position => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'position');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::DomainNames

=head1 ATTRIBUTES


=head2 Items => ArrayRef[L<Paws::ApiGateway::DomainName>]

The current page of elements from this collection.


=head2 Position => Str




=head2 _request_id => Str


=cut

