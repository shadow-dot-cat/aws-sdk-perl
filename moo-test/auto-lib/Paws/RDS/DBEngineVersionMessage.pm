
package Paws::RDS::DBEngineVersionMessage;
  use Moose;
  has DBEngineVersions => (is => 'ro', isa => 'ArrayRef[Paws::RDS::DBEngineVersion]', request_name => 'DBEngineVersion', traits => ['NameInRequest',]);
  has Marker => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::DBEngineVersionMessage

=head1 ATTRIBUTES


=head2 DBEngineVersions => ArrayRef[L<Paws::RDS::DBEngineVersion>]

A list of C<DBEngineVersion> elements.


=head2 Marker => Str

An optional pagination token provided by a previous request. If this
parameter is specified, the response includes only records beyond the
marker, up to the value specified by C<MaxRecords>.


=head2 _request_id => Str


=cut

