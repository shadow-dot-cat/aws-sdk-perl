package Paws::EMR::Application;
  use Moose;
  has AdditionalInfo => (is => 'ro', isa => 'Paws::EMR::StringMap');
  has Args => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Name => (is => 'ro', isa => 'Str');
  has Version => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EMR::Application

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EMR::Application object:

  $service_obj->Method(Att1 => { AdditionalInfo => $value, ..., Version => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EMR::Application object:

  $result = $service_obj->Method(...);
  $result->Att1->AdditionalInfo

=head1 DESCRIPTION

With Amazon EMR release version 4.0 and later, the only accepted
parameter is the application name. To pass arguments to applications,
you use configuration classifications specified using configuration
JSON objects. For more information, see Configuring Applications
(http://docs.aws.amazon.com/emr/latest/ReleaseGuide/emr-configure-apps.html).

With earlier Amazon EMR releases, the application is any Amazon or
third-party software that you can add to the cluster. This structure
contains a list of strings that indicates the software to use with the
cluster and accepts a user argument list. Amazon EMR accepts and
forwards the argument list to the corresponding installation script as
bootstrap action argument.

=head1 ATTRIBUTES


=head2 AdditionalInfo => L<Paws::EMR::StringMap>

  This option is for advanced users only. This is meta information about
third-party applications that third-party vendors use for testing
purposes.


=head2 Args => ArrayRef[Str|Undef]

  Arguments for Amazon EMR to pass to the application.


=head2 Name => Str

  The name of the application.


=head2 Version => Str

  The version of the application.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EMR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

