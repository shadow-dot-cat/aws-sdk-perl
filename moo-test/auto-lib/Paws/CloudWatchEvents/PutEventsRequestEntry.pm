package Paws::CloudWatchEvents::PutEventsRequestEntry;
  use Moose;
  has Detail => (is => 'ro', isa => 'Str');
  has DetailType => (is => 'ro', isa => 'Str');
  has Resources => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Source => (is => 'ro', isa => 'Str');
  has Time => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchEvents::PutEventsRequestEntry

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudWatchEvents::PutEventsRequestEntry object:

  $service_obj->Method(Att1 => { Detail => $value, ..., Time => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudWatchEvents::PutEventsRequestEntry object:

  $result = $service_obj->Method(...);
  $result->Att1->Detail

=head1 DESCRIPTION

Represents an event to be submitted.

=head1 ATTRIBUTES


=head2 Detail => Str

  A valid JSON string. There is no other schema imposed. The JSON string
may contain fields and nested subobjects.


=head2 DetailType => Str

  Free-form string used to decide what fields to expect in the event
detail.


=head2 Resources => ArrayRef[Str|Undef]

  AWS resources, identified by Amazon Resource Name (ARN), which the
event primarily concerns. Any number, including zero, may be present.


=head2 Source => Str

  The source of the event. This field is required.


=head2 Time => Str

  The time stamp of the event, per RFC3339
(https://www.rfc-editor.org/rfc/rfc3339.txt). If no time stamp is
provided, the time stamp of the PutEvents call is used.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudWatchEvents>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

