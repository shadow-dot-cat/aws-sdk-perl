package Paws::ApiGatewayV2::ReimportApiInput;
  use Moose;
  has Body => (is => 'ro', isa => 'Str', request_name => 'body', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGatewayV2::ReimportApiInput

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ApiGatewayV2::ReimportApiInput object:

  $service_obj->Method(Att1 => { Body => $value, ..., Body => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ApiGatewayV2::ReimportApiInput object:

  $result = $service_obj->Method(...);
  $result->Att1->Body

=head1 DESCRIPTION

Overwrites the configuration of an existing API using the provided
definition. Supported only for HTTP APIs.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Body => Str

  The OpenAPI definition. Supported only for HTTP APIs.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ApiGatewayV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
