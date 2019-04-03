
package Paws::CloudDirectory::DetachFromIndexResponse;
  use Moose;
  has DetachedObjectIdentifier => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudDirectory::DetachFromIndexResponse

=head1 ATTRIBUTES


=head2 DetachedObjectIdentifier => Str

The C<ObjectIdentifier> of the object that was detached from the index.


=head2 _request_id => Str


=cut

