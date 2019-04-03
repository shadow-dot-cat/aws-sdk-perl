
package Paws::ApiGatewayV2::DeleteDeployment;
  use Moose;
  has ApiId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'apiId', required => 1);
  has DeploymentId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'deploymentId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteDeployment');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/apis/{apiId}/deployments/{deploymentId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGatewayV2::DeleteDeployment - Arguments for method DeleteDeployment on L<Paws::ApiGatewayV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteDeployment on the
L<AmazonApiGatewayV2|Paws::ApiGatewayV2> service. Use the attributes of this class
as arguments to method DeleteDeployment.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteDeployment.

=head1 SYNOPSIS

    my $apigateway = Paws->service('ApiGatewayV2');
    $apigateway->DeleteDeployment(
      ApiId        => 'My__string',
      DeploymentId => 'My__string',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/apigateway/DeleteDeployment>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApiId => Str

The API identifier.



=head2 B<REQUIRED> DeploymentId => Str

The deployment ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteDeployment in L<Paws::ApiGatewayV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

