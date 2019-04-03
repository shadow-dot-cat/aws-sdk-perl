
package Paws::KinesisAnalyticsV2::DeleteApplicationSnapshot;
  use Moose;
  has ApplicationName => (is => 'ro', isa => 'Str', required => 1);
  has SnapshotCreationTimestamp => (is => 'ro', isa => 'Str', required => 1);
  has SnapshotName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteApplicationSnapshot');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::KinesisAnalyticsV2::DeleteApplicationSnapshotResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisAnalyticsV2::DeleteApplicationSnapshot - Arguments for method DeleteApplicationSnapshot on L<Paws::KinesisAnalyticsV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteApplicationSnapshot on the
L<Amazon Kinesis Analytics|Paws::KinesisAnalyticsV2> service. Use the attributes of this class
as arguments to method DeleteApplicationSnapshot.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteApplicationSnapshot.

=head1 SYNOPSIS

    my $kinesisanalytics = Paws->service('KinesisAnalyticsV2');
    my $DeleteApplicationSnapshotResponse =
      $kinesisanalytics->DeleteApplicationSnapshot(
      ApplicationName           => 'MyApplicationName',
      SnapshotCreationTimestamp => '1970-01-01T01:00:00',
      SnapshotName              => 'MySnapshotName',

      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kinesisanalytics/DeleteApplicationSnapshot>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationName => Str

The name of an existing application.



=head2 B<REQUIRED> SnapshotCreationTimestamp => Str

The creation timestamp of the application snapshot to delete. You can
retrieve this value using or .



=head2 B<REQUIRED> SnapshotName => Str

The identifier for the snapshot delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteApplicationSnapshot in L<Paws::KinesisAnalyticsV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

