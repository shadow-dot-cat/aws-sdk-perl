package Paws::CloudDirectory::PolicyAttachment;
  use Moose;
  has ObjectIdentifier => (is => 'ro', isa => 'Str');
  has PolicyId => (is => 'ro', isa => 'Str');
  has PolicyType => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudDirectory::PolicyAttachment

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudDirectory::PolicyAttachment object:

  $service_obj->Method(Att1 => { ObjectIdentifier => $value, ..., PolicyType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudDirectory::PolicyAttachment object:

  $result = $service_obj->Method(...);
  $result->Att1->ObjectIdentifier

=head1 DESCRIPTION

Contains the C<PolicyType>, C<PolicyId>, and the C<ObjectIdentifier> to
which it is attached. For more information, see Policies
(https://docs.aws.amazon.com/clouddirectory/latest/developerguide/key_concepts_directory.html#key_concepts_policies).

=head1 ATTRIBUTES


=head2 ObjectIdentifier => Str

  The C<ObjectIdentifier> that is associated with C<PolicyAttachment>.


=head2 PolicyId => Str

  The ID of C<PolicyAttachment>.


=head2 PolicyType => Str

  The type of policy that can be associated with C<PolicyAttachment>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudDirectory>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

