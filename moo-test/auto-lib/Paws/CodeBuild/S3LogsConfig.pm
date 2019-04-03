package Paws::CodeBuild::S3LogsConfig;
  use Moose;
  has Location => (is => 'ro', isa => 'Str', request_name => 'location', traits => ['NameInRequest']);
  has Status => (is => 'ro', isa => 'Str', request_name => 'status', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeBuild::S3LogsConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodeBuild::S3LogsConfig object:

  $service_obj->Method(Att1 => { Location => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeBuild::S3LogsConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->Location

=head1 DESCRIPTION

Information about S3 logs for a build project.

=head1 ATTRIBUTES


=head2 Location => Str

  The ARN of an S3 bucket and the path prefix for S3 logs. If your Amazon
S3 bucket name is C<my-bucket>, and your path prefix is C<build-log>,
then acceptable formats are C<my-bucket/build-log> or
C<arn:aws:s3:::my-bucket/build-log>.


=head2 B<REQUIRED> Status => Str

  The current status of the S3 build logs. Valid values are:

=over

=item *

C<ENABLED>: S3 build logs are enabled for this build project.

=item *

C<DISABLED>: S3 build logs are not enabled for this build project.

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeBuild>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

