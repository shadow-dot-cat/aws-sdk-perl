package Paws::EC2::LaunchTemplateCpuOptionsRequest;
  use Moose;
  has CoreCount => (is => 'ro', isa => 'Int');
  has ThreadsPerCore => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::LaunchTemplateCpuOptionsRequest

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::LaunchTemplateCpuOptionsRequest object:

  $service_obj->Method(Att1 => { CoreCount => $value, ..., ThreadsPerCore => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::LaunchTemplateCpuOptionsRequest object:

  $result = $service_obj->Method(...);
  $result->Att1->CoreCount

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 CoreCount => Int

  The number of CPU cores for the instance.


=head2 ThreadsPerCore => Int

  The number of threads per CPU core. To disable Intel Hyper-Threading
Technology for the instance, specify a value of 1. Otherwise, specify
the default value of 2.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
