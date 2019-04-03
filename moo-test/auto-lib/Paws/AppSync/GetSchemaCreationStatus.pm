
package Paws::AppSync::GetSchemaCreationStatus;
  use Moose;
  has ApiId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'apiId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetSchemaCreationStatus');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/apis/{apiId}/schemacreation');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppSync::GetSchemaCreationStatusResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppSync::GetSchemaCreationStatus - Arguments for method GetSchemaCreationStatus on L<Paws::AppSync>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetSchemaCreationStatus on the
L<AWS AppSync|Paws::AppSync> service. Use the attributes of this class
as arguments to method GetSchemaCreationStatus.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetSchemaCreationStatus.

=head1 SYNOPSIS

    my $appsync = Paws->service('AppSync');
    my $GetSchemaCreationStatusResponse = $appsync->GetSchemaCreationStatus(
      ApiId => 'MyString',

    );

    # Results:
    my $Details = $GetSchemaCreationStatusResponse->Details;
    my $Status  = $GetSchemaCreationStatusResponse->Status;

    # Returns a L<Paws::AppSync::GetSchemaCreationStatusResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/appsync/GetSchemaCreationStatus>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApiId => Str

The API ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetSchemaCreationStatus in L<Paws::AppSync>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

