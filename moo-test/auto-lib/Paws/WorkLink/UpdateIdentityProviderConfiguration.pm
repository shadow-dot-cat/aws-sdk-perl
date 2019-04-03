
package Paws::WorkLink::UpdateIdentityProviderConfiguration;
  use Moose;
  has FleetArn => (is => 'ro', isa => 'Str', required => 1);
  has IdentityProviderSamlMetadata => (is => 'ro', isa => 'Str');
  has IdentityProviderType => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateIdentityProviderConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/updateIdentityProviderConfiguration');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WorkLink::UpdateIdentityProviderConfigurationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkLink::UpdateIdentityProviderConfiguration - Arguments for method UpdateIdentityProviderConfiguration on L<Paws::WorkLink>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateIdentityProviderConfiguration on the
L<Amazon WorkLink|Paws::WorkLink> service. Use the attributes of this class
as arguments to method UpdateIdentityProviderConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateIdentityProviderConfiguration.

=head1 SYNOPSIS

    my $worklink = Paws->service('WorkLink');
    my $UpdateIdentityProviderConfigurationResponse =
      $worklink->UpdateIdentityProviderConfiguration(
      FleetArn                     => 'MyFleetArn',
      IdentityProviderType         => 'SAML',
      IdentityProviderSamlMetadata => 'MySamlMetadata',    # OPTIONAL
      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/worklink/UpdateIdentityProviderConfiguration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> FleetArn => Str

The ARN of the fleet.



=head2 IdentityProviderSamlMetadata => Str

The SAML metadata document provided by the customerE<rsquo>s identity
provider. The existing IdentityProviderSamlMetadata is unset if null is
passed.



=head2 B<REQUIRED> IdentityProviderType => Str

The type of identity provider.

Valid values are: C<"SAML">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateIdentityProviderConfiguration in L<Paws::WorkLink>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

