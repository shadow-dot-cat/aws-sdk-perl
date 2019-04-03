
package Paws::SSM::DescribePatchBaselinesResult;
  use Moose;
  has BaselineIdentities => (is => 'ro', isa => 'ArrayRef[Paws::SSM::PatchBaselineIdentity]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SSM::DescribePatchBaselinesResult

=head1 ATTRIBUTES


=head2 BaselineIdentities => ArrayRef[L<Paws::SSM::PatchBaselineIdentity>]

An array of PatchBaselineIdentity elements.


=head2 NextToken => Str

The token to use when requesting the next set of items. If there are no
additional items to return, the string is empty.


=head2 _request_id => Str


=cut

1;