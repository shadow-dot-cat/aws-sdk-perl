package Paws::LakeFormation::ResourceInfo;
  use Moose;
  has LastModified => (is => 'ro', isa => 'Str');
  has ResourceArn => (is => 'ro', isa => 'Str');
  has RoleArn => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LakeFormation::ResourceInfo

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::LakeFormation::ResourceInfo object:

  $service_obj->Method(Att1 => { LastModified => $value, ..., RoleArn => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::LakeFormation::ResourceInfo object:

  $result = $service_obj->Method(...);
  $result->Att1->LastModified

=head1 DESCRIPTION

A structure containing information about an AWS Lake Formation
resource.

=head1 ATTRIBUTES


=head2 LastModified => Str

  The date and time the resource was last modified.


=head2 ResourceArn => Str

  The Amazon Resource Name (ARN) of the resource.


=head2 RoleArn => Str

  The IAM role that registered a resource.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::LakeFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
