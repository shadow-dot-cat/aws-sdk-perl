package Paws::Pinpoint::TemplateVersionResponse;
  use Moose;
  has CreationDate => (is => 'ro', isa => 'Str', required => 1);
  has DefaultSubstitutions => (is => 'ro', isa => 'Str');
  has LastModifiedDate => (is => 'ro', isa => 'Str', required => 1);
  has TemplateDescription => (is => 'ro', isa => 'Str');
  has TemplateName => (is => 'ro', isa => 'Str', required => 1);
  has TemplateType => (is => 'ro', isa => 'Str', required => 1);
  has Version => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::TemplateVersionResponse

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Pinpoint::TemplateVersionResponse object:

  $service_obj->Method(Att1 => { CreationDate => $value, ..., Version => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Pinpoint::TemplateVersionResponse object:

  $result = $service_obj->Method(...);
  $result->Att1->CreationDate

=head1 DESCRIPTION

Provides information about a specific version of a message template.

=head1 ATTRIBUTES


=head2 B<REQUIRED> CreationDate => Str

  The date, in ISO 8601 format, when the version of the message template
was created.


=head2 DefaultSubstitutions => Str

  A JSON object that specifies the default values that are used for
message variables in the version of the message template. This object
is a set of key-value pairs. Each key defines a message variable in the
template. The corresponding value defines the default value for that
variable.


=head2 B<REQUIRED> LastModifiedDate => Str

  The date, in ISO 8601 format, when the version of the message template
was last modified.


=head2 TemplateDescription => Str

  The custom description of the version of the message template.


=head2 B<REQUIRED> TemplateName => Str

  The name of the message template.


=head2 B<REQUIRED> TemplateType => Str

  The type of channel that the message template is designed for. Possible
values are: EMAIL, PUSH, SMS, and VOICE.


=head2 Version => Str

  The unique identifier for the version of the message template. This
value is an integer that Amazon Pinpoint automatically increments and
assigns to each new version of a template.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
