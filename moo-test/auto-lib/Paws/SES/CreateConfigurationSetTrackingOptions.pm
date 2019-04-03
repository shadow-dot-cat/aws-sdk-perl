
package Paws::SES::CreateConfigurationSetTrackingOptions;
  use Moose;
  has ConfigurationSetName => (is => 'ro', isa => 'Str', required => 1);
  has TrackingOptions => (is => 'ro', isa => 'Paws::SES::TrackingOptions', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateConfigurationSetTrackingOptions');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SES::CreateConfigurationSetTrackingOptionsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreateConfigurationSetTrackingOptionsResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SES::CreateConfigurationSetTrackingOptions - Arguments for method CreateConfigurationSetTrackingOptions on L<Paws::SES>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateConfigurationSetTrackingOptions on the
L<Amazon Simple Email Service|Paws::SES> service. Use the attributes of this class
as arguments to method CreateConfigurationSetTrackingOptions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateConfigurationSetTrackingOptions.

=head1 SYNOPSIS

    my $email = Paws->service('SES');
    my $CreateConfigurationSetTrackingOptionsResponse =
      $email->CreateConfigurationSetTrackingOptions(
      ConfigurationSetName => 'MyConfigurationSetName',
      TrackingOptions      => {
        CustomRedirectDomain => 'MyCustomRedirectDomain',    # OPTIONAL
      },

      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/email/CreateConfigurationSetTrackingOptions>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConfigurationSetName => Str

The name of the configuration set that the tracking options should be
associated with.



=head2 B<REQUIRED> TrackingOptions => L<Paws::SES::TrackingOptions>






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateConfigurationSetTrackingOptions in L<Paws::SES>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

