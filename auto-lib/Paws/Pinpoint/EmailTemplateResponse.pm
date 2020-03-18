package Paws::Pinpoint::EmailTemplateResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str');
  has CreationDate => (is => 'ro', isa => 'Str', required => 1);
  has DefaultSubstitutions => (is => 'ro', isa => 'Str');
  has HtmlPart => (is => 'ro', isa => 'Str');
  has LastModifiedDate => (is => 'ro', isa => 'Str', required => 1);
  has Subject => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'Paws::Pinpoint::MapOf__string', request_name => 'tags', traits => ['NameInRequest']);
  has TemplateDescription => (is => 'ro', isa => 'Str');
  has TemplateName => (is => 'ro', isa => 'Str', required => 1);
  has TemplateType => (is => 'ro', isa => 'Str', required => 1);
  has TextPart => (is => 'ro', isa => 'Str');
  has Version => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::EmailTemplateResponse

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Pinpoint::EmailTemplateResponse object:

  $service_obj->Method(Att1 => { Arn => $value, ..., Version => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Pinpoint::EmailTemplateResponse object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

Provides information about the content and settings for a message
template that can be used in messages that are sent through the email
channel.

=head1 ATTRIBUTES


=head2 Arn => Str

  The Amazon Resource Name (ARN) of the message template.


=head2 B<REQUIRED> CreationDate => Str

  The date, in ISO 8601 format, when the message template was created.


=head2 DefaultSubstitutions => Str

  The JSON object that specifies the default values that are used for
message variables in the message template. This object is a set of
key-value pairs. Each key defines a message variable in the template.
The corresponding value defines the default value for that variable.


=head2 HtmlPart => Str

  The message body, in HTML format, that's used in email messages that
are based on the message template.


=head2 B<REQUIRED> LastModifiedDate => Str

  The date, in ISO 8601 format, when the message template was last
modified.


=head2 Subject => Str

  The subject line, or title, that's used in email messages that are
based on the message template.


=head2 Tags => L<Paws::Pinpoint::MapOf__string>

  A string-to-string map of key-value pairs that identifies the tags that
are associated with the message template. Each tag consists of a
required tag key and an associated tag value.


=head2 TemplateDescription => Str

  The custom description of the message template.


=head2 B<REQUIRED> TemplateName => Str

  The name of the message template.


=head2 B<REQUIRED> TemplateType => Str

  The type of channel that the message template is designed for. For an
email template, this value is EMAIL.


=head2 TextPart => Str

  The message body, in plain text format, that's used in email messages
that are based on the message template.


=head2 Version => Str

  The unique identifier, as an integer, for the active version of the
message template, or the version of the template that you specified by
using the version parameter in your request.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
