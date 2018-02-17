
package Paws::Transcribe::ListTranscriptionJobs;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListTranscriptionJobs');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Transcribe::ListTranscriptionJobsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Transcribe::ListTranscriptionJobs - Arguments for method ListTranscriptionJobs on L<Paws::Transcribe>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListTranscriptionJobs on the 
Amazon Transcribe Service service. Use the attributes of this class
as arguments to method ListTranscriptionJobs.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListTranscriptionJobs.

As an example:

  $service_obj->ListTranscriptionJobs(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of jobs to return in the response.



=head2 NextToken => Str

If the result of the previous request to C<ListTranscriptionJobs> was
truncated, include the C<NextToken> to fetch the next set of jobs.



=head2 B<REQUIRED> Status => Str

When specified, returns only transcription jobs with the specified
status.

Valid values are: C<"IN_PROGRESS">, C<"FAILED">, C<"COMPLETED">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListTranscriptionJobs in L<Paws::Transcribe>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
