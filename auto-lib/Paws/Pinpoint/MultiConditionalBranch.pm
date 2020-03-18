package Paws::Pinpoint::MultiConditionalBranch;
  use Moose;
  has Condition => (is => 'ro', isa => 'Paws::Pinpoint::SimpleCondition');
  has NextActivity => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::MultiConditionalBranch

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Pinpoint::MultiConditionalBranch object:

  $service_obj->Method(Att1 => { Condition => $value, ..., NextActivity => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Pinpoint::MultiConditionalBranch object:

  $result = $service_obj->Method(...);
  $result->Att1->Condition

=head1 DESCRIPTION

Specifies a condition to evaluate for an activity path in a journey.

=head1 ATTRIBUTES


=head2 Condition => L<Paws::Pinpoint::SimpleCondition>

  The condition to evaluate for the activity path.


=head2 NextActivity => Str

  The unique identifier for the next activity to perform, after
completing the activity for the path.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
