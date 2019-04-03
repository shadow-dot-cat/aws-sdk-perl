
package Paws::Neptune::DBSubnetGroupMessage;
  use Moose;
  has DBSubnetGroups => (is => 'ro', isa => 'ArrayRef[Paws::Neptune::DBSubnetGroup]', request_name => 'DBSubnetGroup', traits => ['NameInRequest',]);
  has Marker => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Neptune::DBSubnetGroupMessage

=head1 ATTRIBUTES


=head2 DBSubnetGroups => ArrayRef[L<Paws::Neptune::DBSubnetGroup>]

A list of DBSubnetGroup instances.


=head2 Marker => Str

An optional pagination token provided by a previous request. If this
parameter is specified, the response includes only records beyond the
marker, up to the value specified by C<MaxRecords>.


=head2 _request_id => Str


=cut

