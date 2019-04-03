
package Paws::ApiGatewayV2::DeleteModel;
  use Moose;
  has ApiId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'apiId', required => 1);
  has ModelId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'modelId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteModel');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/apis/{apiId}/models/{modelId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGatewayV2::DeleteModel - Arguments for method DeleteModel on L<Paws::ApiGatewayV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteModel on the
L<AmazonApiGatewayV2|Paws::ApiGatewayV2> service. Use the attributes of this class
as arguments to method DeleteModel.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteModel.

=head1 SYNOPSIS

    my $apigateway = Paws->service('ApiGatewayV2');
    $apigateway->DeleteModel(
      ApiId   => 'My__string',
      ModelId => 'My__string',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/apigateway/DeleteModel>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApiId => Str

The API identifier.



=head2 B<REQUIRED> ModelId => Str

The model ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteModel in L<Paws::ApiGatewayV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

