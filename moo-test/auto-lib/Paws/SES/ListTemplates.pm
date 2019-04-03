
package Paws::SES::ListTemplates;
  use Moose;
  has MaxItems => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListTemplates');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SES::ListTemplatesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ListTemplatesResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SES::ListTemplates - Arguments for method ListTemplates on L<Paws::SES>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListTemplates on the
L<Amazon Simple Email Service|Paws::SES> service. Use the attributes of this class
as arguments to method ListTemplates.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListTemplates.

=head1 SYNOPSIS

    my $email = Paws->service('SES');
    my $ListTemplatesResponse = $email->ListTemplates(
      MaxItems  => 1,                # OPTIONAL
      NextToken => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $NextToken         = $ListTemplatesResponse->NextToken;
    my $TemplatesMetadata = $ListTemplatesResponse->TemplatesMetadata;

    # Returns a L<Paws::SES::ListTemplatesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/email/ListTemplates>

=head1 ATTRIBUTES


=head2 MaxItems => Int

The maximum number of templates to return. This value must be at least
1 and less than or equal to 10. If you do not specify a value, or if
you specify a value less than 1 or greater than 10, the operation will
return up to 10 results.



=head2 NextToken => Str

A token returned from a previous call to C<ListTemplates> to indicate
the position in the list of email templates.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListTemplates in L<Paws::SES>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

