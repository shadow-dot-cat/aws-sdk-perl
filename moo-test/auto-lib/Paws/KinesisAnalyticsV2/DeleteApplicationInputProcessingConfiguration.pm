
package Paws::KinesisAnalyticsV2::DeleteApplicationInputProcessingConfiguration;
  use Moose;
  has ApplicationName => (is => 'ro', isa => 'Str', required => 1);
  has CurrentApplicationVersionId => (is => 'ro', isa => 'Int', required => 1);
  has InputId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteApplicationInputProcessingConfiguration');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::KinesisAnalyticsV2::DeleteApplicationInputProcessingConfigurationResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisAnalyticsV2::DeleteApplicationInputProcessingConfiguration - Arguments for method DeleteApplicationInputProcessingConfiguration on L<Paws::KinesisAnalyticsV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteApplicationInputProcessingConfiguration on the
L<Amazon Kinesis Analytics|Paws::KinesisAnalyticsV2> service. Use the attributes of this class
as arguments to method DeleteApplicationInputProcessingConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteApplicationInputProcessingConfiguration.

=head1 SYNOPSIS

    my $kinesisanalytics = Paws->service('KinesisAnalyticsV2');
    my $DeleteApplicationInputProcessingConfigurationResponse =
      $kinesisanalytics->DeleteApplicationInputProcessingConfiguration(
      ApplicationName             => 'MyApplicationName',
      CurrentApplicationVersionId => 1,
      InputId                     => 'MyId',

      );

    # Results:
    my $ApplicationARN =
      $DeleteApplicationInputProcessingConfigurationResponse->ApplicationARN;
    my $ApplicationVersionId =
      $DeleteApplicationInputProcessingConfigurationResponse
      ->ApplicationVersionId;

# Returns a L<Paws::KinesisAnalyticsV2::DeleteApplicationInputProcessingConfigurationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kinesisanalytics/DeleteApplicationInputProcessingConfiguration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationName => Str

The name of the application.



=head2 B<REQUIRED> CurrentApplicationVersionId => Int

The application version. You can use the DescribeApplication operation
to get the current application version. If the version specified is not
the current version, the C<ConcurrentModificationException> is
returned.



=head2 B<REQUIRED> InputId => Str

The ID of the input configuration from which to delete the input
processing configuration. You can get a list of the input IDs for an
application by using the DescribeApplication operation.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteApplicationInputProcessingConfiguration in L<Paws::KinesisAnalyticsV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

