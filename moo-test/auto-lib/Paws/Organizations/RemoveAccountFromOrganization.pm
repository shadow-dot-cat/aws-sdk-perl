
package Paws::Organizations::RemoveAccountFromOrganization;
  use Moose;
  has AccountId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RemoveAccountFromOrganization');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Organizations::RemoveAccountFromOrganization - Arguments for method RemoveAccountFromOrganization on L<Paws::Organizations>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RemoveAccountFromOrganization on the
L<AWS Organizations|Paws::Organizations> service. Use the attributes of this class
as arguments to method RemoveAccountFromOrganization.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RemoveAccountFromOrganization.

=head1 SYNOPSIS

    my $organizations = Paws->service('Organizations');
    $organizations->RemoveAccountFromOrganization(
      AccountId => 'MyAccountId',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/organizations/RemoveAccountFromOrganization>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccountId => Str

The unique identifier (ID) of the member account that you want to
remove from the organization.

The regex pattern (http://wikipedia.org/wiki/regex) for an account ID
string requires exactly 12 digits.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RemoveAccountFromOrganization in L<Paws::Organizations>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

