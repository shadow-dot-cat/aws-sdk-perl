package Paws::Pinpoint::WaitTime;
  use Moose;
  has WaitFor => (is => 'ro', isa => 'Str');
  has WaitUntil => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::WaitTime

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Pinpoint::WaitTime object:

  $service_obj->Method(Att1 => { WaitFor => $value, ..., WaitUntil => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Pinpoint::WaitTime object:

  $result = $service_obj->Method(...);
  $result->Att1->WaitFor

=head1 DESCRIPTION

Specifies a duration or a date and time that indicates when Amazon
Pinpoint determines whether an activity's conditions have been met or
an activity moves participants to the next activity in a journey.

=head1 ATTRIBUTES


=head2 WaitFor => Str

  The amount of time to wait, as a duration in ISO 8601 format, before
determining whether the activity's conditions have been met or moving
participants to the next activity in the journey.


=head2 WaitUntil => Str

  The date and time, in ISO 8601 format, when Amazon Pinpoint determines
whether the activity's conditions have been met or the activity moves
participants to the next activity in the journey.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
