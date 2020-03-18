package Paws::Pinpoint::TemplateVersionsResponse;
  use Moose;
  has Item => (is => 'ro', isa => 'ArrayRef[Paws::Pinpoint::TemplateVersionResponse]', required => 1);
  has Message => (is => 'ro', isa => 'Str');
  has NextToken => (is => 'ro', isa => 'Str');
  has RequestID => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::TemplateVersionsResponse

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Pinpoint::TemplateVersionsResponse object:

  $service_obj->Method(Att1 => { Item => $value, ..., RequestID => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Pinpoint::TemplateVersionsResponse object:

  $result = $service_obj->Method(...);
  $result->Att1->Item

=head1 DESCRIPTION

Provides information about all the versions of a specific message
template.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Item => ArrayRef[L<Paws::Pinpoint::TemplateVersionResponse>]

  An array of responses, one for each version of the message template.


=head2 Message => Str

  The message that's returned from the API for the request to retrieve
information about all the versions of the message template.


=head2 NextToken => Str

  The string to use in a subsequent request to get the next page of
results in a paginated response. This value is null if there are no
additional pages.


=head2 RequestID => Str

  The unique identifier for the request to retrieve information about all
the versions of the message template.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
