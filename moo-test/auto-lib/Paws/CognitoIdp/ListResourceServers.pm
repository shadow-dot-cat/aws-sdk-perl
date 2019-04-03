
package Paws::CognitoIdp::ListResourceServers;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has UserPoolId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListResourceServers');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CognitoIdp::ListResourceServersResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::ListResourceServers - Arguments for method ListResourceServers on L<Paws::CognitoIdp>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListResourceServers on the
L<Amazon Cognito Identity Provider|Paws::CognitoIdp> service. Use the attributes of this class
as arguments to method ListResourceServers.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListResourceServers.

=head1 SYNOPSIS

    my $cognito-idp = Paws->service('CognitoIdp');
    my $ListResourceServersResponse = $cognito -idp->ListResourceServers(
      UserPoolId => 'MyUserPoolIdType',
      MaxResults => 1,                        # OPTIONAL
      NextToken  => 'MyPaginationKeyType',    # OPTIONAL
    );

    # Results:
    my $NextToken       = $ListResourceServersResponse->NextToken;
    my $ResourceServers = $ListResourceServersResponse->ResourceServers;

    # Returns a L<Paws::CognitoIdp::ListResourceServersResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cognito-idp/ListResourceServers>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of resource servers to return.



=head2 NextToken => Str

A pagination token.



=head2 B<REQUIRED> UserPoolId => Str

The user pool ID for the user pool.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListResourceServers in L<Paws::CognitoIdp>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

