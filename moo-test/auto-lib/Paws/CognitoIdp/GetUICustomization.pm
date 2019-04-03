
package Paws::CognitoIdp::GetUICustomization;
  use Moose;
  has ClientId => (is => 'ro', isa => 'Str');
  has UserPoolId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetUICustomization');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CognitoIdp::GetUICustomizationResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::GetUICustomization - Arguments for method GetUICustomization on L<Paws::CognitoIdp>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetUICustomization on the
L<Amazon Cognito Identity Provider|Paws::CognitoIdp> service. Use the attributes of this class
as arguments to method GetUICustomization.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetUICustomization.

=head1 SYNOPSIS

    my $cognito-idp = Paws->service('CognitoIdp');
    my $GetUICustomizationResponse = $cognito -idp->GetUICustomization(
      UserPoolId => 'MyUserPoolIdType',
      ClientId   => 'MyClientIdType',     # OPTIONAL
    );

    # Results:
    my $UICustomization = $GetUICustomizationResponse->UICustomization;

    # Returns a L<Paws::CognitoIdp::GetUICustomizationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cognito-idp/GetUICustomization>

=head1 ATTRIBUTES


=head2 ClientId => Str

The client ID for the client app.



=head2 B<REQUIRED> UserPoolId => Str

The user pool ID for the user pool.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetUICustomization in L<Paws::CognitoIdp>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

