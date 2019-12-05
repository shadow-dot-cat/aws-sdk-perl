package Paws::SageMaker::MonitoringExecutionSummary;
  use Moose;
  has CreationTime => (is => 'ro', isa => 'Str', required => 1);
  has EndpointName => (is => 'ro', isa => 'Str');
  has FailureReason => (is => 'ro', isa => 'Str');
  has LastModifiedTime => (is => 'ro', isa => 'Str', required => 1);
  has MonitoringExecutionStatus => (is => 'ro', isa => 'Str', required => 1);
  has MonitoringScheduleName => (is => 'ro', isa => 'Str', required => 1);
  has ProcessingJobArn => (is => 'ro', isa => 'Str');
  has ScheduledTime => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::MonitoringExecutionSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::MonitoringExecutionSummary object:

  $service_obj->Method(Att1 => { CreationTime => $value, ..., ScheduledTime => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::MonitoringExecutionSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->CreationTime

=head1 DESCRIPTION

Summary of information about the last monitoring job to run.

=head1 ATTRIBUTES


=head2 B<REQUIRED> CreationTime => Str

  The time at which the monitoring job was created.


=head2 EndpointName => Str

  The name of teh endpoint used to run the monitoring job.


=head2 FailureReason => Str

  Contains the reason a monitoring job failed, if it failed.


=head2 B<REQUIRED> LastModifiedTime => Str

  A timestamp that indicates the last time the monitoring job was
modified.


=head2 B<REQUIRED> MonitoringExecutionStatus => Str

  The status of the monitoring job.


=head2 B<REQUIRED> MonitoringScheduleName => Str

  The name of the monitoring schedule.


=head2 ProcessingJobArn => Str

  The Amazon Resource Name (ARN) of the monitoring job.


=head2 B<REQUIRED> ScheduledTime => Str

  The time the monitoring job was scheduled.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
