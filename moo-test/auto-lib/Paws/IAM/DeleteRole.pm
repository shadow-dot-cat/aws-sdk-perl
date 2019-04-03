
package Paws::IAM::DeleteRole;
  use Moose;
  has RoleName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteRole');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::DeleteRole - Arguments for method DeleteRole on L<Paws::IAM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteRole on the
L<AWS Identity and Access Management|Paws::IAM> service. Use the attributes of this class
as arguments to method DeleteRole.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteRole.

=head1 SYNOPSIS

    my $iam = Paws->service('IAM');
    # To delete an IAM role
    # The following command removes the role named Test-Role.
    $iam->DeleteRole(
      {
        'RoleName' => 'Test-Role'
      }
    );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iam/DeleteRole>

=head1 ATTRIBUTES


=head2 B<REQUIRED> RoleName => Str

The name of the role to delete.

This parameter allows (through its regex pattern
(http://wikipedia.org/wiki/regex)) a string of characters consisting of
upper and lowercase alphanumeric characters with no spaces. You can
also include any of the following characters: _+=,.@-




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteRole in L<Paws::IAM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

