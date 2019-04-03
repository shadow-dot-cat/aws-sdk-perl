package Paws::CloudDirectory::Directory;
  use Moose;
  has CreationDateTime => (is => 'ro', isa => 'Str');
  has DirectoryArn => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has State => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudDirectory::Directory

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudDirectory::Directory object:

  $service_obj->Method(Att1 => { CreationDateTime => $value, ..., State => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudDirectory::Directory object:

  $result = $service_obj->Method(...);
  $result->Att1->CreationDateTime

=head1 DESCRIPTION

Directory structure that includes the directory name and directory ARN.

=head1 ATTRIBUTES


=head2 CreationDateTime => Str

  The date and time when the directory was created.


=head2 DirectoryArn => Str

  The Amazon Resource Name (ARN) that is associated with the directory.
For more information, see arns.


=head2 Name => Str

  The name of the directory.


=head2 State => Str

  The state of the directory. Can be either C<Enabled>, C<Disabled>, or
C<Deleted>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudDirectory>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

