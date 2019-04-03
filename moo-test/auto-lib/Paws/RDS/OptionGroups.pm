
package Paws::RDS::OptionGroups;
  use Moose;
  has Marker => (is => 'ro', isa => 'Str');
  has OptionGroupsList => (is => 'ro', isa => 'ArrayRef[Paws::RDS::OptionGroup]', request_name => 'OptionGroup', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::OptionGroups

=head1 ATTRIBUTES


=head2 Marker => Str

An optional pagination token provided by a previous request. If this
parameter is specified, the response includes only records beyond the
marker, up to the value specified by C<MaxRecords>.


=head2 OptionGroupsList => ArrayRef[L<Paws::RDS::OptionGroup>]

List of option groups.


=head2 _request_id => Str


=cut

