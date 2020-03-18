package Paws::Pinpoint::ResultRow;
  use Moose;
  has GroupedBys => (is => 'ro', isa => 'ArrayRef[Paws::Pinpoint::ResultRowValue]', required => 1);
  has Values => (is => 'ro', isa => 'ArrayRef[Paws::Pinpoint::ResultRowValue]', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::ResultRow

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Pinpoint::ResultRow object:

  $service_obj->Method(Att1 => { GroupedBys => $value, ..., Values => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Pinpoint::ResultRow object:

  $result = $service_obj->Method(...);
  $result->Att1->GroupedBys

=head1 DESCRIPTION

Provides the results of a query that retrieved the data for a standard
metric that applies to an application, campaign, or journey.

=head1 ATTRIBUTES


=head2 B<REQUIRED> GroupedBys => ArrayRef[L<Paws::Pinpoint::ResultRowValue>]

  An array of objects that defines the field and field values that were
used to group data in a result set that contains multiple results. This
value is null if the data in a result set isnE<rsquo>t grouped.


=head2 B<REQUIRED> Values => ArrayRef[L<Paws::Pinpoint::ResultRowValue>]

  An array of objects that provides pre-aggregated values for a standard
metric that applies to an application, campaign, or journey.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
