package Paws::ApplicationAutoScaling::MetricDimension;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Value => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApplicationAutoScaling::MetricDimension

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ApplicationAutoScaling::MetricDimension object:

  $service_obj->Method(Att1 => { Name => $value, ..., Value => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ApplicationAutoScaling::MetricDimension object:

  $result = $service_obj->Method(...);
  $result->Att1->Name

=head1 DESCRIPTION

Describes the dimension of a metric.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Name => Str

  The name of the dimension.


=head2 B<REQUIRED> Value => Str

  The value of the dimension.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ApplicationAutoScaling>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

